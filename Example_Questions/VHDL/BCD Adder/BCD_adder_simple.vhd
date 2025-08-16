library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_Adder is
    Port (
        A       : in  STD_LOGIC_VECTOR(3 downto 0);
        B       : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin     : in  STD_LOGIC;
        Sum     : out STD_LOGIC_VECTOR(3 downto 0);
        Cout    : out STD_LOGIC
    );
end BCD_Adder;

architecture Behavioral of BCD_Adder is
    signal temp_sum : unsigned(4 downto 0);  
begin
    process (A, B, Cin)
    begin
        temp_sum := unsigned(A) + unsigned(B) + ("0000" & Cin);
        if temp_sum > 9 then
            temp_sum := temp_sum + 6;  
            Cout <= '1';
        else
            Cout <= '0';
        end if;
        Sum <= std_logic_vector(temp_sum(3 downto 0));
    end process;
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_2Digit_Adder is
    Port (
        A1, A0  : in  STD_LOGIC_VECTOR(3 downto 0); 
        B1, B0  : in  STD_LOGIC_VECTOR(3 downto 0); 
        S2      : out STD_LOGIC_VECTOR(3 downto 0); 
        S1, S0  : out STD_LOGIC_VECTOR(3 downto 0)  
    );
end BCD_2Digit_Adder;

architecture Structure of BCD_2Digit_Adder is

    component BCD_Adder
        Port (
            A     : in  STD_LOGIC_VECTOR(3 downto 0);
            B     : in  STD_LOGIC_VECTOR(3 downto 0);
            Cin   : in  STD_LOGIC;
            Sum   : out STD_LOGIC_VECTOR(3 downto 0);
            Cout  : out STD_LOGIC
        );
    end component;

    signal c0, c1 : STD_LOGIC;
    signal zero   : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin

    U1: BCD_Adder port map (A0, B0, '0', S0, c0);        
    U2: BCD_Adder port map (A1, B1, c0, S1, c1);         
    U3: BCD_Adder port map (zero, zero, c1, S2, open);   

end Structure;
