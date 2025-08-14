----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:33 07/11/2025 
-- Design Name: 
-- Module Name:    FP_MULTIPLIER - Behavioral 
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

entity FP_MULTIPLIER is
    port (
        A, B : in  std_logic_vector(31 downto 0);
        R    : out std_logic_vector(31 downto 0)
    );
end FP_MULTIPLIER;

architecture Behavioral of FP_MULTIPLIER is
begin
    process(A, B)
        -- Input components
        variable sign_a, sign_b : std_logic;
        variable exp_a, exp_b   : unsigned(7 downto 0);
        variable mant_a, mant_b : unsigned(22 downto 0);
        
        -- Internal variables
        variable mant_a_ext, mant_b_ext : unsigned(23 downto 0);
        variable mant_prod              : unsigned(47 downto 0);
        variable res_sign               : std_logic;
        variable res_exp                : signed(8 downto 0);
        variable res_mant               : unsigned(22 downto 0);

    begin
        -- Decompose inputs
        sign_a := A(31);
        exp_a  := unsigned(A(30 downto 23));
        mant_a := unsigned(A(22 downto 0));

        sign_b := B(31);
        exp_b  := unsigned(B(30 downto 23));
        mant_b := unsigned(B(22 downto 0));

        -- Add hidden '1'
        mant_a_ext := '1' & mant_a;
        mant_b_ext := '1' & mant_b;
        
        -- Calculate result sign
        res_sign := sign_a xor sign_b;
        
        -- Calculate result exponent (E_a + E_b - bias)
        res_exp := signed('0' & exp_a) + signed('0' & exp_b) - 127;

        -- Multiply mantissas
        mant_prod := mant_a_ext * mant_b_ext;
        
        -- Normalize the product
        if mant_prod(47) = '1' then -- Result is in form 1x.xxxx...
            res_exp  := res_exp + 1;
            res_mant := mant_prod(46 downto 24); -- Truncate
        else -- Result is in form 01.xxxx...
            res_mant := mant_prod(45 downto 23); -- Truncate
        end if;
        
        -- Check for overflow/underflow (simplified)
        if res_exp > 254 then
            -- Overflow -> Infinity
            res_exp  := to_signed(255, 9);
            res_mant := (others => '0');
        elsif res_exp <= 0 then
            -- Underflow -> Zero
            res_exp  := (others => '0');
            res_mant := (others => '0');
        end if;

        -- Compose final result
        R <= res_sign & std_logic_vector(unsigned(res_exp(7 downto 0))) & std_logic_vector(res_mant);
        
    end process;
end Behavioral;
