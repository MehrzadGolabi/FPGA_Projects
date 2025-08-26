Library ieee;
Use ieee.numeric_std.all;

Entity zsum is
    Generic ( n : integer := 8 );
    Port (
        Zin1 : in signed (n-1 downto 0);
        Zin2 : in signed (n-1 downto 0);
        Zout : out signed (n-1 downto 0)
    );
End entity zsum;

Architecture zdomain of zsum is
Begin
    p1 : process(zin1, zin2)
    variable zsum : signed (2*n-1 downto 0);
    begin
        zsum := zin1 + zin2;
        zout <= zsum (n-1 downto 0);
    end process p1;
End architecture zdomain;
