library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_Digit_Adder is
  Port (
    A     : in  STD_LOGIC_VECTOR (3 downto 0);
    B     : in  STD_LOGIC_VECTOR (3 downto 0);
    Cin   : in  STD_LOGIC;
    Sum   : out STD_LOGIC_VECTOR (3 downto 0);
    Cout  : out STD_LOGIC                     
  );
end BCD_Digit_Adder;

architecture RTL of BCD_Digit_Adder is


  component FA_4bit is
    Port (
      A    : in  STD_LOGIC_VECTOR(3 downto 0);
      B    : in  STD_LOGIC_VECTOR(3 downto 0);
      Cin  : in  STD_LOGIC;
      Sum  : out STD_LOGIC_VECTOR(3 downto 0);
      Cout : out STD_LOGIC
    );
  end component;


  signal bin_sum4  : STD_LOGIC_VECTOR(3 downto 0);  -- raw 4-bit sum
  signal carry_tmp : STD_LOGIC;                     -- raw carry from FA_4bit
  signal bin_sum   : UNSIGNED(4 downto 0);          -- 5-bit unsigned (carry & sum)
  signal corr_sum  : UNSIGNED(4 downto 0);          -- corrected BCD value
begin

-- generic 4 bit full adder

  U_FA : FA_4bit
    port map (
      A    => A,
      B    => B,
      Cin  => Cin,
      Sum  => bin_sum4,
      Cout => carry_tmp
    );

  -- convert to 5 bit 
  bin_sum <= UNSIGNED(carry_tmp & bin_sum4);


  process(bin_sum)
  begin
    if (bin_sum > 9) then
      corr_sum <= bin_sum + 6;    -- 6 = 00110
    else
      corr_sum <= bin_sum;
    end if;
  end process;


  Sum  <= STD_LOGIC_VECTOR(corr_sum(3 downto 0));
  Cout <= corr_sum(4);
end RTL;
