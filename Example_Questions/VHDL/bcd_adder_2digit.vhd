library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- جمع‌کننده BCD تک رقمی (کامپوننت پایه)
entity BCD_Adder_Single is
    Port ( 
        A : in STD_LOGIC_VECTOR (3 downto 0);      -- رقم اول BCD
        B : in STD_LOGIC_VECTOR (3 downto 0);      -- رقم دوم BCD  
        Cin : in STD_LOGIC;                        -- Carry ورودی
        Sum : out STD_LOGIC_VECTOR (3 downto 0);   -- مجموع BCD
        Cout : out STD_LOGIC                       -- Carry خروجی
    );
end BCD_Adder_Single;

architecture Behavioral of BCD_Adder_Single is
    signal temp_sum : STD_LOGIC_VECTOR(4 downto 0);
    signal binary_sum : INTEGER;
    signal correction_needed : STD_LOGIC;
begin
    
    -- جمع باینری اولیه
    binary_sum <= to_integer(unsigned(A)) + to_integer(unsigned(B)) + to_integer(std_logic_vector'("" & Cin));
    temp_sum <= std_logic_vector(to_unsigned(binary_sum, 5));
    
    -- بررسی نیاز به تصحیح BCD
    -- اگر نتیجه > 9 یا carry وجود داشت، باید 6 اضافه کنیم
    correction_needed <= '1' when (binary_sum > 9) else '0';
    
    process(temp_sum, correction_needed, binary_sum)
    begin
        if correction_needed = '1' then
            -- تصحیح BCD: اضافه کردن 6
            Sum <= std_logic_vector(to_unsigned((binary_sum + 6) mod 16, 4));
            Cout <= '1';
        else
            Sum <= temp_sum(3 downto 0);
            Cout <= '0';
        end if;
    end process;
    
end Behavioral;

-- =======================================================
-- جمع‌کننده BCD دو رقمی اصلی
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_2Digit is
    Port ( 
        -- ورودی عدد اول (دو رقمی)
        A1 : in STD_LOGIC_VECTOR (3 downto 0);     -- رقم یکان A
        A0 : in STD_LOGIC_VECTOR (3 downto 0);     -- رقم دهگان A
        
        -- ورودی عدد دوم (دو رقمی)  
        B1 : in STD_LOGIC_VECTOR (3 downto 0);     -- رقم یکان B
        B0 : in STD_LOGIC_VECTOR (3 downto 0);     -- رقم دهگان B
        
        Cin : in STD_LOGIC;                        -- Carry ورودی
        
        -- خروجی مجموع (دو رقمی)
        Sum1 : out STD_LOGIC_VECTOR (3 downto 0);  -- رقم یکان نتیجه
        Sum0 : out STD_LOGIC_VECTOR (3 downto 0);  -- رقم دهگان نتیجه
        
        Cout : out STD_LOGIC;                      -- Carry خروجی (رقم سوم)
        
        -- خروجی‌های اضافی برای نمایش
        overflow : out STD_LOGIC                   -- نشان‌دهنده سرریز
    );
end BCD_Adder_2Digit;

architecture Structural of BCD_Adder_2Digit is
    
    -- Component declaration
    component BCD_Adder_Single
        Port ( 
            A : in STD_LOGIC_VECTOR (3 downto 0);
            B : in STD_LOGIC_VECTOR (3 downto 0);
            Cin : in STD_LOGIC;
            Sum : out STD_LOGIC_VECTOR (3 downto 0);
            Cout : out STD_LOGIC
        );
    end component;
    
    -- Signal برای اتصال carry بین دو مرحله
    signal carry_intermediate : STD_LOGIC;
    
begin
    
    -- جمع‌کننده رقم یکان (LSB)
    Units_Adder: BCD_Adder_Single 
        Port Map (
            A => A1,
            B => B1,
            Cin => Cin,
            Sum => Sum1,
            Cout => carry_intermediate
        );
    
    -- جمع‌کننده رقم دهگان (MSB)
    Tens_Adder: BCD_Adder_Single 
        Port Map (
            A => A0,
            B => B0,
            Cin => carry_intermediate,
            Sum => Sum0,
            Cout => Cout
        );
    
    -- تشخیص overflow (اگر نتیجه > 99)
    overflow <= Cout;
    
end Structural;

-- =======================================================
-- نسخه کامل با نمایش 7-Segment
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_With_Display is
    Port ( 
        -- ورودی‌های BCD
        A1, A0 : in STD_LOGIC_VECTOR (3 downto 0);  -- عدد اول
        B1, B0 : in STD_LOGIC_VECTOR (3 downto 0);  -- عدد دوم
        Cin : in STD_LOGIC;                         -- Carry ورودی
        
        -- خروجی‌های 7-segment برای نمایش
        seg_A : out STD_LOGIC_VECTOR (13 downto 0); -- نمایش A (دو رقم)
        seg_B : out STD_LOGIC_VECTOR (13 downto 0); -- نمایش B (دو رقم)
        seg_Sum : out STD_LOGIC_VECTOR (20 downto 0); -- نمایش Sum (سه رقم)
        
        -- LED های اضافی
        overflow_led : out STD_LOGIC
    );
end BCD_Adder_With_Display;

architecture Complete of BCD_Adder_With_Display is
    
    -- Components
    component BCD_Adder_2Digit
        Port ( 
            A1, A0, B1, B0 : in STD_LOGIC_VECTOR (3 downto 0);
            Cin : in STD_LOGIC;
            Sum1, Sum0 : out STD_LOGIC_VECTOR (3 downto 0);
            Cout, overflow : out STD_LOGIC
        );
    end component;
    
    component BCD_to_7Segment
        Port ( 
            BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
            SEG_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    -- Signals داخلی
    signal sum_units, sum_tens : STD_LOGIC_VECTOR (3 downto 0);
    signal carry_out, overflow_sig : STD_LOGIC;
    signal hundreds_digit : STD_LOGIC_VECTOR (3 downto 0);
    
begin
    
    -- جمع‌کننده اصلی
    Main_Adder: BCD_Adder_2Digit 
        Port Map (
            A1 => A1, A0 => A0,
            B1 => B1, B0 => B0,
            Cin => Cin,
            Sum1 => sum_units,
            Sum0 => sum_tens,
            Cout => carry_out,
            overflow => overflow_sig
        );
    
    -- تولید رقم صدگان (0 یا 1)
    hundreds_digit <= "0001" when carry_out = '1' else "0000";
    
    -- نمایش عدد A
    Display_A1: BCD_to_7Segment Port Map(A1, seg_A(6 downto 0));   -- یکان A
    Display_A0: BCD_to_7Segment Port Map(A0, seg_A(13 downto 7));  -- دهگان A
    
    -- نمایش عدد B  
    Display_B1: BCD_to_7Segment Port Map(B1, seg_B(6 downto 0));   -- یکان B
    Display_B0: BCD_to_7Segment Port Map(B0, seg_B(13 downto 7));  -- دهگان B
    
    -- نمایش مجموع
    Display_Sum1: BCD_to_7Segment Port Map(sum_units, seg_Sum(6 downto 0));    -- یکان Sum
    Display_Sum0: BCD_to_7Segment Port Map(sum_tens, seg_Sum(13 downto 7));    -- دهگان Sum
    Display_Sum_H: BCD_to_7Segment Port Map(hundreds_digit, seg_Sum(20 downto 14)); -- صدگان Sum
    
    -- LED overflow
    overflow_led <= overflow_sig;
    
end Complete;

-- =======================================================
-- TestBench
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_TB is
end BCD_Adder_TB;

architecture Behavioral of BCD_Adder_TB is
    
    component BCD_Adder_2Digit
        Port ( 
            A1, A0, B1, B0 : in STD_LOGIC_VECTOR (3 downto 0);
            Cin : in STD_LOGIC;
            Sum1, Sum0 : out STD_LOGIC_VECTOR (3 downto 0);
            Cout, overflow : out STD_LOGIC
        );
    end component;
    
    -- Test signals
    signal A1_test, A0_test : STD_LOGIC_VECTOR (3 downto 0);
    signal B1_test, B0_test : STD_LOGIC_VECTOR (3 downto 0);
    signal Cin_test : STD_LOGIC;
    signal Sum1_test, Sum0_test : STD_LOGIC_VECTOR (3 downto 0);
    signal Cout_test, overflow_test : STD_LOGIC;
    
begin
    
    UUT: BCD_Adder_2Digit 
        Port Map (
            A1 => A1_test, A0 => A0_test,
            B1 => B1_test, B0 => B0_test,
            Cin => Cin_test,
            Sum1 => Sum1_test, Sum0 => Sum0_test,
            Cout => Cout_test, overflow => overflow_test
        );
    
    test_process: process
    begin
        -- آزمایش 1: 25 + 34 = 59
        A0_test <= "0010"; A1_test <= "0101"; -- 25
        B0_test <= "0011"; B1_test <= "0100"; -- 34  
        Cin_test <= '0';
        wait for 10 ns;
        
        -- آزمایش 2: 67 + 28 = 95
        A0_test <= "0110"; A1_test <= "0111"; -- 67
        B0_test <= "0010"; B1_test <= "1000"; -- 28
        Cin_test <= '0';
        wait for 10 ns;
        
        -- آزمایش 3: 89 + 45 = 134 (overflow)
        A0_test <= "1000"; A1_test <= "1001"; -- 89
        B0_test <= "0100"; B1_test <= "0101"; -- 45
        Cin_test <= '0';
        wait for 10 ns;
        
        -- آزمایش 4: 99 + 01 + Cin = 101 (carry test)
        A0_test <= "1001"; A1_test <= "1001"; -- 99
        B0_test <= "0000"; B1_test <= "0001"; -- 01
        Cin_test <= '1';  -- با carry
        wait for 10 ns;
        
        wait;
    end process;
    
end Behavioral;