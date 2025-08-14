
-- VHDL Instantiation Created from source file BCD_Sev.vhd -- 20:24:47 05/26/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BCD_Sev
	PORT(
		BCD : IN std_logic_vector(3 downto 0);          
		Sev : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_BCD_Sev: BCD_Sev PORT MAP(
		BCD => ,
		Sev => 
	);


