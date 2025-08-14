library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Entity اصلی شمارنده با کلید
entity Button_Counter_7Seg is
    Port ( 
        clk : in STD_LOGIC;                           -- کلاک سیستم
        reset : in STD_LOGIC;                         -- Reset فعال بالا
        button : in STD_LOGIC;                        -- کلید فشاری (pull-up)
        seg_out : out STD_LOGIC_VECTOR (6 downto 0); -- خروجی 7-segment
        anode : out STD_LOGIC_VECTOR (3 downto 0)    -- کنترل anodes (اختیاری)
    );
end Button_Counter_7Seg;

architecture Behavioral of Button_Counter_7Seg is
    
    -- Component declaration برای مبدل BCD به 7-segment
    component BCD_to_7Segment
        Port ( 
            BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
            SEG_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    -- Signals داخلی
    signal button_sync : STD_LOGIC_VECTOR(2 downto 0) := "111";  -- سینک‌کننده کلید
    signal button_edge : STD_LOGIC := '0';                       -- تشخیص یال منفی
    signal counter : INTEGER range 0 to 9 := 0;                 -- شمارنده 0 تا 9
    signal bcd_value : STD_LOGIC_VECTOR(3 downto 0);            -- مقدار BCD برای نمایش
    
    -- Debounce signals
    signal debounce_counter : INTEGER range 0 to 999999 := 0;   -- شمارنده debounce
    signal button_stable : STD_LOGIC := '1';                    -- کلید پایدار
    signal button_prev : STD_LOGIC := '1';                      -- حالت قبلی کلید
    
    -- فرکانس کلاک 50MHz فرض می‌کنیم، debounce time = 20ms
    constant DEBOUNCE_TIME : INTEGER := 1000000; -- 20ms در 50MHz

begin
    
    -- فرآیند Debouncing و تشخیص یال منفی کلید
    debounce_process: process(clk, reset)
    begin
        if reset = '1' then
            button_sync <= "111";
            button_edge <= '0';
            debounce_counter <= 0;
            button_stable <= '1';
            button_prev <= '1';
            
        elsif rising_edge(clk) then
            -- سینک کردن کلید با کلاک
            button_sync <= button_sync(1 downto 0) & button;
            
            -- Debouncing logic
            if button_sync(2) = button_sync(1) then
                if debounce_counter < DEBOUNCE_TIME then
                    debounce_counter <= debounce_counter + 1;
                else
                    button_stable <= button_sync(2);
                    debounce_counter <= 0;
                end if;
            else
                debounce_counter <= 0;
            end if;
            
            -- تشخیص یال منفی (فشردن کلید در pull-up)
            button_prev <= button_stable;
            if button_prev = '1' and button_stable = '0' then
                button_edge <= '1';
            else
                button_edge <= '0';
            end if;
        end if;
    end process;
    
    -- فرآیند شمارش
    counter_process: process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            
        elsif rising_edge(clk) then
            if button_edge = '1' then
                if counter = 9 then
                    counter <= 0;  -- Reset به 0 بعد از 9
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    -- تبدیل counter به BCD
    bcd_value <= std_logic_vector(to_unsigned(counter, 4));
    
    -- اتصال به کامپوننت BCD به 7-segment
    BCD_to_7Seg_inst: BCD_to_7Segment 
        Port Map (
            BCD_in => bcd_value,
            SEG_out => seg_out
        );
    
    -- کنترل anode ها (همه فعال برای یک digit)
    anode <= "1110"; -- فقط اولین digit فعال

end Behavioral;

-- =======================================================
-- نسخه ساده‌تر بدون Debouncing (برای شبیه‌سازی)
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Simple_Button_Counter is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        button : in STD_LOGIC;
        seg_out : out STD_LOGIC_VECTOR (6 downto 0)
    );
end Simple_Button_Counter;

architecture Simple of Simple_Button_Counter is
    
    component BCD_to_7Segment
        Port ( 
            BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
            SEG_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    signal button_reg : STD_LOGIC_VECTOR(1 downto 0) := "11";
    signal counter : INTEGER range 0 to 9 := 0;
    signal bcd_value : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    
    process(clk, reset)
    begin
        if reset = '1' then
            button_reg <= "11";
            counter <= 0;
            
        elsif rising_edge(clk) then
            -- سینک کردن کلید
            button_reg <= button_reg(0) & button;
            
            -- تشخیص یال منفی (فشردن کلید)
            if button_reg = "10" then  -- یال منفی
                if counter = 9 then
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    -- تبدیل به BCD
    bcd_value <= std_logic_vector(to_unsigned(counter, 4));
    
    -- اتصال به مبدل 7-segment
    BCD_7Seg: BCD_to_7Segment 
        Port Map (
            BCD_in => bcd_value,
            SEG_out => seg_out
        );
        
end Simple;

-- =======================================================
-- TestBench برای آزمایش
-- =======================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Button_Counter_TB is
end Button_Counter_TB;

architecture Behavioral of Button_Counter_TB is
    
    component Simple_Button_Counter
        Port ( 
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            button : in STD_LOGIC;
            seg_out : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    -- Test signals
    signal clk_test : STD_LOGIC := '0';
    signal reset_test : STD_LOGIC := '0';
    signal button_test : STD_LOGIC := '1';  -- Pull-up: حالت اولیه 1
    signal seg_test : STD_LOGIC_VECTOR (6 downto 0);
    
    -- کلاک 50MHz
    constant clk_period : time := 20 ns;
    
begin
    
    -- اتصال به UUT
    UUT: Simple_Button_Counter 
        Port Map (
            clk => clk_test,
            reset => reset_test,
            button => button_test,
            seg_out => seg_test
        );
    
    -- تولید کلاک
    clk_process: process
    begin
        clk_test <= '0';
        wait for clk_period/2;
        clk_test <= '1';
        wait for clk_period/2;
    end process;
    
    -- فرآیند آزمایش
    test_process: process
    begin
        -- Reset اولیه
        reset_test <= '1';
        wait for 100 ns;
        reset_test <= '0';
        wait for 100 ns;
        
        -- شبیه‌سازی فشردن کلید 12 بار
        for i in 1 to 12 loop
            -- فشردن کلید (pull-up: 1->0)
            button_test <= '0';
            wait for 50 ns;
            
            -- رها کردن کلید (0->1)
            button_test <= '1';
            wait for 100 ns;
            
            -- تاخیر بین فشردن کلیدها
            wait for 200 ns;
        end loop;
        
        wait;
    end process;
    
end Behavioral;