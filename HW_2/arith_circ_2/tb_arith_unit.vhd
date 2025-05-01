--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:51:05 04/21/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/arith_circ_2/tb_arith_unit.vhd
-- Project Name:  arith_circ_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arith_unit
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
 
ENTITY tb_arith_unit IS
END tb_arith_unit;
 
ARCHITECTURE behavior OF tb_arith_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arith_unit
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
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal D : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arith_unit PORT MAP (
          A => A,
          B => B,
          S => S,
          Cin => Cin,
          D => D,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
        A <= "0101";           -- 5
        B <= "0011";           -- 3
        wait for 10 ns;

        -- Row 0:  A + B
        S   <= "00";  Cin <= '0';  wait for 20 ns;

        -- Row 1:  A + B + 1
        Cin <= '1';            wait for 20 ns;

        -- Row 2:  A + B¯
        S   <= "01";  Cin <= '0';  wait for 20 ns;

        -- Row 3:  A + B¯ + 1
        Cin <= '1';            wait for 20 ns;

        -- Row 4:  Transfer A
        S   <= "10";  Cin <= '0';  wait for 20 ns;

        -- Row 5:  Increment A
        Cin <= '1';            wait for 20 ns;

        -- Row 6:  Decrement A
        S   <= "11";  Cin <= '0';  wait for 20 ns;

        -- Row 7:  Transfer A  (again, with Cin = 1)
        Cin <= '1';            wait for 20 ns;

        wait;                  
    end process;

END;
