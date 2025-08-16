library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Simple_Button_Counter is
    Port ( 
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        button  : in  STD_LOGIC;  -- کلید pull-up شده، پس '0' یعنی فشرده شده
        seg_out : out STD_LOGIC_VECTOR (6 downto 0)
    );
end Simple_Button_Counter;

architecture Simple of Simple_Button_Counter is

    component BCD_to_7Segment
        Port ( 
            BCD_in  : in  STD_LOGIC_VECTOR (3 downto 0);
            SEG_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    component pb_debounce is
        port (
            clk : in STD_LOGIC;
            PB : in STD_LOGIC;
            PB_debounced : out STD_LOGIC
        );
    end component;

    signal counter      : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal bcd_value    : STD_LOGIC_VECTOR(3 downto 0);
    signal button_debounced : STD_LOGIC;  
    signal button_reg   : STD_LOGIC := '1';  

begin

    debounce_inst: pb_debounce 
        port map (
            clk => clk,
            PB => button,
            PB_debounced => button_debounced
        );

    process(clk, reset)
    begin
        if reset = '1' then
            counter    <= (others => '0');
            button_reg <= '1';

        elsif rising_edge(clk) then
            if button_reg = '1' and button_debounced = '0' then
                if counter = "1001" then
                    counter <= (others => '0');
                else
                    counter <= std_logic_vector(unsigned(counter) + 1);
                end if;
            end if;
            button_reg <= button_debounced;
        end if;
    end process;

    bcd_value <= counter;

    BCD_7Seg: BCD_to_7Segment 
        Port Map (
            BCD_in  => bcd_value,
            SEG_out => seg_out
        );

end Simple;
