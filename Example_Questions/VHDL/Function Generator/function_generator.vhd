library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity function_generator is
    Port ( 
        dip_sw  : in  STD_LOGIC;
        clk     : in  STD_LOGIC;
        wave_out: out STD_LOGIC
    );
end function_generator;

architecture Behavioral of function_generator is
    COMPONENT PWM_generator
        PORT(
            clk        : IN  std_logic;
            duty_cycle : IN  std_logic_vector(6 downto 0);
            fpwm       : IN  std_logic_vector(3 downto 0);
            pwm_out    : OUT std_logic
        );
    END COMPONENT;

    signal sample_counter : unsigned(5 downto 0)  := (others => '0');
    signal delay_counter  : unsigned(19 downto 0) := (others => '0');
    type vec is array(0 to 40) of integer; --integer (16 bit) array of 40 samples
    signal wave_signal : vec := (50,58,65,73,80,86,91,95,98,99,99,98,96,93,88,83,76,69,61,54,45,38,30,23,16,11,6,3,1,0,0,1,4,8,13,19,26,34,41,49);
    signal wave_out_internal: STD_LOGIC;

begin

    Inst_PWM_generator: PWM_generator PORT MAP(
        clk        => clk,
        duty_cycle => std_logic_vector(to_unsigned(wave_signal(to_integer(sample_counter)), 7)),
        fpwm       => x"A",
        pwm_out    => wave_out
    );

    process(clk)
    begin
        if rising_edge(clk) then
            delay_counter <= delay_counter + 1;
            if (delay_counter >= to_unsigned(12000,20)) then --0.5ms delay for 50Hz frequency for 40 samples
                delay_counter <= (others => '0');
                sample_counter <= sample_counter + 1;
                if (sample_counter > 39) then
                    sample_counter <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;
