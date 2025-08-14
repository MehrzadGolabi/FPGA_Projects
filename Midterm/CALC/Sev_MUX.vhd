library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sev_MUX is
    Port ( digit1 : in  STD_LOGIC_VECTOR (3 downto 0);
           digit2 : in  STD_LOGIC_VECTOR (3 downto 0);
           digit3 : in  STD_LOGIC_VECTOR (3 downto 0);
           digit4 : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           sev : out  STD_LOGIC_VECTOR (6 downto 0);
           clk : in  STD_LOGIC);
end Sev_MUX;

architecture Behavioral of Sev_MUX is

signal clk_count : integer range 0 to 24000;
signal digit_count : integer range 1 to 4;
signal digit_int : STD_LOGIC_VECTOR (3 downto 0);

COMPONENT BCD_Sev
	PORT(
		BCD : IN std_logic_vector(3 downto 0);          
		Sev : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

begin


  Inst_BCD_Sev: BCD_Sev PORT MAP(
		BCD => digit_int,
		Sev => Sev
	);


  process(clk)
  begin
  
    if rising_edge(clk) then
	 clk_count <= clk_count + 1;
		if clk_count = 24000 then
			clk_count <= 0;
			digit_count <= digit_count + 1;
			case digit_count is
				when 1 =>
					anodes <= "0001";
					digit_int <= digit1;
				when 2 =>
					anodes <= "0010";
					digit_int <= digit2;
				when 3 =>
					anodes <= "0100";
					digit_int <= digit3;
				when 4 =>
					anodes <= "1000";
					digit_int <= digit4;
					digit_count <= 1;
				when others =>
				null;
			end case;
			
		end if;
	 
	 end if;
  end process;


end Behavioral;

