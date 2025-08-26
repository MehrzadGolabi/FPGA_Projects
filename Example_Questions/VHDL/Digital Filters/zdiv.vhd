Library ieee;
Use ieee.numeric_std.all;

Entity zdiv2 is
    Generic ( n : integer := 8 );
    Port (
        Zin  : in signed (n-1 downto 0);
        Zout : out signed (n-1 downto 0)
    );
End entity zdiv2;

Architecture zdomain of zdiv2 is
Begin
    zout <= zin srl 1; --shift right by 1, divided by 2
End architecture zdomain;
