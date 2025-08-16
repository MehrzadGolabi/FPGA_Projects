library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin

s    <= a xor b xor cin;
cout <= (a and b) or (a and cin) or (b and cin);

end Behavioral;

