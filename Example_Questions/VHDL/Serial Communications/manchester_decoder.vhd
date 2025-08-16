Library ieee;
Use ieee.std_logic_1164.all;

Entity Manchester_decoder is
    Port (
        Clk : in std_logic;
        D   : in std_logic;
        Q   : out std_logic
    );
End entity Manchester_decoder;

Architecture basic of Manchester_decoder is
    Signal lastd : std_logic := '0';
Begin
    P1 : process (clk)
    Begin
        If rising_edge(clk) then
            Lastd <= d;
        End if;
        If falling_edge(clk) then
            If (lastd = '0') and (d = '1') then
                Q <= '1';
            Elsif (lastd = '1') and (d = '0') then
                Q <= '0';
            Else
                Q <= 'X';
            End if;
        End if;
    End process p1;
End architecture basic;
