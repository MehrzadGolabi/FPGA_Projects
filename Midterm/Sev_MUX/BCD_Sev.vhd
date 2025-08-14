library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_Sev is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           Sev : out  STD_LOGIC_VECTOR (7 downto 0));
end BCD_Sev;

architecture Behavioral of BCD_Sev is

begin

     with BCD select
        Sev <= 
            "10000001" when "0000",  
            "11001111" when "0001",  
            "10010010" when "0010",  
            "10000110" when "0011",  
            "11001100" when "0100",  
            "10100100" when "0101",  
            "10100000" when "0110",  
            "10001111" when "0111",  
            "10000000" when "1000",  
            "10000100" when "1001",
				"00000000" when others;
             

end Behavioral;

