----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:48:53 04/21/2025 
-- Design Name: 
-- Module Name:    arith_unit - Behavioral 
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

entity arith_unit is
    port (
        A    : in  std_logic_vector(3 downto 0);
        B    : in  std_logic_vector(3 downto 0);
        S    : in  std_logic_vector(1 downto 0);  -- S1 and S0
        Cin  : in  std_logic;                     -- C_in
        D    : out std_logic_vector(3 downto 0);  -- result
        Cout : out std_logic                      -- carry out
    );
end arith_unit;

architecture rtl of arith_unit is
    signal Y0, Y1, Y2, Y3, Y : std_logic_vector(3 downto 0);
    signal C : std_logic_vector(4 downto 0);
begin
    Y0 <= B;                                  -- direct B
    Y1 <= not B;                              -- B complement
    Y2 <= (others => '0');                    -- constant 0
	 Y3 <= (not B) or std_logic_vector'(3 downto 0 => Cin); --bayad size daghigh chizi ke dare 'or' mishe ro bedonim ya error mide

    mux_y : entity work.mux4
        generic map (N => 4)
        port map (
            i0  => Y0,
            i1  => Y1,
            i2  => Y2,
            i3  => Y3,
            sel => S,
            y   => Y
        );

    C(0) <= Cin;                            

    gen_adder : for i in 0 to 3 generate
        fa_i : entity work.full_adder
            port map (
                a    => A(i),
                b    => Y(i),
                cin  => C(i),
                sum  => D(i),
                cout => C(i + 1)
            );
    end generate;

    Cout <= C(4);
end architecture;