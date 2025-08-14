--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:02 07/11/2025
-- Design Name:   
-- Module Name:   /home/thanotos/floating_point/tamrin_5_1_d/FP_ADDER_TB.vhd
-- Project Name:  tamrin_5_1_d
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FP_ADDER
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

entity FP_ADDER_TB is
end FP_ADDER_TB;

architecture test of FP_ADDER_TB is

    component FP_ADDER is
        port (
            A, B : in  std_logic_vector(31 downto 0);
            R    : out std_logic_vector(31 downto 0)
        );
    end component;

    signal clk          : std_logic := '0';
    signal a_in, b_in   : std_logic_vector(31 downto 0);
    signal adder_out    : std_logic_vector(31 downto 0);
    signal accumulator  : std_logic_vector(31 downto 0) := (others => '0');

    -- Define 5 sample floating point numbers
    -- 1.25  -> 0_01111111_01000000000000000000000 -> x"3FA00000"
    -- 10.5  -> 0_10000010_01010000000000000000000 -> x"41280000"
    -- 20.75 -> 0_10000011_01001100000000000000000 -> x"41A60000"
    -- -2.0  -> 1_10000000_00000000000000000000000 -> x"C0000000"
    -- 100.0 -> 0_10000101_10010000000000000000000 -> x"42C80000"
    
    type float_array is array (0 to 4) of std_logic_vector(31 downto 0);
    constant SAMPLES : float_array := (
        x"3FA00000", -- 1.25
        x"41280000", -- 10.5
        x"41A60000", -- 20.75
        x"C0000000", -- -2.0
        x"42C80000"  -- 100.0
    );

begin

    uut: FP_ADDER port map (
        A => a_in,
        B => b_in,
        R => adder_out
    );

    clk <= not clk after 10 ns;

    stim_proc: process
    begin        
        -- Initial state: accumulator is 0. First addition: 0 + SAMPLES(0)
        a_in <= (others => '0');
        b_in <= SAMPLES(0);
        wait until rising_edge(clk);
        accumulator <= adder_out;
        wait until rising_edge(clk); -- Allow result to settle

        -- Loop to add the remaining numbers
        for i in 1 to 4 loop
            a_in <= accumulator;  -- Previous result
            b_in <= SAMPLES(i);   -- New number
            wait until rising_edge(clk);
            accumulator <= adder_out;
            wait until rising_edge(clk);
        end loop;
        wait;
    end process;

end test;