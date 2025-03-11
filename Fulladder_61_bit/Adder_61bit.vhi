
-- VHDL Instantiation Created from source file Adder_61bit.vhd -- 09:24:17 03/10/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Adder_61bit
	PORT(
		A : IN std_logic_vector(60 downto 0);
		B : IN std_logic_vector(60 downto 0);          
		Sum : OUT std_logic_vector(60 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	Inst_Adder_61bit: Adder_61bit PORT MAP(
		A => ,
		B => ,
		Sum => ,
		Cout => 
	);


