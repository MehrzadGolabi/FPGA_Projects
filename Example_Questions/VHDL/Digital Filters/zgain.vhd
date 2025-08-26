Library ieee;
Use ieee.numeric_std.all;

Entity zgain is
    Generic (
        n    : integer := 8;
        gain : signed
    );
    Port (
        Zin  : in  signed (n-1 downto 0);
        Zout : out signed (n-1 downto 0)
    );
End entity zgain;

Architecture zdomain of zgain is
Begin
    p1 : process(zin)
    variable product : signed (2*n-1 downto 0);
    begin
        product := zin * gain;
        zout <= product (n-1 downto 0);
    end process p1;
End architecture zdomain;
