library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM_generator is
    Port ( 
        clk        : in  STD_LOGIC;
        duty_cycle : in  STD_LOGIC_VECTOR (6 downto 0);
        fpwm       : in  STD_LOGIC_VECTOR (3 downto 0);
        pwm_out    : out STD_LOGIC
    );
end PWM_generator;

architecture Behavioral of PWM_generator is
    signal Tint     : unsigned(14 downto 0) := (others => '0');
    signal clk_count: unsigned(14 downto 0) := (others => '0');
    signal inter1, inter2: unsigned(21 downto 0);
begin
    Tint <= to_unsigned(24000,15) / unsigned(fpwm);
    inter1 <= Tint * unsigned(duty_cycle);
    inter2 <= inter1 / to_unsigned(100,7);

    process(clk)
    begin
        if rising_edge(clk) then
            clk_count <= clk_count + 1;
            if (clk_count = Tint) then
                clk_count <= (others => '0');
            end if;
            
            pwm_out <= '1';
            
            if (clk_count > inter2(14 downto 0)) then
                pwm_out <= '0';
            end if;
        end if;
    end process;
end Behavioral;