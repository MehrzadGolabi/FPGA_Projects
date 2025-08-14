----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:43 04/21/2025 
-- Design Name: 
-- Module Name:    mux4to1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4to1 is
    generic(
        WIDTH : integer := 1
    );
    port(
        D0, D1, D2, D3 : in  STD_LOGIC;
        S              : in  STD_LOGIC_VECTOR(1 downto 0);
        Y              : out STD_LOGIC
    );
end mux4to1;

architecture Behavioral of mux4to1 is
begin
	process(D0, D1, D2, D3, S)
    begin
        case S is
            when "00" => Y <= D0;
            when "01" => Y <= D1;
            when "10" => Y <= D2;
            when "11" => Y <= D3;
            when others => Y <= (others => '0');
        end case;
    end process;
end Behavioral;

