----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:38 04/21/2025 
-- Design Name: 
-- Module Name:    BCD2SEG - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD2SEG is
    port(
        nibble : in  STD_LOGIC_VECTOR(3 downto 0);
        seg    : out STD_LOGIC_VECTOR(6 downto 0)  -- segments a b c d e f g
    );
end entity;


-- Architecture using CASE 

architecture select_arch of BCD2SEG is
begin
    process(nibble)
    begin
        case nibble is
            when "0000" => seg <= "1111110";  -- 0
            when "0001" => seg <= "0110000";  -- 1
            when "0010" => seg <= "1101101";  -- 2
            when "0011" => seg <= "1111001";  -- 3
            when "0100" => seg <= "0110011";  -- 4
            when "0101" => seg <= "1011011";  -- 5
            when "0110" => seg <= "1011111";  -- 6
            when "0111" => seg <= "1110000";  -- 7
            when "1000" => seg <= "1111111";  -- 8
            when "1001" => seg <= "1111011";  -- 9
            when "1010" => seg <= "1110111";  -- A
            when "1011" => seg <= "0011111";  -- b
            when "1100" => seg <= "1001110";  -- C
            when "1101" => seg <= "0111101";  -- d
            when "1110" => seg <= "1001111";  -- E
            when "1111" => seg <= "1000111";  -- F
            when others => seg <= "0000000";  -- all off 
        end case;
    end process;
end architecture select_arch;


-- Architecture using IF...ELSIF 

architecture conditional_arch of BCD2SEG is
begin
    process(nibble)
    begin
        if nibble = "0000" then
            seg <= "1111110";
        elsif nibble = "0001" then
            seg <= "0110000";
        elsif nibble = "0010" then
            seg <= "1101101";
        elsif nibble = "0011" then
            seg <= "1111001";
        elsif nibble = "0100" then
            seg <= "0110011";
        elsif nibble = "0101" then
            seg <= "1011011";
        elsif nibble = "0110" then
            seg <= "1011111";
        elsif nibble = "0111" then
            seg <= "1110000";
        elsif nibble = "1000" then
            seg <= "1111111";
        elsif nibble = "1001" then
            seg <= "1111011";
        elsif nibble = "1010" then
            seg <= "1110111";
        elsif nibble = "1011" then
            seg <= "0011111";
        elsif nibble = "1100" then
            seg <= "1001110";
        elsif nibble = "1101" then
            seg <= "0111101";
        elsif nibble = "1110" then
            seg <= "1001111";
        elsif nibble = "1111" then
            seg <= "1000111";
        else
            seg <= "0000000";
        end if;
    end process;
end architecture conditional_arch;