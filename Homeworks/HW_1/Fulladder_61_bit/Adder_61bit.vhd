----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:17:42 03/10/2025 
-- Design Name: 
-- Module Name:    Adder_61bit - Behavioral 
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

entity Adder_61bit is
  Port (
    A    : in  STD_LOGIC_VECTOR(60 downto 0);
    B    : in  STD_LOGIC_VECTOR(60 downto 0);
    Sum  : out STD_LOGIC_VECTOR(60 downto 0);
    Cout : out STD_LOGIC
  );
end Adder_61bit;

architecture Behavioral of Adder_61bit is

  component FA_4bit is
    Port (
      A    : in  STD_LOGIC_VECTOR(3 downto 0);
      B    : in  STD_LOGIC_VECTOR(3 downto 0);
      Cin  : in  STD_LOGIC;
      Sum  : out STD_LOGIC_VECTOR(3 downto 0);
      Cout : out STD_LOGIC
    );
  end component;

  component FA_1bit is
    Port (
      A    : in  STD_LOGIC;
      B    : in  STD_LOGIC;
      Cin  : in  STD_LOGIC;
      S    : out STD_LOGIC;
      Cout : out STD_LOGIC
    );
  end component;

  -- We need to chain 15 four-bit adders (covering bits 0..59) plus one 1-bit adder for bit 60, for a total of 61 bits.
  signal carry : STD_LOGIC_VECTOR(15 downto 0);

begin

  -- Initial carry in
  carry(0) <= '0';

  -- Generate 15 blocks of 4-bit addition
  GEN_4BIT: for i in 0 to 14 generate
    FA4_inst : FA_4bit
      port map(
        A    => A(4*i+3 downto 4*i),
        B    => B(4*i+3 downto 4*i),
        Cin  => carry(i),
        Sum  => Sum(4*i+3 downto 4*i),
        Cout => carry(i+1)
      );
  end generate GEN_4BIT;

  -- the remaining 1 bit
  FA1_inst : FA_1bit
    port map(
      A    => A(60),
      B    => B(60),
      Cin  => carry(15),
      S    => Sum(60),
      Cout => Cout
    );

end Behavioral;
