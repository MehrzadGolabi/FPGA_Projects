----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:56 05/01/2025 
-- Design Name: 
-- Module Name:    D_FF - Behavioral 
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

entity D_FF is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_bar : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : out  STD_LOGIC;
           R : out  STD_LOGIC);
end D_FF;

architecture structural of D_FF is

	signal S_int, R_int, Q_int, Qb_int : std_logic;

begin

    S_int <= D and clk;
    R_int <= (not D) and clk;

    Q_int  <= not (R_int or Qb_int);
    Qb_int <= not (S_int or Q_int);

    Q      <= Q_int;
    Q_bar  <= Qb_int;
    S      <= S_int;
    R      <= R_int;

end structural;

