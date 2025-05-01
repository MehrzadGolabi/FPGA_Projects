----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:30:23 04/21/2025 
-- Design Name: 
-- Module Name:    arithmetic_unit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity arithmetic_unit is
    port(
        A, B   : in  STD_LOGIC_VECTOR(3 downto 0);
        S      : in  STD_LOGIC_VECTOR(1 downto 0);
        Cin    : in  STD_LOGIC;
        D      : out STD_LOGIC_VECTOR(3 downto 0);
        Cout   : out STD_LOGIC
    );
end arithmetic_unit;

architecture Behavioral of arithmetic_unit is

component mux4to1
        generic ( WIDTH : integer := 1 );
        port(
            D0, D1, D2, D3 : in  STD_LOGIC_VECTOR(WIDTH-1 downto 0);
            S              : in  STD_LOGIC_VECTOR(1 downto 0);
            Y              : out STD_LOGIC_VECTOR(WIDTH-1 downto 0)
        );
    end component;

    component full_adder
        port(
            A, B, Cin : in  STD_LOGIC;
            Sum, Cout : out STD_LOGIC
        );
    end component;

    signal Bbar    : STD_LOGIC_VECTOR(3 downto 0);
    signal const0  : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal const1  : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
    signal Y       : STD_LOGIC_VECTOR(3 downto 0);
    signal c_int   : STD_LOGIC_VECTOR(3 downto 0);

begin

-- one's complement of B
    Bbar <= not B;

    -- four 4?1 MUXes to select Input
    M0: mux4to1 generic map(WIDTH=>1)
        port map( D0=>B(0 downto 0),
						D1=>Bbar(0 downto 0),
						D2=>const0(0 downto 0),
						D3=>const1(0 downto 0),
                  S=>S,
						Y=>Y(0 downto 0));

    M1: mux4to1 generic map(WIDTH=>1)
        port map(D0=>B(1),  D1=>Bbar(1), D2=>const0(1), D3=>const1(1),
                 S=>S,           Y=>Y(1));

    M2: mux4to1 generic map(WIDTH=>1)
        port map(D0=>B(2),  D1=>Bbar(2), D2=>const0(2), D3=>const1(2),
                 S=>S,           Y=>Y(2));

    M3: mux4to1 generic map(WIDTH=>1)
        port map(D0=>B(3),  D1=>Bbar(3), D2=>const0(3), D3=>const1(3),
                 S=>S,           Y=>Y(3));

    -- ripple carry adder: D = A + Y + Cin
    FA0: full_adder port map(A=>A(0), B=>Y(0), Cin=>Cin,   Sum=>D(0), Cout=>c_int(0));
    FA1: full_adder port map(A=>A(1), B=>Y(1), Cin=>c_int(0), Sum=>D(1), Cout=>c_int(1));
    FA2: full_adder port map(A=>A(2), B=>Y(2), Cin=>c_int(1), Sum=>D(2), Cout=>c_int(2));
    FA3: full_adder port map(A=>A(3), B=>Y(3), Cin=>c_int(2), Sum=>D(3), Cout=>c_int(3));

    Cout <= c_int(3);

end Behavioral;

