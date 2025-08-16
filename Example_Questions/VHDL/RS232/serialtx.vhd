--Idle → Start Bit → Data Bits (LSB first) → Stop Bit → Idle
-- 1   →    0      →   D0,D1,D2,D3,D4,D5,D6,D7  →   1   →  1
LIBRARY ieee;
USE ieee.Std_logic_1164.ALL;
USE ieee.Std_logic_unsigned.ALL;

ENTITY serialtx IS
    PORT(
        clk  : IN std_logic;
        rst  : IN std_logic;
        din  : IN std_logic_vector(7 downto 0);  -- Input data to transmit
        start : IN std_logic;                     -- Start transmission signal
        busy  : OUT std_logic;                    -- Busy signal during transmission
        tx   : OUT std_logic                      -- Serial output
    );
END serialtx;

ARCHITECTURE simple OF serialtx IS
    type state is (idle, s0, s1, s2, s3, s4, s5, s6, s7, stop);
    signal current_state, next_state : state;
    signal databuffer : std_logic_vector(7 downto 0);
    signal tx_internal : std_logic := '1';  -- Idle state is high

BEGIN
    tx <= tx_internal;

    transmit: process (rst, clk)
    begin
        if rst='0' then
            current_state <= idle;
            tx_internal <= '1';  -- Idle state
            busy <= '0';
        elsif rising_edge(CLK) then
            current_state <= next_state;

            case current_state is
                when idle =>
                    tx_internal <= '1';  -- Idle state
                    busy <= '0';
                    if start = '1' then
                        next_state <= s0;
                        databuffer <= din;  -- Load data to transmit
                    else
                        next_state <= idle;
                    end if;
                    
                when s0 =>
                    tx_internal <= databuffer(0);  -- LSB first
                    busy <= '1';
                    next_state <= s1;
                    
                when s1 =>
                    tx_internal <= databuffer(1);
                    busy <= '1';
                    next_state <= s2;
                    
                when s2 =>
                    tx_internal <= databuffer(2);
                    busy <= '1';
                    next_state <= s3;
                    
                when s3 =>
                    tx_internal <= databuffer(3);
                    busy <= '1';
                    next_state <= s4;
                    
                when s4 =>
                    tx_internal <= databuffer(4);
                    busy <= '1';
                    next_state <= s5;
                    
                when s5 =>
                    tx_internal <= databuffer(5);
                    busy <= '1';
                    next_state <= s6;
                    
                when s6 =>
                    tx_internal <= databuffer(6);
                    busy <= '1';
                    next_state <= s7;
                    
                when s7 =>
                    tx_internal <= databuffer(7);  -- MSB last
                    busy <= '1';
                    next_state <= stop;
                    
                when stop =>
                    tx_internal <= '1';  -- Stop bit
                    busy <= '1';
                    next_state <= idle;  -- Return to idle
                    
                when others =>
                    tx_internal <= '1';
                    busy <= '0';
                    next_state <= idle;
            end case;

        end if;
    end process;

END simple;
