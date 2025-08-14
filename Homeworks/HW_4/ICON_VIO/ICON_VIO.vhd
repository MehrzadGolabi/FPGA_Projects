library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ICON_VIO is
    Port ( rpm_in : in  STD_LOGIC_VECTOR (6 downto 0);
           rpm_out : out  STD_LOGIC_VECTOR (7 downto 0));
end ICON_VIO;

architecture Behavioral of ICON_VIO is

	signal mult,div : unsigned(14 downto 0) := (others => '0');
	signal control0 : STD_LOGIC_VECTOR(35 DOWNTO 0);
	signal async_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal async_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
	signal rpm_out_int :  STD_LOGIC_VECTOR (7 downto 0);
	
	
	component ICON_IP
  PORT (
    CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));

   end component;
	
	
	component VIO_IP
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    ASYNC_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ASYNC_OUT : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));

	end component;
	

begin

	mult <= unsigned(rpm_in) * to_unsigned(255,8);
	div <= mult / to_unsigned(100,7);
	rpm_out_int <= std_logic_vector(div(7 downto 0));
	rpm_out <= rpm_out_int;
	
	ICON : ICON_IP
  port map (
    CONTROL0 => CONTROL0);
	 
	 VIO : VIO_IP
  port map (
    CONTROL => CONTROL0,
    ASYNC_IN => ASYNC_IN,
    ASYNC_OUT => ASYNC_OUT);
	 
	 async_out <= rpm_in;
	 async_in <= rpm_out_int;


end Behavioral;

