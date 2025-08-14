--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:18:59 03/10/2025
-- Design Name:   
-- Module Name:   /home/thanotos/Desktop/Fulladder_61_bit/tb_Adder_61bit.vhd
-- Project Name:  Fulladder_61_bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder_61bit
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Adder_61bit is
end tb_Adder_61bit;

architecture Behavioral of tb_Adder_61bit is

  -- Component Declaration of Adder_61bit
  
  component Adder_61bit is
    Port (
      A    : in  STD_LOGIC_VECTOR(60 downto 0);
      B    : in  STD_LOGIC_VECTOR(60 downto 0);
      Sum  : out STD_LOGIC_VECTOR(60 downto 0);
      Cout : out STD_LOGIC
    );
  end component;

  -- Test Signals
  
  signal A_s, B_s : STD_LOGIC_VECTOR(60 downto 0) := (others => '0');
  signal Sum_s    : STD_LOGIC_VECTOR(60 downto 0);
  signal Cout_s   : STD_LOGIC;

begin

  -- Instantiate the Unit Under Test (UUT)
  UUT: Adder_61bit
    port map(
      A    => A_s,
      B    => B_s,
      Sum  => Sum_s,
      Cout => Cout_s
    );


  stim_proc: process
  begin

    -- TEST 1: All zeros
    A_s <= (others => '0');
    B_s <= (others => '0');
    wait for 100 ns;

    -- TEST 2: A is all ones, B is all zeros
    A_s <= (others => '1');
    B_s <= (others => '0');
    wait for 100 ns;

    -- TEST 3: A is all zeros, B is all ones
    A_s <= (others => '0');
    B_s <= (others => '1');
    wait for 100 ns;

    -- TEST 4: Half of A is ones, half of B is ones 
    -- For 61 bits, let's set:
    --   A_s(30 downto 0) = 31 ones, A_s(60 downto 31) = 30 zeros
    --   B_s(30 downto 0) = 31 zeros, B_s(60 downto 31) = 30 ones
    A_s <= (60 downto 31 => '0', 30 downto 0 => '1');
    B_s <= (60 downto 31 => '1', 30 downto 0 => '0');
    wait for 100 ns;

    -- TEST 5: A and B near maximum 61-bit values
    A_s <= (others => '1');  
    B_s <= (others => '1');  
    wait for 100 ns;
	 
    wait;
  end process;

end Behavioral;
