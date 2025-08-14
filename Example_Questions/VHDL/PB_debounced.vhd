library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pb_debounce is

     port (clk : in STD_LOGIC;
	        PB : in STD_LOGIC;
			  PB_debounced : out STD_LOGIC);
end pb_debounce;

architecture behavioral of pb_debounce is

signal clk_count : unsigned(14 downto 0) := (others => '0');
type state is (released, chk_released, pressed, chk_pressed);
signal current_state : state := released;

begin

process(clk)
begin

if rising_edge(clk) then
  clk_count <= clk_count + 1;

  if current_state = released then
  clk_count <= (others => '0');
		 if PB = '0' then
		    current_state <= chk_pressed;
		else
		    current_state <= released;
		 end if;
  elsif current_state = chk_pressed then
      if PB = '0' then
			 if clk_count = to_unsigned(24000,15) then
			    current_state <= pressed;
			    PB_debounced <= '0';
			else
			    current_state <= chk_pressed;
			end if;
		else
		current_state <= released;
	  end if;
  end if;

  if current_state = pressed then
	  clk_count <= (others => '0');
		 if PB = '1' then
		current_state <= chk_released;
		else
		current_state <= pressed;
		 end if;
  elsif current_state = chk_released then
      if PB = '1' then
	    if clk_count = to_unsigned(24000,15) then
		current_state <= released;
		PB_debounced <= '1';
		else
		current_state <= chk_released;
		end if;
		else
		current_state <= pressed;
	  end if;
  end if;



end if;


end process;

end behavioral;
