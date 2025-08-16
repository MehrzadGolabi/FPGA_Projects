LIBRARY ieee;
USE ieee.Std_logic_1164.ALL;
USE ieee.Std_logic_unsigned.ALL;

ENTITY serialrx IS
    PORT(
        clk  : IN std_logic;
        rst  : IN std_logic;
        rx   : IN std_logic;
        dout : OUT std_logic_vector (7 downto 0)
    );
END serialrx;

ARCHITECTURE simple OF serialrx IS
    type state is (idle, s0, s1, s2, s3, s4, s5, s6, s7, stop);
    signal current_state, next_state : state;
    signal databuffer : std_logic_vector(7 downto 0);

BEGIN

    receive: process (rst, clk)
    begin
        if rst='0' then
            current_state <= idle;
            for i in 7 downto 0 loop
                dout(i) <= '0';
            end loop;
        elsif rising_edge(CLK) then
            current_state <= next_state;

            case current_state is
                when idle =>
                    if rx = '0' then
                        next_state <= s0;
                    else
                        next_state <= idle;
                    end if;
                when s0 =>
                    next_state <= s1;
                    databuffer(0) <= rx;
                when s1 =>
                    next_state <= s2;
                    databuffer(1) <= rx;
                when s2 =>
                    next_state <= s3;
                    databuffer(2) <= rx;
                when s3 =>
                    next_state <= s4;
                    databuffer(3) <= rx;
                when s4 =>
                    next_state <= s5;
                    databuffer(4) <= rx;
                when s5 =>
                    next_state <= s6;
                    databuffer(5) <= rx;
                when s6 =>
                    next_state <= s7;
                    databuffer(6) <= rx;
                when s7 =>
                    next_state <= stop;
                    databuffer(7) <= rx;
                when stop =>
                    if rx = '0' then
                        next_state <= s0;
                    else
                        next_state <= idle;
                    end if;
                when others =>
                    next_state <= idle;
            end case;
            
            dout <= databuffer;

        end if;
    end process;

END simple;
