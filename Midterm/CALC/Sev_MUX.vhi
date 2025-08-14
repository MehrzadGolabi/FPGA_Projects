
-- VHDL Instantiation Created from source file Sev_MUX.vhd -- 20:34:26 05/26/2025
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sev_MUX
	PORT(
		digit1 : IN std_logic_vector(3 downto 0);
		digit2 : IN std_logic_vector(3 downto 0);
		digit3 : IN std_logic_vector(3 downto 0);
		digit4 : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		anodes : OUT std_logic_vector(3 downto 0);
		sev : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Sev_MUX: Sev_MUX PORT MAP(
		digit1 => ,
		digit2 => ,
		digit3 => ,
		digit4 => ,
		anodes => ,
		sev => ,
		clk => 
	);


