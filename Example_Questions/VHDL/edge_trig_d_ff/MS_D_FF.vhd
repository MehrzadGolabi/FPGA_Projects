----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:04 05/01/2025 
-- Design Name: 
-- Module Name:    MS_D_FF - Behavioral 
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

entity MS_D_FF is
 port ( D      : in  std_logic;
        clk    : in  std_logic;
        Q      : out std_logic;
        Q_bar  : out std_logic);
end MS_D_FF;

architecture Behavioral of MS_D_FF is

    signal clk_n          : std_logic;
    signal qm, qm_bar     : std_logic;   -- master outputs
    signal sm, rm, ss, rs : std_logic;   

	COMPONENT D_FF
	PORT(
		D : IN std_logic;
		clk : IN std_logic;          
		Q : OUT std_logic;
		Q_bar : OUT std_logic;
		S : OUT std_logic;
		R : OUT std_logic
		);
	END COMPONENT;

begin

clk_n <= not clk;
    master : entity work.D_FF
        port map (
            D      => D,
            Q      => qm,
            Q_bar  => qm_bar,
            clk    => clk_n,             
            S      => sm,
            R      => rm
        );

    slave : entity work.D_FF
        port map (
            D      => qm,
            Q      => Q,
            Q_bar  => Q_bar,
            clk    => clk,               
            S      => ss,
            R      => rs
        );

end Behavioral;

