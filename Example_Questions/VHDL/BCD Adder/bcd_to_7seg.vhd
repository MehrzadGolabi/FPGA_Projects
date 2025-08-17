library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_to_7Segment is
    Port ( 
        BCD_in : in STD_LOGIC_VECTOR (3 downto 0);  
        SEG_out : out STD_LOGIC_VECTOR (6 downto 0) 
    );
end BCD_to_7Segment;

architecture Behavioral of BCD_to_7Segment is
begin
    process(BCD_in)
    begin
        case BCD_in is
            when "0000" => SEG_out <= "0000001"; -- 0
            
            when "0001" => SEG_out <= "1001111"; -- 1
            
            when "0010" => SEG_out <= "0010010"; -- 2
            
            when "0011" => SEG_out <= "0000110"; -- 3
            
            when "0100" => SEG_out <= "1001100"; -- 4
            
            when "0101" => SEG_out <= "0100100"; -- 5
            
            when "0110" => SEG_out <= "0100000"; -- 6
            
            when "0111" => SEG_out <= "0001111"; -- 7
            
            when "1000" => SEG_out <= "0000000"; -- 8
            
            when "1001" => SEG_out <= "0000100"; -- 9
            
            when others => SEG_out <= "1111111"; -- 
        end case;
    end process;
end Behavioral;

-- =======================================================
-- Architecture 2: Using With-Select Statement
-- =======================================================

architecture WithSelect of BCD_to_7Segment is
begin
    with BCD_in select
        SEG_out <= "0000001" when "0000",  
                   "1001111" when "0001",  
                   "0010010" when "0010",  
                   "0000110" when "0011",  
                   "1001100" when "0100",  
                   "0100100" when "0101",  
                   "0100000" when "0110",  
                   "0001111" when "0111",  
                   "0000000" when "1000",  
                   "0000100" when "1001",  
                   "1111111" when others;  
end WithSelect;

-- =======================================================
-- TestBench
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