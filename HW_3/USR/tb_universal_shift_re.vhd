--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:34:24 05/01/2025
-- Design Name:   
-- Module Name:   C:/Users/thanotos/Documents/FPGA/USR/tb_universal_shift_re.vhd
-- Project Name:  USR
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: universal_shift_reg
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
 
ENTITY tb_universal_shift_re IS
END tb_universal_shift_re;
 
ARCHITECTURE behavior OF tb_universal_shift_re IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT universal_shift_reg
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         mode : IN  std_logic_vector(2 downto 0);
         data_in : IN  std_logic_vector(7 downto 0);
         ser_in_left : IN  std_logic;
         ser_in_right : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal mode : std_logic_vector(2 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal ser_in_left : std_logic := '0';
   signal ser_in_right : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: universal_shift_reg PORT MAP (
          clk => clk,
          rst => rst,
          mode => mode,
          data_in => data_in,
          ser_in_left => ser_in_left,
          ser_in_right => ser_in_right,
          q => q
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
        
        -- 1. asynchronous reset
        rst <= '1';
        wait for 15 ns;                 -- hold reset for >1.5 clks
        rst <= '0';
        wait for 10 ns;

        -- 2. Parallel-load 10101010
        data_in <= "10101010";
        mode    <= "001";               -- load
        wait for 10 ns;                 -- 1 full clock
        mode    <= "000";               -- hold
        wait for 20 ns;

        -- 3. Logical shift left 2 clocks, serial in = 1
        ser_in_right <= '1';
        mode         <= "010";          -- shift-left
        wait for 20 ns;                 -- two clocks
        ser_in_right <= '0';
        mode         <= "000";          -- hold
        wait for 10 ns;

        -- 4. Rotate left 1 clock
        mode <= "100";
        wait for 10 ns;
        mode <= "000";
        wait for 10 ns;

        -- 5. Rotate right 1 clock
        mode <= "101";
        wait for 10 ns;
        mode <= "000";
        wait for 10 ns;

        -- 6. Arithmetic shift right 2 clocks
        mode <= "111";
        wait for 20 ns;
        mode <= "000";
        wait for 10 ns;

        -- 7. Logical shift right with serial-in 0
        ser_in_left <= '0';
        mode        <= "011";
        wait for 20 ns;
        mode        <= "000";
        wait for 20 ns;

      wait;
   end process;

END;
