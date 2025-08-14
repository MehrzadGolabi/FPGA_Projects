--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:27:07 05/01/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/HW_3/serialadder/serial_adder_tb.vhd
-- Project Name:  serialadder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: serial_adder
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

--  (N = 53)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serial_adder_tb8 is
end entity;

architecture bench of serial_adder_tb8 is

    constant N           : positive := 53;
    constant CLK_PERIOD  : time     := 10 ns;


    signal clk     : std_logic := '0';
    signal reset   : std_logic := '0';
    signal start   : std_logic := '0';
    signal a_in    : std_logic_vector(N-1 downto 0);
    signal b_in    : std_logic_vector(N-1 downto 0);
    signal sum_out : std_logic_vector(N-1 downto 0);
    signal ready   : std_logic;
begin

    clk <= not clk after CLK_PERIOD/2;


    dut : entity work.serial_adder
        generic map (N => N)
        port map (
            clk     => clk,
            reset   => reset,
            start   => start,
            a_in    => a_in,
            b_in    => b_in,
            sum_out => sum_out,
            ready   => ready
        );


    stimulus : process
        variable a_val, b_val, expected : unsigned(N-1 downto 0);
    begin
        
        --asynchronous reset (active-high)
        reset <= '1';
        wait for 3*CLK_PERIOD;
        reset <= '0';

        --  Eight test cases generated 
        for i in 0 to 7 loop

            a_val := to_unsigned(i        * 12345 + 17, N);   -- e.g. 17, 12362, 246, …
            b_val := to_unsigned((i + 3) *  9876 +  5, N);    -- e.g. 29633, …


            a_in  <= std_logic_vector(a_val);
            b_in  <= std_logic_vector(b_val);
            start <= '1';
            wait for CLK_PERIOD;
            start <= '0';


            wait until ready = '1';

            
            --  Self-check
            expected := a_val + b_val;
            assert unsigned(sum_out) = expected severity failure;

            wait for 4*CLK_PERIOD;
        end loop;

        wait;
    end process;
end architecture;
