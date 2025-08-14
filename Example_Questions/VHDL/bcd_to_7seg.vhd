library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity برای مبدل BCD به 7-segment
entity BCD_to_7Segment is
    Port ( 
        BCD_in : in STD_LOGIC_VECTOR (3 downto 0);  -- ورودی BCD (4 بیت)
        SEG_out : out STD_LOGIC_VECTOR (6 downto 0) -- خروجی 7-segment (a,b,c,d,e,f,g)
    );
end BCD_to_7Segment;

-- Architecture 1: استفاده از Case Statement در Process
architecture Behavioral of BCD_to_7Segment is
begin
    -- فرآیند تبدیل BCD به 7-segment
    process(BCD_in)
    begin
        case BCD_in is
            -- نمایش عدد 0: روشن کردن segments a,b,c,d,e,f
            when "0000" => SEG_out <= "0000001"; -- 0
            
            -- نمایش عدد 1: روشن کردن segments b,c
            when "0001" => SEG_out <= "1001111"; -- 1
            
            -- نمایش عدد 2: روشن کردن segments a,b,g,e,d
            when "0010" => SEG_out <= "0010010"; -- 2
            
            -- نمایش عدد 3: روشن کردن segments a,b,g,c,d
            when "0011" => SEG_out <= "0000110"; -- 3
            
            -- نمایش عدد 4: روشن کردن segments f,g,b,c
            when "0100" => SEG_out <= "1001100"; -- 4
            
            -- نمایش عدد 5: روشن کردن segments a,f,g,c,d
            when "0101" => SEG_out <= "0100100"; -- 5
            
            -- نمایش عدد 6: روشن کردن segments a,f,g,e,d,c
            when "0110" => SEG_out <= "0100000"; -- 6
            
            -- نمایش عدد 7: روشن کردن segments a,b,c
            when "0111" => SEG_out <= "0001111"; -- 7
            
            -- نمایش عدد 8: روشن کردن همه segments
            when "1000" => SEG_out <= "0000000"; -- 8
            
            -- نمایش عدد 9: روشن کردن segments a,b,c,d,f,g
            when "1001" => SEG_out <= "0000100"; -- 9
            
            -- برای ورودی‌های غیرمجاز، همه segments خاموش
            when others => SEG_out <= "1111111"; -- خاموش
        end case;
    end process;
end Behavioral;

-- =======================================================
-- Architecture 2: استفاده از With-Select Statement
-- =======================================================

architecture WithSelect of BCD_to_7Segment is
begin
    -- استفاده از with-select برای تبدیل مستقیم
    with BCD_in select
        SEG_out <= "0000001" when "0000",  -- 0: segments a,b,c,d,e,f روشن
                   "1001111" when "0001",  -- 1: segments b,c روشن
                   "0010010" when "0010",  -- 2: segments a,b,g,e,d روشن
                   "0000110" when "0011",  -- 3: segments a,b,g,c,d روشن
                   "1001100" when "0100",  -- 4: segments f,g,b,c روشن
                   "0100100" when "0101",  -- 5: segments a,f,g,c,d روشن
                   "0100000" when "0110",  -- 6: segments a,f,g,e,d,c روشن
                   "0001111" when "0111",  -- 7: segments a,b,c روشن
                   "0000000" when "1000",  -- 8: همه segments روشن
                   "0000100" when "1001",  -- 9: segments a,b,c,d,f,g روشن
                   "1111111" when others;  -- ورودی غیرمجاز: همه خاموش
end WithSelect;

-- =======================================================
-- TestBench برای آزمایش مبدل
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_to_7Segment_TB is
end BCD_to_7Segment_TB;

architecture Behavioral of BCD_to_7Segment_TB is
    -- Component declaration
    component BCD_to_7Segment
        Port ( 
            BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
            SEG_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    -- Signals for testing
    signal BCD_test : STD_LOGIC_VECTOR (3 downto 0);
    signal SEG_test : STD_LOGIC_VECTOR (6 downto 0);
    
begin
    -- Instantiate the Unit Under Test (UUT) - Version 1
    UUT1: entity work.BCD_to_7Segment(Behavioral)
        Port Map (
            BCD_in => BCD_test,
            SEG_out => SEG_test
        );
    
    -- برای آزمایش architecture دوم، comment را برداشته و architecture اول را comment کنید
    -- UUT2: entity work.BCD_to_7Segment(WithSelect)
    --     Port Map (
    --         BCD_in => BCD_test,
    --         SEG_out => SEG_test
    --     );
    
    -- Test process
    test_process: process
    begin
        -- آزمایش تمام اعداد 0 تا 9
        for i in 0 to 9 loop
            case i is
                when 0 => BCD_test <= "0000";
                when 1 => BCD_test <= "0001";
                when 2 => BCD_test <= "0010";
                when 3 => BCD_test <= "0011";
                when 4 => BCD_test <= "0100";
                when 5 => BCD_test <= "0101";
                when 6 => BCD_test <= "0110";
                when 7 => BCD_test <= "0111";
                when 8 => BCD_test <= "1000";
                when 9 => BCD_test <= "1001";
                when others => BCD_test <= "0000";
            end case;
            
            wait for 10 ns;
        end loop;
        
        -- آزمایش ورودی غیرمجاز
        BCD_test <= "1010"; -- A
        wait for 10 ns;
        BCD_test <= "1111"; -- F
        wait for 10 ns;
        
        wait;
    end process;
end Behavioral;