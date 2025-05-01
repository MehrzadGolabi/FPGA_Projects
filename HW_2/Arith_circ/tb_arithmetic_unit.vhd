--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:32:47 04/21/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/Arith_circ/tb_arithmetic_unit.vhd
-- Project Name:  Arith_circ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmetic_unit
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_arithmetic_unit IS
END tb_arithmetic_unit;
 
ARCHITECTURE behavior OF tb_arithmetic_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_unit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Cin : IN  std_logic;
         D : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal B_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal S_tb : std_logic_vector(1 downto 0) := (others => '0');
   signal Cin_tb : std_logic := '0';

 	--Outputs
   signal D_tb : std_logic_vector(3 downto 0);
   signal Cout_tb : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_unit PORT MAP (
          A => A_tb,
          B => B_tb,
          S => S_tb,
          Cin => Cin_tb,
          D => D_tb,
          Cout => Cout_tb
        );

   -- Stimulus process
   stim_proc: process
   begin		
     -- 00: Add / Add with carry
        S_tb   <= "00"; Cin_tb <= '0'; wait for 100 ns;  -- D = 5+3 = 8
                 Cin_tb <= '1'; wait for 100 ns;         -- D = 5+3+1 = 9

        -- 01: Subtract with borrow / Subtract
        S_tb   <= "01"; Cin_tb <= '0'; wait for 100 ns;  -- D = A + B¯
                 Cin_tb <= '1'; wait for 100 ns;         -- D = A + B¯ + 1

        -- 10: Transfer A / Increment A
        S_tb   <= "10"; Cin_tb <= '0'; wait for 100 ns;  -- D = A = 5
                 Cin_tb <= '1'; wait for 100 ns;         -- D = A+1 = 6

        -- 11: Decrement A / Transfer A
        S_tb   <= "11"; Cin_tb <= '0'; wait for 100 ns;  -- D = A + B¯ 
                 Cin_tb <= '1'; wait for 100 ns;         -- D = A + B¯ +1

        wait;
    end process;
END;
