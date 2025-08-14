----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:10:23 05/23/2025 
-- Design Name: 
-- Module Name:    ENCODER - Behavioral 
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

entity rpm_reporter is
  generic
    ( CLOCK_FREQ      : integer := 24_000_000  -- system clock in Hz
    ; BAUD_RATE       : integer :=  9_600      -- UART baud
    ; PULSES_PER_REV  : integer :=     20      -- encoder pulses per revolution
    );
  port
    ( clk            : in  std_logic
    ; encoder_pulse  : in  std_logic           -- raw pulse from encoder
    ; serial_out     : out std_logic           -- to your PC/UART-RX
    );
end entity rpm_reporter;

architecture rtl of rpm_reporter is


    component uart_tx
    generic
      ( DATA_BITS  : natural := 8
      ; STOP_BITS  : natural := 1
      ; CLOCK_FREQ : natural := 24_000_000
      ; BAUD_RATE  : natural := 9_600
      );
    port
      ( clk        : in  std_logic
      ; send       : in  std_logic
      ; data_in    : in  std_logic_vector(DATA_BITS-1 downto 0)
      ; serial_out : out std_logic
      ; busy       : out std_logic
      );
  end component;


  signal send_stb    : std_logic := '0';
  signal tx_busy     : std_logic;
  signal rpm_byte    : std_logic_vector(7 downto 0);


  signal enc_sync0, enc_sync1, prev_enc : std_logic := '0';
  signal enc_rise                        : std_logic := '0';


  signal sec_cnt     : integer range 0 to CLOCK_FREQ-1 := 0;
  signal pulse_cnt   : integer := 0;


  signal rpm_count   : integer range 0 to 255 := 0;

begin

  
  
  sync_process: process(clk)
  begin
    if rising_edge(clk) then
      enc_sync0 <= encoder_pulse;
      enc_sync1 <= enc_sync0;
      prev_enc  <= enc_sync1;
      -- detect 0?1
      if enc_sync1 = '1' and prev_enc = '0' then
        enc_rise <= '1';
      else
        enc_rise <= '0';
      end if;
    end if;
  end process sync_process;

  timer_process: process(clk)
  begin
    if rising_edge(clk) then
      if enc_rise = '1' then
        pulse_cnt <= pulse_cnt + 1;
      end if;

      if sec_cnt < CLOCK_FREQ - 1 then
        sec_cnt <= sec_cnt + 1;
      else
        sec_cnt   <= 0;
        rpm_count <= (pulse_cnt * 60) / PULSES_PER_REV;
        pulse_cnt <= 0;
      end if;
    end if;
  end process timer_process;

  send_process: process(clk)
  begin
    if rising_edge(clk) then
      if sec_cnt = 0 and tx_busy = '0' then
        send_stb <= '1';
      else
        send_stb <= '0';
      end if;
    end if;
  end process send_process;
  rpm_byte <= std_logic_vector(to_unsigned(rpm_count, 8));

  U_TX: uart_tx
    generic map (
      DATA_BITS  => 8,
      STOP_BITS  => 1,
      CLOCK_FREQ => CLOCK_FREQ,
      BAUD_RATE  => BAUD_RATE
    )
    port map (
      clk        => clk,
      send       => send_stb,
      data_in    => rpm_byte,
      serial_out => serial_out,
      busy       => tx_busy
    );

end architecture rtl;
