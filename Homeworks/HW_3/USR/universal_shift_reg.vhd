----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:17 05/01/2025 
-- Design Name: 
-- Module Name:    universal_shift_reg - Behavioral 
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

entity universal_shift_reg is
    port (
        clk          : in  std_logic;
        rst          : in  std_logic;                       -- asynchronous, active-high
        mode         : in  std_logic_vector(2 downto 0);    -- selects operation (table above)
        data_in      : in  std_logic_vector(7 downto 0);    -- parallel-load input
        ser_in_left  : in  std_logic := '0';                -- serial MSB input (shift-right)
        ser_in_right : in  std_logic := '0';                -- serial LSB input (shift-left)
        q            : out std_logic_vector(7 downto 0)     -- register contents
    );
end universal_shift_reg;

architecture Behavioral of universal_shift_reg is
    signal reg_i : std_logic_vector(7 downto 0) := (others => '0');
begin

process(clk, rst)
    begin
        if rst = '1' then                                   -- asynchronous reset
            reg_i <= (others => '0');
        elsif rising_edge(clk) then
            case mode is
                when "000" =>                               -- hold
                    null;
                when "001" =>                               -- parallel load
                    reg_i <= data_in;
                when "010" =>                               -- shift-left logical
                    reg_i(7 downto 1) <= reg_i(6 downto 0);
                    reg_i(0)           <= ser_in_right;
                when "011" =>                               -- shift-right logical
                    reg_i(6 downto 0) <= reg_i(7 downto 1);
                    reg_i(7)           <= ser_in_left;
                when "100" =>                               -- rotate left
                    reg_i <= reg_i(6 downto 0) & reg_i(7);
                when "101" =>                               -- rotate right
                    reg_i <= reg_i(0) & reg_i(7 downto 1);
                when "110" =>                               -- arithmetic shift-left
                    reg_i(7 downto 1) <= reg_i(6 downto 0);
                    reg_i(0)           <= '0';
                when others =>                              -- "111": arithmetic shift-right
                    reg_i(6 downto 0) <= reg_i(7 downto 1);
                    reg_i(7)           <= reg_i(7);         -- sign-extend
            end case;
        end if;
    end process;

    q <= reg_i;

end Behavioral;

