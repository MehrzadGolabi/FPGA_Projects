
-- VHDL Instantiation Created from source file pb_debounce.vhd -- 20:34:01 05/26/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pb_debounce
	PORT(
		clk : IN std_logic;
		PB : IN std_logic;          
		PB_debounced : OUT std_logic
		);
	END COMPONENT;

	Inst_pb_debounce: pb_debounce PORT MAP(
		clk => ,
		PB => ,
		PB_debounced => 
	);


