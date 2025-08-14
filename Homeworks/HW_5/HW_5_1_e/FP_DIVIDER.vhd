----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:18 07/11/2025 
-- Design Name: 
-- Module Name:    FP_DIVIDER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FP_DIVIDER is
    port (
        CLK        : in  std_logic;
        START      : in  std_logic;
        A, B       : in  std_logic_vector(31 downto 0);
        R          : out std_logic_vector(31 downto 0);
        DONE       : out std_logic
    );
end FP_DIVIDER;

architecture Behavioral of FP_DIVIDER is
    type state_type is (IDLE, CALC, NORM, FINISH);
    signal current_state : state_type := IDLE;

    signal res_sign      : std_logic;
    signal res_exp       : signed(8 downto 0);
    signal final_res     : std_logic_vector(31 downto 0);

begin
    R <= final_res;

    process(CLK)
        variable mant_a_ext   : unsigned(23 downto 0); -- Dividend
        variable mant_b_ext   : unsigned(23 downto 0); -- Divisor
        variable remainder    : signed(47 downto 0); -- Must be wide enough
        variable quotient     : unsigned(23 downto 0);
        variable temp_exp     : signed(8 downto 0);

    begin
        if rising_edge(CLK) then
            case current_state is
                when IDLE =>
                    DONE <= '0';
                    if START = '1' then
                        current_state <= CALC;
                    end if;

                when CALC =>
                    -- Decompose inputs and initialize
                    mant_a_ext := '1' & unsigned(A(22 downto 0));
                    mant_b_ext := '1' & unsigned(B(22 downto 0));
                    temp_exp   := signed('0' & A(30 downto 23)) - signed('0' & B(30 downto 23)) + 127;
                    
                    -- Non-restoring division algorithm
                    remainder := signed(shift_left(resize(mant_a_ext, 48), 24)); -- align dividend

                    for i in 0 to 23 loop
                        if remainder >= 0 then
                            remainder := shift_left(remainder, 1) - signed(shift_left(resize(mant_b_ext, 48), 24));
                        else
                            remainder := shift_left(remainder, 1) + signed(shift_left(resize(mant_b_ext, 48), 24));
                        end if;
                        
                        quotient(23-i) := not remainder(47);
                    end loop;
                    
                    res_exp  <= temp_exp;
                    res_sign <= A(31) xor B(31);
                    current_state <= NORM;
                
                when NORM =>
                    final_res <= res_sign & std_logic_vector(unsigned(res_exp(7 downto 0))) & std_logic_vector(quotient(22 downto 0));
                    current_state <= FINISH;
                
                when FINISH =>
                    DONE <= '1';
                    if START = '0' then
                        current_state <= IDLE;
                    end if;

            end case;
        end if;
    end process;

end Behavioral;

