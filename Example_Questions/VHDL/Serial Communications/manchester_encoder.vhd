Library ieee;
Use ieee.std_logic_1164.all;

Entity Manchester_encoder is
    Port (
        Clk : in std_logic;
        D   : in std_logic;
        Q   : out std_logic
    );
End entity Manchester_encoder;

Architecture basic of Manchester_encoder is
Begin

    Q <= D XOR CLK;

End architecture basic;
 
--===============================================================
Library ieee;
Use ieee.std_logic_1164.all;

Entity Manchester_encoder is
    Port (
        Clk : in std_logic;
        D   : in std_logic;
        Q   : out std_logic
    );
End entity Manchester_encoder;

Architecture basic of Manchester_encoder is
    Signal lastd : std_logic := '0';
Begin
    P1: Process ( clk )
    Begin
        If rising_edge(clk) then
            if ( d = '0' ) then
                Q <= '1';
                Lastd <= '0';
            elsif ( d = '1' ) then
                Q <= '0';
                Lastd <= '1';
            Else
                Q <= 'X';
                Lastd <= 'X';
            End if;
        If falling_edge(clk) then
            If ( lastd = '0' ) then
                Q <= '0';
            elsif ( lastd = '1' ) then
                Q <= '1';
            Else
                Q <= 'X';
            End if;
        End if;
    End if;
    End process p1;
End architecture basic;
