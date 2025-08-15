library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity step_motor is
    Port ( 
        dip_sw   : in  STD_LOGIC_VECTOR (2 downto 0);
        clk      : in  STD_LOGIC;
        step_out : out STD_LOGIC_VECTOR (3 downto 0)
    );
end step_motor;

architecture Behavioral of step_motor is
    signal sc          : unsigned(1 downto 0) := (others => '0');
    signal delay_counter: unsigned(24 downto 0) := (others => '0');
    signal speed       : unsigned(24 downto 0) := (others => '0');
begin

    with dip_sw(1 downto 0) select
        speed <= to_unsigned(2400000, 25) when "00",
                 to_unsigned(240000, 25) when "01",
                 to_unsigned(24000, 25) when "10",
                 to_unsigned(2400, 25) when others;

    process(clk)
    begin
        if rising_edge(clk) then
            delay_counter <= delay_counter + 1;
            if (delay_counter >= speed) then
                delay_counter <= (others => '0');

                if (dip_sw(2) = '0') then
                    sc <= sc + 1;
                else
                    sc <= sc - 1;
                end if;
            end if;
            case sc is
                when "00" =>
                    step_out <= "1000";
                when "01" =>
                    step_out <= "0100";
                when "10" =>
                    step_out <= "0010";
                when others =>
                    step_out <= "0001";
            end case;
        end if;
    end process;
                    
end Behavioral;