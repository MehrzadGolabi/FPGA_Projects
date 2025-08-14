----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:22 04/18/2025 
-- Design Name: 
-- Module Name:    bcd_8bit_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_8bit is
  Port (
    Addend  : in  STD_LOGIC_VECTOR (7 downto 0);  
    Augend  : in  STD_LOGIC_VECTOR (7 downto 0);  
    Sum     : out STD_LOGIC_VECTOR (7 downto 0);  
    Cout    : out STD_LOGIC                      
  );
end BCD_Adder_8bit;

architecture Structural of BCD_Adder_8bit is
  signal c1 : STD_LOGIC;    
begin
  
  U0 : entity work.BCD_Digit_Adder
    port map (
      A    => Addend(3 downto 0),
      B    => Augend(3 downto 0),
      Cin  => '0',
      Sum  => Sum(3 downto 0),
      Cout => c1
    );

  
  U1 : entity work.BCD_Digit_Adder
    port map (
      A    => Addend(7 downto 4),
      B    => Augend(7 downto 4),
      Cin  => c1,
      Sum  => Sum(7 downto 4),
      Cout => Cout
    );
end Structural;
