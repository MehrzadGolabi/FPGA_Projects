--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:06:46 07/11/2025
-- Design Name:   
-- Module Name:   /home/thanotos/floating_point/tamrin_5_1_e/FP_MATH_TB.vhd
-- Project Name:  tamrin_5_1_e
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FP_DIVIDER
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

entity FP_MATH_TB is
end FP_MATH_TB;

architecture test of FP_MATH_TB is
    component FP_MULTIPLIER is port (A, B : in std_logic_vector(31 downto 0); R : out std_logic_vector(31 downto 0)); end component;
    component FP_DIVIDER is port (CLK : in std_logic; START : in std_logic; A, B : in std_logic_vector(31 downto 0); R : out std_logic_vector(31 downto 0); DONE : out std_logic); end component;
    
    signal clk   : std_logic := '0';
    signal start_div : std_logic := '0';
    signal done_div  : std_logic;
    signal a, b  : std_logic_vector(31 downto 0);
    signal r_mul, r_div : std_logic_vector(31 downto 0);

    -- 5.0 -> x"40A00000", 2.5 -> x"40200000"
    constant VAL_5_0 : std_logic_vector(31 downto 0) := x"40A00000";
    constant VAL_2_5 : std_logic_vector(31 downto 0) := x"40200000";
    -- 12.5 -> x"41480000", 2.0 -> x"40000000"
    constant VAL_12_5 : std_logic_vector(31 downto 0) := x"41480000";
    constant VAL_2_0 : std_logic_vector(31 downto 0) := x"40000000";
begin
    mul_uut: FP_MULTIPLIER port map (A => a, B => b, R => r_mul);
    div_uut: FP_DIVIDER port map (CLK => clk, START => start_div, A => a, B => b, R => r_div, DONE => done_div);

    clk <= not clk after 10 ns;

    stim_proc: process
    begin
        -- Test Multiplication
        --5.0 * 2.5 = 12.5";
        a <= VAL_5_0;
        b <= VAL_2_5;
        wait for 20 ns;
        -- Expected result for 12.5 is x"41480000"        
        -- Test Division
        --12.5 / 2.5 = 5.0";
        a <= VAL_12_5;
        b <= VAL_2_5;
        start_div <= '1';
        wait until rising_edge(clk);
        start_div <= '0';
        
        wait until done_div = '1';
        wait for 1 ns;
        -- Expected result for 5.0 is x"40A00000"
        wait;
    end process;

end test;