----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:19 03/10/2025 
-- Design Name: 
-- Module Name:    FA_1bit - Behavioral 
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

entity FA_1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA_1bit;

architecture Behavioral of FA_1bit is

begin
  -- Sum
  S <= (A xor B) xor Cin;
  -- Carry out
  Cout <= (A and B) or (B and Cin) or (A and Cin);

end Behavioral;

