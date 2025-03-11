
-- VHDL Instantiation Created from source file FA_4bit.vhd -- 09:23:29 03/10/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT FA_4bit
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		Sum : OUT std_logic_vector(3 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	Inst_FA_4bit: FA_4bit PORT MAP(
		A => ,
		B => ,
		Cin => ,
		Sum => ,
		Cout => 
	);


