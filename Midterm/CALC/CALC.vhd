library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CALC is
    Port ( clk : in  STD_LOGIC;
           PBs : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           sev : out  STD_LOGIC_VECTOR (7 downto 0));
end CALC;

architecture Behavioral of CALC is

  COMPONENT pb_debounce
	PORT(
		clk : IN std_logic;
		PB : IN std_logic;          
		PB_debounced : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Sev_MUX
	PORT(
		digit1 : IN std_logic_vector(3 downto 0);
		digit2 : IN std_logic_vector(3 downto 0);
		digit3 : IN std_logic_vector(3 downto 0);
		digit4 : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		anodes : OUT std_logic_vector(3 downto 0);
		sev : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT BDCADDR_400249032
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		Cin : IN std_logic;          
		S : OUT std_logic_vector(3 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;
	
	signal digit1, digit2, sum : std_logic_vector (3 downto 0);
	signal digit3_int, digit4_int : unsigned (3 downto 0) := "0010";
	signal pud, pdd, prd, pld : STD_LOGIC;
	type point is (right, left);
	signal digit_pointer : point := right;
	signal carry : std_logic;
	signal clk_count : unsigned (14 downto 0);
	signal L_Blink, R_Blink : STD_LOGIC;
	signal anodes_int : std_logic_vector (3 downto 0);
	signal blink_count : unsigned (9 downto 0) := (others => '0');

begin

  Inst_pb_debounce_UP: pb_debounce PORT MAP(
		clk => clk,
		PB => PBs(0),
		PB_debounced => pud
	);
	
	Inst_pb_debounce_DOWN: pb_debounce PORT MAP(
		clk => clk,
		PB => PBs(1),
		PB_debounced => pdd
	);
	
	Inst_pb_debounce_RIGHT: pb_debounce PORT MAP(
		clk => clk,
		PB => PBs(2),
		PB_debounced => prd
	);
	
	Inst_pb_debounce_LEFT: pb_debounce PORT MAP(
		clk => clk,
		PB => PBs(3),
		PB_debounced => pld
	);
	
	Inst_Sev_MUX: Sev_MUX PORT MAP(
		digit1 => digit1,
		digit2 => digit2,
		digit3 => std_logic_vector(digit3_int),
		digit4 => std_logic_vector(digit4_int),
		anodes => anodes_int,
		sev => sev(6 downto 0),
		clk => clk
	);
	
	Inst_BDCADDR_400249032: BDCADDR_400249032 PORT MAP(
		A => std_logic_vector(digit3_int),
		B => std_logic_vector(digit4_int),
		Cin => '0',
		S => digit1,
		Cout => carry
	);
	
	digit2 <= "000"&carry;
	anodes <= anodes_int;

    PB_Read : process(clk)
	 begin
		if rising_edge(clk) then
			if digit_pointer = right then
				if pud = '0' then
					if digit3_int < to_unsigned(9,4) then
						digit3_int <= digit3_int + 1;
					else
						digit3_int <= digit3_int;
					end if;
				end if;
				if pdd = '0' then
					if digit3_int > to_unsigned(0,4) then
						digit3_int <= digit3_int - 1;
					else
						digit3_int <= digit3_int;
					end if;
				end if;
				if prd = '0' then
					digit_pointer <= right;
				end if;
				if pld = '0' then
					digit_pointer <= left;
				end if;
			else
				if pud = '0' then
					if digit4_int < to_unsigned(9,4) then
						digit4_int <= digit4_int + 1;
					else
						digit4_int <= digit4_int;
					end if;
				end if;
				if pdd = '0' then
					if digit4_int > to_unsigned(0,4) then
						digit4_int <= digit4_int - 1;
					else
						digit4_int <= digit4_int;
					end if;
				end if;
				if prd = '0' then
					digit_pointer <= right;
				end if;
				if pld = '0' then
					digit_pointer <= left;
				end if;
			end if;
		end if;
	 end process PB_Read;
	 
	DP_Blink : process(clk)
	 begin
		if rising_edge(clk) then
			if digit_pointer = right then
				if blink_count = to_unsigned(1000,10) then
					blink_count <= (others => '0');
				end if;
				if anodes_int = "0100" then
					sev(7) <= '0';
					blink_count <= blink_count + 1;
					if blink_count > to_unsigned(500,10) then
						sev(7) <= '1';
					end if;
				else
				sev(7) <= '1';
				end if;
			else
				if blink_count = to_unsigned(1000,10) then
					blink_count <= (others => '0');
				end if;
				if anodes_int = "1000" then
					sev(7) <= '0';
					blink_count <= blink_count + 1;
					if blink_count > to_unsigned(500,10) then
						sev(7) <= '1';
					end if;
				else
				sev(7) <= '1';
				end if;
			end if;
		end if;
	end process DP_Blink;


end Behavioral;

