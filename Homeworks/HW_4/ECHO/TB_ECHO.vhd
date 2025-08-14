--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:43:54 05/23/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Desktop/FPGA_HW4_400249049/ECHO/TB_ECHO.vhd
-- Project Name:  ECHO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: echo
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_echo is
end entity;

architecture behavioral of tb_echo is

  ----------------------------------------------------------------
  -- Constants for timing (VHDL-93 style)
  ----------------------------------------------------------------
  constant CLK_PERIOD : time := 41.667 ns;    -- 24 MHz
  constant BIT_TIME   : time := 104167 ns;    -- 9600 baud

  ----------------------------------------------------------------
  -- DUT signals
  ----------------------------------------------------------------
  signal clk        : std_logic := '0';
  signal serial_in  : std_logic := '1';      -- idle = '1'
  signal serial_out : std_logic;

  ----------------------------------------------------------------
  -- Capture interface
  ----------------------------------------------------------------
  signal rx_data    : std_logic_vector(7 downto 0);
  signal rx_valid   : std_logic;

  ----------------------------------------------------------------
  -- Array to store the three echoed bytes
  ----------------------------------------------------------------
  type byte_array_t is array (0 to 2) of std_logic_vector(7 downto 0);
  signal captured   : byte_array_t := (
    0 => (others => '0'),
    1 => (others => '0'),
    2 => (others => '0')
  );
  signal cap_index  : integer range 0 to 3 := 0;

begin

  ----------------------------------------------------------------
  -- Instantiate the echo top
  ----------------------------------------------------------------
  DUT: entity work.echo
    generic map (
      CLOCK_FREQ => 24000000,
      BAUD_RATE  => 9600,
      DATA_BITS  => 8
    )
    port map (
      clk        => clk,
      serial_in  => serial_in,
      serial_out => serial_out
    );

  ----------------------------------------------------------------
  -- Monitor: another UART-RX to watch serial_out
  ----------------------------------------------------------------
  MON: entity work.uart_rx
    generic map (
      CLOCK_FREQ => 24000000,
      BAUD_RATE  => 9600,
      DATA_BITS  => 8
    )
    port map (
      clk       => clk,
      serial_in => serial_out,
      data_out  => rx_data,
      valid     => rx_valid
    );

  ----------------------------------------------------------------
  -- Clock generator
  ----------------------------------------------------------------
  clk_proc: process
  begin
    while true loop
      clk <= '0';
      wait for CLK_PERIOD/2;
      clk <= '1';
      wait for CLK_PERIOD/2;
    end loop;
  end process clk_proc;

  ----------------------------------------------------------------
  -- Stimulus: send 3 bytes (0x55, 0xAA, 0xA5)
  ----------------------------------------------------------------
  stim_proc: process
    procedure send_byte(b : std_logic_vector(7 downto 0)) is
    begin
      -- start bit
      serial_in <= '0';
      wait for BIT_TIME;
      -- data bits LSB first
      for i in 0 to 7 loop
        serial_in <= b(i);
        wait for BIT_TIME;
      end loop;
      -- stop bit + a bit of idle
      serial_in <= '1';
      wait for BIT_TIME * 2;
    end procedure;
  begin
    wait for 1 ms;                 -- let things settle
    send_byte(x"55");
    send_byte(x"AA");
    send_byte(x"A5");
    wait for 2 ms;                 -- allow final echo through
    wait;                          -- end simulation
  end process stim_proc;

  ----------------------------------------------------------------
  -- Capture process: store each echoed byte in `captured`
  ----------------------------------------------------------------
  cap_proc: process(clk)
  begin
    if rising_edge(clk) then
      if rx_valid = '1' and cap_index < 3 then
        captured(cap_index) <= rx_data;
        cap_index <= cap_index + 1;
      end if;
    end if;
  end process cap_proc;

end architecture behavioral;
