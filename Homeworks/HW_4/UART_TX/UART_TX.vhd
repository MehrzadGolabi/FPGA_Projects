----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:59 05/23/2025 
-- Design Name: 
-- Module Name:    UART_TX - Behavioral 
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

entity uart_tx is
  generic (
    DATA_BITS   : natural := 8;        -- number of data bits
    STOP_BITS   : natural := 1;        -- number of stop bits
    CLOCK_FREQ  : natural := 24000000; -- system clock frequency in Hz
    BAUD_RATE   : natural := 9600      -- desired baud rate
  );
  port (
    clk        : in  std_logic;                                     -- system clock
    send       : in  std_logic;                                     -- pulse to start one frame
    data_in    : in  std_logic_vector(DATA_BITS-1 downto 0);       -- parallel data
    serial_out : out std_logic;                                     -- TX serial line
    busy       : out std_logic                                      -- '1' while transmitting
  );
end entity uart_tx;

architecture Behavioral of uart_tx is
  -- number of clock cycles per bit
  constant CYCLES_PER_BIT : natural := CLOCK_FREQ / BAUD_RATE;
  -- total bits to send = 1 start + DATA_BITS + STOP_BITS
  constant TOTAL_BITS      : natural := 1 + DATA_BITS + STOP_BITS;

  -- counters & shift register
  signal bit_clk_cnt   : natural range 0 to CYCLES_PER_BIT-1 := 0;
  signal bit_index     : natural range 0 to TOTAL_BITS        := 0;
  signal shift_reg     : std_logic_vector(DATA_BITS-1 downto 0) := (others => '0');
  signal ser_reg       : std_logic := '1';  -- drives serial_out
  signal busy_reg      : std_logic := '0';
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if busy_reg = '0' then
        -- idle, waiting for send
        if send = '1' then
          -- load new word + send start bit
          busy_reg        <= '1';
          bit_clk_cnt     <= 0;
          bit_index       <= 0;
          shift_reg       <= data_in;
          ser_reg         <= '0';   -- start bit
        else
          ser_reg <= '1';            -- idle level = '1'
        end if;

      else  -- busy_reg = '1', currently transmitting
        if bit_clk_cnt < CYCLES_PER_BIT-1 then
          bit_clk_cnt <= bit_clk_cnt + 1;
        else
          -- one bit-time elapsed
          bit_clk_cnt <= 0;

          if bit_index < DATA_BITS then
            -- send next data bit (LSB first)
            ser_reg   <= shift_reg(0);
            -- shift right, fill MSB with '0'
            shift_reg <= std_logic_vector(shift_right(unsigned(shift_reg), 1));
            bit_index <= bit_index + 1;

          elsif bit_index < DATA_BITS + STOP_BITS then
            -- send stop bits
            ser_reg   <= '1';
            bit_index <= bit_index + 1;

          else
            -- done: go idle
            busy_reg <= '0';
            ser_reg   <= '1';
          end if;
        end if;
      end if;
    end if;
  end process;

  serial_out <= ser_reg;
  busy       <= busy_reg;

end architecture Behavioral;
