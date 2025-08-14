----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:51 05/23/2025 
-- Design Name: 
-- Module Name:    ECHO - Behavioral 
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

entity echo is
  generic
    ( CLOCK_FREQ : natural := 24_000_000
    ; BAUD_RATE  : natural := 9_600
    ; DATA_BITS  : natural := 8
    );
  port
    ( clk        : in  std_logic
    ; serial_in  : in  std_logic
    ; serial_out : out std_logic
    );
end entity echo;

architecture rtl of echo is
  signal rx_data  : std_logic_vector(DATA_BITS-1 downto 0);
  signal rx_valid : std_logic;
  signal tx_busy  : std_logic;
begin

  U_RX: entity work.uart_rx
    generic map (
      CLOCK_FREQ => CLOCK_FREQ,
      BAUD_RATE  => BAUD_RATE,
      DATA_BITS  => DATA_BITS
    )
    port map (
      clk       => clk,
      serial_in => serial_in,
      data_out  => rx_data,
      valid     => rx_valid
    );

  U_TX: entity work.uart_tx
    generic map (
      DATA_BITS  => DATA_BITS,
      STOP_BITS  => 1,
      CLOCK_FREQ => CLOCK_FREQ,
      BAUD_RATE  => BAUD_RATE
    )
    port map (
      clk        => clk,
      send       => rx_valid,
      data_in    => rx_data,
      serial_out => serial_out,
      busy       => tx_busy
    );

end architecture rtl;
