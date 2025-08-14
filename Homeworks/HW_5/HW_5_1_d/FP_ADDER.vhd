----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:15 07/11/2025 
-- Design Name: 
-- Module Name:    FP_ADDER - Behavioral 
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

entity FP_ADDER is
    port (
        A, B : in  std_logic_vector(31 downto 0);
        R    : out std_logic_vector(31 downto 0)
    );
end FP_ADDER;

architecture Behavioral of FP_ADDER is

    signal sign_a, sign_b, sign_r       : std_logic;
    signal exp_a, exp_b, exp_r         : unsigned(7 downto 0);
    signal mant_a, mant_b, mant_r_norm : unsigned(22 downto 0);
    signal mant_a_ext, mant_b_ext      : unsigned(23 downto 0);
    signal mant_sum_ext                : unsigned(24 downto 0);
    signal exp_diff                    : unsigned(7 downto 0);
    
begin

    process(A, B)
        variable var_sign_a, var_sign_b, var_sign_r : std_logic;
        variable var_exp_a, var_exp_b, var_exp_r   : unsigned(7 downto 0);
        variable var_mant_a, var_mant_b            : unsigned(22 downto 0);
        variable var_mant_a_ext, var_mant_b_ext    : unsigned(24 downto 0); -- 1 (hidden) + 23 (mant) + 1 (guard)
        variable var_mant_sum                      : unsigned(24 downto 0);
        variable temp_exp_diff                     : integer;

    begin
        -- Decompose
        var_sign_a := A(31);
        var_exp_a  := unsigned(A(30 downto 23));
        var_mant_a := unsigned(A(22 downto 0));

        var_sign_b := B(31);
        var_exp_b  := unsigned(B(30 downto 23));
        var_mant_b := unsigned(B(22 downto 0));

        -- Add hidden '1' bit for normalized numbers
        var_mant_a_ext := unsigned('1' & A(22 downto 0) & '0');
        var_mant_b_ext := unsigned('1' & B(22 downto 0) & '0');
        
        -- Align mantissas by shifting the smaller number's mantissa
        temp_exp_diff := to_integer(var_exp_a) - to_integer(var_exp_b);

        if temp_exp_diff > 0 then
            -- A is larger, shift B's mantissa
            var_exp_r      := var_exp_a;
            var_mant_b_ext := shift_right(var_mant_b_ext, temp_exp_diff);
        elsif temp_exp_diff < 0 then
            -- B is larger, shift A's mantissa
            var_exp_r      := var_exp_b;
            var_mant_a_ext := shift_right(var_mant_a_ext, -temp_exp_diff);
        else
            --equal
            var_exp_r := var_exp_a;
        end if;

        -- Perform addition or subtraction based on signs
        var_sign_r := var_sign_a;
        if var_sign_a = var_sign_b then
            -- Same signs: Add mantissas
            var_mant_sum := var_mant_a_ext + var_mant_b_ext;
        else
            -- Different signs: Subtract mantissas
            if var_mant_a_ext >= var_mant_b_ext then
                var_mant_sum := var_mant_a_ext - var_mant_b_ext;
                var_sign_r := var_sign_a;
            else
                var_mant_sum := var_mant_b_ext - var_mant_a_ext;
                var_sign_r := var_sign_b;
            end if;
        end if;

        -- Normalization
        if var_mant_sum(24) = '1' then -- Carry-out occurred, shift right
            var_mant_sum := shift_right(var_mant_sum, 1);
            var_exp_r    := var_exp_r + 1;
        else
            -- Find leading '1' to shift left
            if var_mant_sum = 0 then
                var_exp_r := (others => '0'); -- Result is zero
            else
                while var_mant_sum(23) = '0' loop
                    var_mant_sum := shift_left(var_mant_sum, 1);
                    var_exp_r    := var_exp_r - 1;
                end loop;
            end if;
        end if;
        --truncate
        mant_r_norm <= var_mant_sum(22 downto 0);
        exp_r       <= var_exp_r;
        sign_r      <= var_sign_r;

    end process;

    R <= sign_r & std_logic_vector(exp_r) & std_logic_vector(mant_r_norm);

end Behavioral;

