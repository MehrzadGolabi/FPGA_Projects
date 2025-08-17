Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity zdelay is
    Generic ( n : integer := 8 );
    Port (
        clk  : in std_logic;
        Zin  : in signed (n-1 downto 0);
        Zout : out signed (n-1 downto 0) := (others => '0')
    );
End entity zdelay;

Architecture zdomain of zdelay is
    signal lastzin : signed (n-1 downto 0) := (others => '0');
Begin
    p1 : process(clk)
    begin
        if rising_edge(clk) then
            zout <= lastzin;
            lastzin <= zin;
        end if;
    end process p1;
End architecture zdomain;
