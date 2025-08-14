----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:23 04/21/2025 
-- Design Name: 
-- Module Name:    mux4 - Behavioral 
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

entity mux4 is
generic ( N : integer := 4 );
    port (
        i0  : in  std_logic_vector(N-1 downto 0);
        i1  : in  std_logic_vector(N-1 downto 0);
        i2  : in  std_logic_vector(N-1 downto 0);
        i3  : in  std_logic_vector(N-1 downto 0);
        sel : in  std_logic_vector(1 downto 0);   -- sel = S1 & S0
        y   : out std_logic_vector(N-1 downto 0)
    );
end mux4;

architecture rtl of mux4 is
begin
    with sel select
        y <= i0 when "00",
             i1 when "01",
             i2 when "10",
             i3 when "11",
             (others => 'X') when others;
end architecture;
