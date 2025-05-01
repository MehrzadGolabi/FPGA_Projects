--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:16:53 04/17/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/ALU/tb_alu.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
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
use work.alu_pkg.all;

entity tb_alu is
end entity;

architecture sim of tb_alu is
    
	 constant CLKPER : time := 20 ns; --time constant for switching

    signal A, B, D   : svec := (others=>'0');
    signal OP        : std_logic_vector(4 downto 0);
    signal FLAGS     : std_logic_vector(3 downto 0);

    -- DUT
    begin
        dut : entity work.alu
            port map (
                A     => A,
                B     => B,
                OP    => OP,
                D     => D,
                FLAGS => FLAGS
            );

        stim : process
            variable i : integer;
        begin
            A <= to_signed( 5, WIDTH);   -- example #1  (5)
            B <= to_signed(-3, WIDTH);   -- example #2 (-3)
            wait for CLKPER;

            for i in 0 to 22 loop          -- 0 … 22 = all defined codes
                OP <= std_logic_vector(to_unsigned(i,5));
                wait for CLKPER;
            end loop;

            A <= to_signed(-7, WIDTH);
            B <= to_signed( 2, WIDTH);
            wait for CLKPER;

            for i in 0 to 22 loop
                OP <= std_logic_vector(to_unsigned(i,5));
                wait for CLKPER;
            end loop;
				
            wait;
        end process;
end architecture;
