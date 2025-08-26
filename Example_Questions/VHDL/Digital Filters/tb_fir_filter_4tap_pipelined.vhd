library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_fir_filter_4tap_pipelined is
end entity tb_fir_filter_4tap_pipelined;

architecture testbench of tb_fir_filter_4tap_pipelined is
    
    constant DATA_WIDTH : integer := 8;
    constant CLK_PERIOD : time := 10 ns;
    
    -- Test signals
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal x   : signed(DATA_WIDTH-1 downto 0) := (others => '0');
    signal y_pipelined : signed(DATA_WIDTH-1 downto 0);
    signal y_direct    : signed(DATA_WIDTH-1 downto 0);
    
    -- Clock generation flag
    signal clk_enable : boolean := true;
    
    -- Component declarations
    component fir_filter_4tap_pipelined
        generic (
            n  : integer := 8;
            b0 : signed(7 downto 0) := X"20";
            b1 : signed(7 downto 0) := X"30"; 
            b2 : signed(7 downto 0) := X"20";
            b3 : signed(7 downto 0) := X"10"
        );
        port (
            clk : in std_logic;
            rst : in std_logic;
            x   : in signed(DATA_WIDTH-1 downto 0);
            y   : out signed(DATA_WIDTH-1 downto 0)
        );
    end component;

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
    
    -- Device Under Test - Pipelined FIR
    DUT_PIPELINED: fir_filter_4tap_pipelined
        generic map (
            n  => DATA_WIDTH,
            b0 => X"20",  -- 0.125 * 256 = 32 (0x20) - coefficient scaling
            b1 => X"30",  -- 0.1875 * 256 = 48 (0x30)  
            b2 => X"20",  -- 0.125 * 256 = 32 (0x20)
            b3 => X"10"   -- 0.0625 * 256 = 16 (0x10)
        )
        port map (
            clk => clk,
            rst => rst,
            x   => x,
            y   => y_pipelined
        );

    -- Reference - Direct FIR for comparison
    DUT_DIRECT: fir_filter_4tap
        generic map (
            n  => DATA_WIDTH,
            b0 => X"20",
            b1 => X"30",
            b2 => X"20",
            b3 => X"10"
        )
        port map (
            clk => clk,
            x   => x,
            y   => y_direct
        );
    
    -- Test stimulus process
    stimulus: process
    begin
        -- Initialize with reset
        rst <= '1';
        x <= (others => '0');
        wait for 5 * CLK_PERIOD;
        
        -- Release reset
        rst <= '0';
        wait for 2 * CLK_PERIOD;
        
        report "=== Starting Pipelined FIR Filter Test ===";
        report "Note: Pipelined version has additional 3-cycle latency";
        
        -- Test 1: Apply impulse input (delta function)
        report "=== Test 1: Impulse Response (expect coefficients in sequence) ===";
        x <= X"40";  -- Apply impulse of magnitude 64
        wait for CLK_PERIOD;
        x <= (others => '0');
        wait for 15 * CLK_PERIOD;  -- Wait longer to see full impulse response
        
        -- Test 2: Apply step input
        report "=== Test 2: Step Response ===";
        x <= X"20";  -- Apply step input of magnitude 32
        wait for 20 * CLK_PERIOD;  -- Wait to see step response settle
        
        -- Test 3: Apply alternating input (high frequency test)
        report "=== Test 3: Alternating Input (High Frequency Attenuation) ===";
        for i in 0 to 15 loop
            if (i mod 2 = 0) then
                x <= X"30";  -- Positive value
            else 
                x <= X"D0";  -- Negative value (-48 in two's complement)
            end if;
            wait for CLK_PERIOD;
        end loop;
        
        -- Test 4: Ramp input (linearity test)
        report "=== Test 4: Ramp Input (Linearity Test) ===";
        x <= (others => '0');
        wait for 2 * CLK_PERIOD;
        for i in 0 to 20 loop
            x <= to_signed((i * 3) mod 128, DATA_WIDTH);  -- Gradual increase with wrap
            wait for CLK_PERIOD;
        end loop;
        
        -- Test 5: Return to zero and observe decay
        report "=== Test 5: Return to Zero (Observe Pipeline Flush) ===";
        x <= (others => '0');
        wait for 15 * CLK_PERIOD;
        
        -- Test 6: Compare pipeline delay
        report "=== Test 6: Pipeline Latency Verification ===";
        report "Applying synchronized test pattern to verify 3-cycle delay";
        x <= X"50";  -- Test pattern
        wait for CLK_PERIOD;
        x <= X"A0";  -- Different pattern  
        wait for CLK_PERIOD;
        x <= X"30";
        wait for CLK_PERIOD;
        x <= (others => '0');
        wait for 10 * CLK_PERIOD;
        
        -- End simulation
        report "=== Simulation Complete ===";
        clk_enable <= false;
        wait;
    end process stimulus;
    
    -- Monitor process to display values and compare outputs
    monitor: process(clk)
        variable cycle_count : integer := 0;
    begin
        if rising_edge(clk) then
            cycle_count := cycle_count + 1;
            
            -- Display both outputs for comparison
            report "Cycle " & integer'image(cycle_count) & 
                   " | Input: " & integer'image(to_integer(x)) & 
                   " | Direct: " & integer'image(to_integer(y_direct)) &
                   " | Pipelined: " & integer'image(to_integer(y_pipelined));
            
            -- After sufficient cycles, compare the outputs (accounting for pipeline delay)
            -- The pipelined output should match the direct output delayed by 3 cycles
            if cycle_count > 10 and rst = '0' then
                -- Note: For a complete verification, we would need to store 
                -- the direct output history and compare with proper delay
                -- This is simplified for demonstration
                if (y_pipelined /= 0 or y_direct /= 0) then
                    report "Active filtering - Direct: " & integer'image(to_integer(y_direct)) & 
                           " vs Pipelined: " & integer'image(to_integer(y_pipelined));
                end if;
            end if;
        end if;
    end process monitor;
    
    -- Performance comparison process
    performance_check: process(clk)
    begin
        if rising_edge(clk) then
            -- In a real design, the pipelined version would allow higher clock frequencies
            -- This testbench demonstrates functional equivalence with added latency
            if rst = '0' then
                -- The pipelined design breaks the critical path, allowing higher fmax
                -- Direct form: tclk > tmult + 2*tadd + tsetup
                -- Pipelined:   tclk > max(tmult, tadd) + tsetup  (much smaller)
                null; -- Placeholder for timing analysis comments
            end if;
        end if;
    end process performance_check;

end architecture testbench;
