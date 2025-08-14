----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:56 05/23/2025 
-- Design Name: 
-- Module Name:    UART_RX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
  generic
    ( CLOCK_FREQ  : natural := 24_000_000  -- system clock (Hz)
    ; BAUD_RATE   : natural := 9_600       -- serial baud rate
    ; DATA_BITS   : natural := 8           -- number of data bits
    );
  port
    ( clk        : in  std_logic          -- system clock
    ; serial_in  : in  std_logic          -- asynchronous RX line (idle = '1')
    ; data_out   : out std_logic_vector(DATA_BITS-1 downto 0)
    ; valid      : out std_logic          -- pulse high for 1 clk when a byte is ready
    );
end entity uart_rx;

architecture Behavioral of uart_rx is

  -- bit-time and half-bit counts (must be integer!)
  constant CYCLES_PER_BIT  : natural := CLOCK_FREQ / BAUD_RATE;  
  constant HALF_BIT_CYCLES : natural := CYCLES_PER_BIT / 2;

  -- four states as per spec
  type state_t is (Idle, wait_half_BR, Receiving, wait_to_finish);
  signal state       : state_t := Idle;

  -- counters
  signal cycle_cnt   : natural range 0 to CYCLES_PER_BIT-1 := 0;  
  signal bit_cnt     : integer range 0 to DATA_BITS+1 := 0;  

  -- shift-in register for data bits
  signal data_reg    : std_logic_vector(DATA_BITS-1 downto 0) := (others=>'0');

begin

  process(clk)
  begin
    if rising_edge(clk) then

      case state is

        -- Idle: wait for line to go low (start bit)
        when Idle =>
          valid     <= '0';
          cycle_cnt <= 0;
          bit_cnt   <= 0;
          if serial_in = '0' then
            -- start bit detected, go sample middle of it
            state <= wait_half_BR;
          end if;

        -- wait_half_BR: sample again after half a bit
        when wait_half_BR =>
          if cycle_cnt < HALF_BIT_CYCLES-1 then
            cycle_cnt <= cycle_cnt + 1;
          else
            -- half-bit elapsed
            cycle_cnt <= 0;
            if serial_in = '0' then
              -- confirmed valid start bit ? start receiving
              state <= Receiving;
            else
              -- false start ? back to idle
              state <= Idle;
            end if;
          end if;

        -- Receiving: every full bit-time sample one bit
        when Receiving =>
          if cycle_cnt < CYCLES_PER_BIT-1 then
            cycle_cnt <= cycle_cnt + 1;
          else
            -- one full bit-time elapsed
            cycle_cnt <= 0;
            -- bit_cnt=0 ? this was the start bit (we discard it)
            -- bit_cnt=1..DATA_BITS ? these are the data bits
            -- bit_cnt=DATA_BITS+1 ? this is the stop bit
            if bit_cnt >= 1 and bit_cnt <= DATA_BITS then
              -- capture data LSB first
              data_reg(bit_cnt-1) <= serial_in;
            elsif bit_cnt = DATA_BITS+1 then
              -- stop-bit sampled ? output valid pulse
              valid  <= '1';
              state  <= wait_to_finish;
            end if;
            bit_cnt <= bit_cnt + 1;
          end if;

        -- wait_to_finish: give the stop bit a half-bit to finish,
        -- then drop valid and return to Idle
        when wait_to_finish =>
          if cycle_cnt < HALF_BIT_CYCLES-1 then
            cycle_cnt <= cycle_cnt + 1;
          else
            cycle_cnt <= 0;
            valid     <= '0';
            state     <= Idle;
          end if;

      end case;
    end if;
  end process;

  -- outputs
  data_out <= data_reg;

end architecture Behavioral;
