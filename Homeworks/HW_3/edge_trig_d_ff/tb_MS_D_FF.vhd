--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:31:23 05/01/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/edge_trig_d_ff/tb_MS_D_FF.vhd
-- Project Name:  edge_trig_d_ff
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MS_D_FF
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
 
ENTITY tb_MS_D_FF IS
END tb_MS_D_FF;
 
ARCHITECTURE behavior OF tb_MS_D_FF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MS_D_FF
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic;
         Q_bar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Q_bar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MS_D_FF PORT MAP (
          D => D,
          clk => clk,
          Q => Q,
          Q_bar => Q_bar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

        D <= '0'; wait for 7 ns;   
        D <= '1'; wait for 20 ns;
        D <= '0'; wait for 20 ns;
        D <= '1'; wait for 20 ns;

      wait;
   end process;

END;
