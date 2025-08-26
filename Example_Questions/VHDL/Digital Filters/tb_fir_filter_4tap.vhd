library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_fir_filter_4tap is
end entity tb_fir_filter_4tap;

architecture testbench of tb_fir_filter_4tap is
    
    constant DATA_WIDTH : integer := 8;
    constant CLK_PERIOD : time := 10 ns;
    
    -- Test signals
    signal clk : std_logic := '0';
    signal x   : signed(DATA_WIDTH-1 downto 0) := (others => '0');
    signal y   : signed(DATA_WIDTH-1 downto 0);
    
    -- Clock generation flag
    signal clk_enable : boolean := true;
    
    -- Component declaration
    component fir_filter_4tap
        generic (
            n  : integer := 8;
            b0 : signed(7 downto 0) := X"20";
            b1 : signed(7 downto 0) := X"30"; 
            b2 : signed(7 downto 0) := X"20";
            b3 : signed(7 downto 0) := X"10"
        );
        port (
            clk : in std_logic;
            x   : in signed(DATA_WIDTH-1 downto 0);
            y   : out signed(DATA_WIDTH-1 downto 0)
        );
    end component;

begin

    -- Clock generation
    clk_gen: process
    begin
        while clk_enable loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process clk_gen;
    
    -- Device Under Test (DUT)
    DUT: fir_filter_4tap
        generic map (
            n  => DATA_WIDTH,
            b0 => X"20",  -- 0.125 * 256 = 32 (0x20) - coefficient scaling
            b1 => X"30",  -- 0.1875 * 256 = 48 (0x30)  
            b2 => X"20",  -- 0.125 * 256 = 32 (0x20)
            b3 => X"10"   -- 0.0625 * 256 = 16 (0x10)
        )
        port map (
            clk => clk,
            x   => x,
            y   => y
        );
    
    -- Test stimulus process
    stimulus: process
    begin
        -- Initialize
        x <= (others => '0');
        wait for 5 * CLK_PERIOD;
        
        -- Test 1: Apply impulse input (delta function)
        report "=== Test 1: Impulse Response ===";
        x <= X"40";  -- Apply impulse of magnitude 64
        wait for CLK_PERIOD;
        x <= (others => '0');
        wait for 10 * CLK_PERIOD;  -- Wait to see impulse response
        
        -- Test 2: Apply step input
        report "=== Test 2: Step Response ===";
        x <= X"20";  -- Apply step input of magnitude 32
        wait for 15 * CLK_PERIOD;  -- Wait to see step response
        
        -- Test 3: Apply alternating input
        report "=== Test 3: Alternating Input ===";
        for i in 0 to 10 loop
            if (i mod 2 = 0) then
                x <= X"30";  -- Positive value
            else 
                x <= X"D0";  -- Negative value (-48 in two's complement)
            end if;
            wait for CLK_PERIOD;
        end loop;
        
        -- Test 4: Ramp input
        report "=== Test 4: Ramp Input ===";
        x <= (others => '0');
        wait for 2 * CLK_PERIOD;
        for i in 0 to 15 loop
            x <= to_signed(i * 4, DATA_WIDTH);  -- Gradual increase
            wait for CLK_PERIOD;
        end loop;
        
        -- Test 5: Return to zero and observe decay
        report "=== Test 5: Return to Zero ===";
        x <= (others => '0');
        wait for 10 * CLK_PERIOD;
        
        -- End simulation
        report "=== Simulation Complete ===";
        clk_enable <= false;
        wait;
    end process stimulus;
    
    -- Monitor process to display values
    monitor: process(clk)
    begin
        if rising_edge(clk) then
            report "Time: " & time'image(now) & 
                   " | X: " & integer'image(to_integer(x)) & 
                   " | Y: " & integer'image(to_integer(y));
        end if;
    end process monitor;

end architecture testbench;
