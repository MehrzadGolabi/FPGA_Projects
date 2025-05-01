--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:13:30 04/21/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/BCD2SEG/tb_BCD2SEG.vhd
-- Project Name:  BCD2SEG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCD2SEG
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_BCD2SEG IS
END tb_BCD2SEG;
 
ARCHITECTURE behavior OF tb_BCD2SEG IS 
    
	 COMPONENT BCD2SEG
    PORT(
         nibble : IN  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nibble_tb : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal seg_tb : std_logic_vector(6 downto 0);
 
 
BEGIN
 
uut: entity work.BCD2SEG(conditional_arch)
        port map (
            nibble => nibble_tb,
            seg    => seg_tb
        );

    stim_proc: process
    begin
        for i in 0 to 15 loop
            nibble_tb <= std_logic_vector(to_unsigned(i, 4));
            wait for 50 ns;
        end loop;
        wait;
    end process;

END;
