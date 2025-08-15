library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AM_Modulator is
    Port ( 
        clk            : in  STD_LOGIC;
        input_signal   : in  STD_LOGIC_VECTOR (6 downto 0);
        modulated_signal: out STD_LOGIC_VECTOR (9 downto 0)
    );
end AM_Modulator;

architecture Behavioral of AM_Modulator is
    COMPONENT Sin_310KHz
        PORT(
            clk : IN  STD_LOGIC;
            sine: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    END COMPONENT;

    signal sin_310k   : std_logic_vector(15 downto 0);
    signal const_sig02: signed(7 downto 0) := to_signed(26,8); --0.2 *2^7 = 26 which fits in 8 bits
    signal mult_sig02 : signed(14 downto 0);
    constant constant_one: signed(8 downto 0) := to_signed(128,9); -- 1 *2^7 = 128 which fits in 9 bits
    signal sum_one    : signed(8 downto 0);
    signal mult_310k  : signed(18 downto 0);

begin

    sin310k_inst: Sin_310KHz --using DDS IP to generate 310KHz sine wave, the used binary value for 310KHz is 310KHz/100MHz*2^16=203.1616 --> 11001011 
        PORT MAP (
            clk  => clk,
            sine => sin_310k
        );

    process(clk)
    begin
        if rising_edge(clk) then
            mult_sig02 <= const_sig02 * signed(input_signal);
            --sum_one    <= resize(mult_sig02,9) + constant_one;
            sum_one    <= mult_sig02(14 downto 6) + constant_one;
            mult_310k  <= sum_one * signed(sin_310k(15 downto 6));
            modulated_signal <= std_logic_vector(mult_310k(18 downto 9));
        end if;
    end process;

end Behavioral;
