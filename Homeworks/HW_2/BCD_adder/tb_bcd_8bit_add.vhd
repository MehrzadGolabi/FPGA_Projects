library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench is
end testbench;

architecture behavior of testbench is


  component BCD_Digit_Adder
    port(
      A    : in  std_logic_vector(3 downto 0);
      B    : in  std_logic_vector(3 downto 0);
      Cin  : in  std_logic;
      Sum  : out std_logic_vector(3 downto 0);
      Cout : out std_logic
    );
  end component;


  signal A_tb, B_tb : std_logic_vector(3 downto 0);
  signal Cin_tb     : std_logic;
  signal Sum_tb     : std_logic_vector(3 downto 0);
  signal Cout_tb    : std_logic;

begin

  uut : BCD_Digit_Adder
    port map (
      A    => A_tb,
      B    => B_tb,
      Cin  => Cin_tb,
      Sum  => Sum_tb,
      Cout => Cout_tb
    );


	--40 02 49 04 9

  tb : process
  begin

    A_tb   <= "0100";  -- 4
    B_tb   <= "0000";  -- 0
    Cin_tb <= '0'; -- 0
    wait for 50 ns; -- 4


    A_tb   <= "0000";  -- 0
    B_tb   <= "0010";  -- 2
    Cin_tb <= '0'; -- 0
    wait for 50 ns; --2


    A_tb   <= "0100";  -- 4
    B_tb   <= "1001";  -- 9
    Cin_tb <= '1'; -- 1
    wait for 50 ns; -- 14 

    A_tb   <= "0000";  -- 0
    B_tb   <= "0100";  -- 4
    Cin_tb <= '1'; -- 1 
    wait for 50 ns; -- 5
	 
	 A_tb   <= "1001";  -- 9
    B_tb   <= "0000";  -- 0
    Cin_tb <= '1'; -- 1
    wait for 50 ns; -- 10
    
    wait;  
  end process tb;

end behavior;
