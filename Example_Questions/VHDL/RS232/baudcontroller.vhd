LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY baudcontroller IS
    PORT(
        clk    : IN std_logic;
        rst    : IN std_logic;
        baud   : IN std_logic_vector(0 to 2);
        clkout : OUT std_logic
    );
END baudcontroller;

ARCHITECTURE simple OF baudcontroller IS
    SIGNAL clkdiv : integer := 0;
    SIGNAL count  : integer := 0;

BEGIN

    Div: process (rst, clk)
    begin
        if rst='0' then
            clkdiv <= 0;
            count  <= 0;
        elsif rising_edge(CLK) then
            case baud is
                when "000" => clkdiv <= 7;   -- 115200
                when "001" => clkdiv <= 15;  -- 57600
                when "010" => clkdiv <= 23;  -- 38400
                when "011" => clkdiv <= 47;  -- 19200
                when "100" => clkdiv <= 95;  -- 9600
                when "101" => clkdiv <= 191; -- 4800
                when "110" => clkdiv <= 383; -- 2400
                when "111" => clkdiv <= 767; -- 1200
                when others => clkdiv <= 7;
            end case;
        end if;
    end process;

    clockdivision: process (clk, rst)
    begin
        if rst='0' then
            count <= 0;
            clkout <= '0';
        elsif rising_edge(CLK) then
            count <= count + 1;
            if (count = clkdiv) then
                clkout <= not clkout;
                count <= 0;
            end if;
        end if;
    end process;

END simple;
