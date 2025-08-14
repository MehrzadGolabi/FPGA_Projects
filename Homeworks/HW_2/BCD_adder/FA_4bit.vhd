----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:48 03/10/2025 
-- Design Name: 
-- Module Name:    FA_4bit - Behavioral 
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

entity FA_4bit is
  Port (
    A    : in  STD_LOGIC_VECTOR(3 downto 0);
    B    : in  STD_LOGIC_VECTOR(3 downto 0);
    Cin  : in  STD_LOGIC;
    Sum  : out STD_LOGIC_VECTOR(3 downto 0);
    Cout : out STD_LOGIC
  );
end FA_4bit;

architecture Behavioral of FA_4bit is

  component FA_1bit is
    Port (
      A    : in  STD_LOGIC;
      B    : in  STD_LOGIC;
      Cin  : in  STD_LOGIC;
      S    : out STD_LOGIC;
      Cout : out STD_LOGIC
    );
  end component;

  signal c : STD_LOGIC_VECTOR(2 downto 0);

begin

  -- Instantiate 1-bit adders
  FA0: FA_1bit port map(
        A    => A(0),
        B    => B(0),
        Cin  => Cin,
        S    => Sum(0),
        Cout => c(0)
      );

  FA1: FA_1bit port map(
        A    => A(1),
        B    => B(1),
        Cin  => c(0),
        S    => Sum(1),
        Cout => c(1)
      );

  FA2: FA_1bit port map(
        A    => A(2),
        B    => B(2),
        Cin  => c(1),
        S    => Sum(2),
        Cout => c(2)
      );

  FA3: FA_1bit port map(
        A    => A(3),
        B    => B(3),
        Cin  => c(2),
        S    => Sum(3),
        Cout => Cout
      );

end Behavioral;
