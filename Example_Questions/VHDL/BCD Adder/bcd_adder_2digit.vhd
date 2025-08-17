library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_Adder_Single is
    Port ( 
        A : in STD_LOGIC_VECTOR (3 downto 0);      
        B : in STD_LOGIC_VECTOR (3 downto 0);      
        Cin : in STD_LOGIC;                        
        Sum : out STD_LOGIC_VECTOR (3 downto 0);   
        Cout : out STD_LOGIC                       
    );
end BCD_Adder_Single;

architecture Behavioral of BCD_Adder_Single is
    signal temp_sum : STD_LOGIC_VECTOR(4 downto 0);
    signal binary_sum : INTEGER;
    signal correction_needed : STD_LOGIC;
begin
    
    binary_sum <= to_integer(unsigned(A)) + to_integer(unsigned(B)) + to_integer(std_logic_vector'("" & Cin));
    temp_sum <= std_logic_vector(to_unsigned(binary_sum, 5));

    correction_needed <= '1' when (binary_sum > 9) else '0';
    
    process(temp_sum, correction_needed, binary_sum)
    begin
        if correction_needed = '1' then
            -- BCD correction: adding 6
            Sum <= std_logic_vector(to_unsigned((binary_sum + 6) mod 16, 4));
            Cout <= '1';
        else
            Sum <= temp_sum(3 downto 0);
            Cout <= '0';
        end if;
    end process;
    
end Behavioral;

-- =======================================================
-- Main 2-digit BCD adder
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_2Digit is
    Port ( 
        A1 : in STD_LOGIC_VECTOR (3 downto 0);     
        A0 : in STD_LOGIC_VECTOR (3 downto 0);     
        
        B1 : in STD_LOGIC_VECTOR (3 downto 0);     
        B0 : in STD_LOGIC_VECTOR (3 downto 0);     
        
        Cin : in STD_LOGIC;                        
        
        Sum1 : out STD_LOGIC_VECTOR (3 downto 0);  
        Sum0 : out STD_LOGIC_VECTOR (3 downto 0);  
        
        Cout : out STD_LOGIC;                      
        
        overflow : out STD_LOGIC                   
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
    
    signal carry_intermediate : STD_LOGIC;
    
begin
    
    Units_Adder: BCD_Adder_Single 
        Port Map (
            A => A1,
            B => B1,
            Cin => Cin,
            Sum => Sum1,
            Cout => carry_intermediate
        );
    
    Tens_Adder: BCD_Adder_Single 
        Port Map (
            A => A0,
            B => B0,
            Cin => carry_intermediate,
            Sum => Sum0,
            Cout => Cout
        );
    
    overflow <= Cout;
    
end Structural;

-- =======================================================
-- Complete version with 7-Segment display
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_Adder_With_Display is
    Port ( 
        A1, A0 : in STD_LOGIC_VECTOR (3 downto 0);  
        B1, B0 : in STD_LOGIC_VECTOR (3 downto 0);  
        Cin : in STD_LOGIC;                        
        
        seg_A : out STD_LOGIC_VECTOR (13 downto 0); 
        seg_B : out STD_LOGIC_VECTOR (13 downto 0); 
        seg_Sum : out STD_LOGIC_VECTOR (20 downto 0); 
        
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
    
    signal sum_units, sum_tens : STD_LOGIC_VECTOR (3 downto 0);
    signal carry_out, overflow_sig : STD_LOGIC;
    signal hundreds_digit : STD_LOGIC_VECTOR (3 downto 0);
    
begin
    
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
    
    hundreds_digit <= "0001" when carry_out = '1' else "0000";
    
    Display_A1: BCD_to_7Segment Port Map(A1, seg_A(6 downto 0));  
    Display_A0: BCD_to_7Segment Port Map(A0, seg_A(13 downto 7));  
    
    Display_B1: BCD_to_7Segment Port Map(B1, seg_B(6 downto 0));  
    Display_B0: BCD_to_7Segment Port Map(B0, seg_B(13 downto 7));  
    
    Display_Sum1: BCD_to_7Segment Port Map(sum_units, seg_Sum(6 downto 0));    
    Display_Sum0: BCD_to_7Segment Port Map(sum_tens, seg_Sum(13 downto 7));    
    Display_Sum_H: BCD_to_7Segment Port Map(hundreds_digit, seg_Sum(20 downto 14)); 
    
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
        -- test 1: 25 + 34 = 59
        A0_test <= "0010"; A1_test <= "0101"; -- 25
        B0_test <= "0011"; B1_test <= "0100"; -- 34  
        Cin_test <= '0';
        wait for 10 ns;
        
        -- test 2: 67 + 28 = 95
        A0_test <= "0110"; A1_test <= "0111"; -- 67
        B0_test <= "0010"; B1_test <= "1000"; -- 28
        Cin_test <= '0';
        wait for 10 ns;
        
        -- test 3: 89 + 45 = 134 (overflow)
        A0_test <= "1000"; A1_test <= "1001"; -- 89
        B0_test <= "0100"; B1_test <= "0101"; -- 45
        Cin_test <= '0';
        wait for 10 ns;
        
        -- test 4: 99 + 01 + Cin = 101 (carry test)
        A0_test <= "1001"; A1_test <= "1001"; -- 99
        B0_test <= "0000"; B1_test <= "0001"; -- 01
        Cin_test <= '1';  -- with carry
        wait for 10 ns;
        
        wait;
    end process;
    
end Behavioral;