--1-	تبدیل مبنا
-----------------------------------------------------------------------------
--hex converter
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity converter is
    port (
        binary_input : in std_logic_vector(7 downto 0);
        hex_output   : out std_logic_vector(3 downto 0) -- For 4-bit hex output
    );
end entity converter;

architecture behavioral of converter is
    signal temp_integer : integer;
begin
    temp_integer <= to_integer(unsigned(binary_input));

    process(temp_integer)
    begin
        case temp_integer is
            when 0  => hex_output <= "0000";
            when 1  => hex_output <= "0001";
            when 2  => hex_output <= "0010";
            when 3  => hex_output <= "0011";
            when 4  => hex_output <= "0100";
            when 5  => hex_output <= "0101";
            when 6  => hex_output <= "0110";
            when 7  => hex_output <= "0111";
            when 8  => hex_output <= "1000";
            when 9  => hex_output <= "1001";
            when 10 => hex_output <= "1010";
            when 11 => hex_output <= "1011";
            when 12 => hex_output <= "1100";
            when 13 => hex_output <= "1101";
            when 14 => hex_output <= "1110";
            when 15 => hex_output <= "1111";
            when others => hex_output <= "XXXX"; -- Undefined or out of range
        end case;
    end process;
end architecture behavioral;


-----------------------------------------------------------------------------
--octal converter
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decimal_to_octal is
    port (
        decimal_in  : in  integer range 0 to 255;
        octal_out   : out std_logic_vector(8 downto 0) -- 3 octal digits × 3 bits each
    );
end entity decimal_to_octal;

architecture behavioral of decimal_to_octal is
    signal binary_rep : std_logic_vector(7 downto 0);
begin
    binary_rep <= std_logic_vector(to_unsigned(decimal_in, 8));

    -- Convert to octal: group bits into 3-bit chunks
    -- For 8-bit input (0-255), we need 3 octal digits
    -- Format: [digit3][digit2][digit1] where each digit is 3 bits
    octal_out <= '0' & binary_rep(7 downto 6) & binary_rep(5 downto 3) & binary_rep(2 downto 0);

end architecture behavioral;


-----------------------------------------------------------------------------
--BCD converter using Double-Dabble algorithm
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_to_bcd is
    port (
        binary_in  : in  std_logic_vector(7 downto 0);  -- 8-bit binary input (0-255)
        bcd_out    : out std_logic_vector(11 downto 0)  -- 3 BCD digits × 4 bits each
    );
end entity binary_to_bcd;

architecture behavioral of binary_to_bcd is
begin
    -- Double-Dabble algorithm 
    process(binary_in)
        variable temp_binary : std_logic_vector(7 downto 0) := binary_in;
        variable temp_bcd    : std_logic_vector(11 downto 0) := (others => '0');
        variable i           : integer:=0;
    begin
        for i in 0 to 7 loop
            temp_bcd := temp_bcd(10 downto 0) & temp_binary(7);
            temp_binary := temp_binary(6 downto 0) & '0';
            
            if i < 7 then 
                if temp_bcd(11 downto 8) >= "0101" then -- if the hundreds digit is greater than or equal to 5, add 3 to it
                    temp_bcd(11 downto 8) := temp_bcd(11 downto 8) + "0011";
                end if;
                
                if temp_bcd(7 downto 4) >= "0101" then -- if the tens digit is greater than or equal to 5, add 3 to it
                    temp_bcd(7 downto 4) := temp_bcd(7 downto 4) + "0011";
                end if;
                
                if temp_bcd(3 downto 0) >= "0101" then -- if the ones digit is greater than or equal to 5, add 3 to it
                    temp_bcd(3 downto 0) := temp_bcd(3 downto 0) + "0011";
                end if;
            end if;
        end loop;
        
        bcd_out <= temp_bcd;
    end process;
end architecture behavioral;