----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:59 05/23/2025 
-- Design Name: 
-- Module Name:    motor_ctrl - Behavioral 
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

entity PWM_Drive is
  generic
    ( CLOCK_FREQ   : natural := 24_000_000   -- system clock in Hz
    ; BAUD_RATE    : natural :=      9_600   -- UART baud rate
    ; DATA_BITS    : natural :=         8    -- UART data width
    ; DUTY_MAX     : natural :=       100    -- max duty input (i.e. 0-100%)
    ; PWM_FREQ     : natural :=      1_000   -- desired PWM frequency in Hz
    );
  port
    ( clk         : in  std_logic       -- system clock
    ; serial_in   : in  std_logic       -- UART RX line
    ; pwm_out     : out std_logic       -- PWM output
    );
end entity PWM_Drive;

architecture rtl of PWM_Drive is

  -- helper to compute ceil(log2) at elaboration
  function clog2(x: natural) return natural is
    variable v   : natural := x - 1;
    variable res : natural := 0;
  begin
    while v > 0 loop
      v   := v / 2;
      res := res + 1;
    end loop;
    return res;
  end function;

  constant PWM_PERIOD_CYCLES : natural := CLOCK_FREQ / PWM_FREQ;
  constant CNT_WIDTH         : natural := clog2(PWM_PERIOD_CYCLES);
  subtype pwm_cnt_t          is unsigned(CNT_WIDTH-1 downto 0);
  signal rx_data  : std_logic_vector(DATA_BITS-1 downto 0);
  signal rx_valid : std_logic;
  signal duty_reg   : unsigned(DATA_BITS-1 downto 0) := (others => '0');
  signal threshold  : pwm_cnt_t := (others => '0');
  signal pwm_cnt    : pwm_cnt_t := (others => '0');

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

 
  -- Latch & clamp duty on each byte received
  process(clk)
  begin
    if rising_edge(clk) then
      if rx_valid = '1' then
        if unsigned(rx_data) > to_unsigned(DUTY_MAX, DATA_BITS) then
          duty_reg <= to_unsigned(DUTY_MAX, DATA_BITS);
        else
          duty_reg <= unsigned(rx_data);
        end if;
        threshold <= resize(
                       (duty_reg * to_unsigned(PWM_PERIOD_CYCLES, duty_reg'length))
                       / to_unsigned(DUTY_MAX, duty_reg'length),
                       CNT_WIDTH
                     );
      end if;
    end if;
  end process;

 pwm_process : process(clk)
  begin
    if rising_edge(clk) then
      if pwm_cnt = to_unsigned(PWM_PERIOD_CYCLES-1, CNT_WIDTH) then
        pwm_cnt <= (others => '0');
      else
        pwm_cnt <= pwm_cnt + 1;
      end if;

      if pwm_cnt < threshold then
        pwm_out <= '1';
      else
        pwm_out <= '0';
      end if;
    end if;
  end process pwm_process;

end architecture rtl;
