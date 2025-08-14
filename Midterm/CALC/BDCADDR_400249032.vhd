library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity BDCADDR_400249032 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end BDCADDR_400249032;

architecture Behavioral of BDCADDR_400249032 is

COMPONENT Four_bit_FA_400249032
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		S : OUT std_logic_vector(3 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
	signal s_internal : STD_LOGIC_VECTOR(3 downto 0);
	signal cout_internal : STD_LOGIC;
	signal final_cout : STD_LOGIC;

begin
Inst_Four_bit_FA_400249032_1: Four_bit_FA_400249032 PORT MAP(
		A => A(3 downto 0),
		B => B(3 downto 0),
		Cin => Cin,
		S => s_internal(3 downto 0),
		Cout => cout_internal
	);
	
   final_cout <= cout_internal or (s_internal(3) and s_internal(2)) or (s_internal(3) and s_internal(1));
	
	Cout <= final_cout;
	
	Inst_Four_bit_FA_400249032_2: Four_bit_FA_400249032 PORT MAP(
		A => s_internal(3 downto 0),
		B => '0'& final_cout & final_cout & '0',
		Cin => '0' ,
		S => S,
		Cout => open 
	);

   
end Behavioral;

