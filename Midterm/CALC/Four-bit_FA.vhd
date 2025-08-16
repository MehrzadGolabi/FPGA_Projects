library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_bit_FA is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Four_bit_FA;

architecture Behavioral of Four_bit_FA is

signal C : STD_LOGIC_VECTOR(3 downto 1);

COMPONENT Full_Adder
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		s : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;

begin
Inst_Full_Adder_0: Full_Adder PORT MAP(
		a => A(0) ,
		b => B(0),
		cin => Cin,
		s => S(0),
		cout => C(1) 
	);
	
Inst_Full_Adder_1: Full_Adder PORT MAP(
		a => A(1) ,
		b => B(1),
		cin => C(1),
		s => S(1),
		cout => C(2) 
	);
	
Inst_Full_Adder_2: Full_Adder PORT MAP(
		a => A(2) ,
		b => B(2),
		cin => C(2),
		s => S(2),
		cout => C(3) 
	);
	
Inst_Full_Adder_3: Full_Adder PORT MAP(
		a => A(3) ,
		b => B(3),
		cin => C(3),
		s => S(3),
		cout => Cout 
	);
	


end Behavioral;

