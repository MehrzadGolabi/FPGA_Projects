library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_filter_4tap_pipelined is
    generic (
        n : integer := 8;           -- Data width
        b0 : signed(7 downto 0) := X"20";  -- Coefficient 0 (1/4 in Q4.4)
        b1 : signed(7 downto 0) := X"30";  -- Coefficient 1 (3/8 in Q4.4) 
        b2 : signed(7 downto 0) := X"20";  -- Coefficient 2 (1/4 in Q4.4)
        b3 : signed(7 downto 0) := X"10"   -- Coefficient 3 (1/8 in Q4.4)
    );
    port (
        clk : in std_logic;
        rst : in std_logic;                  -- Reset signal for pipeline registers
        x   : in signed(n-1 downto 0);      -- Input X[n]
        y   : out signed(n-1 downto 0)      -- Output Y[n] (pipelined)
    );
end entity fir_filter_4tap_pipelined;

architecture pipelined of fir_filter_4tap_pipelined is
    
    -- Component declarations
    component zdelay
        generic (n : integer := 8);
        port (
            clk  : in std_logic;
            zin  : in signed(n-1 downto 0);
            zout : out signed(n-1 downto 0)
        );
    end component;
    
    component zgain
        generic (
            n    : integer := 8;
            gain : signed
        );
        port (
            zin  : in signed(n-1 downto 0);
            zout : out signed(n-1 downto 0)
        );
    end component;
    
    component zsum
        generic (n : integer := 8);
        port (
            zin1 : in signed(n-1 downto 0);
            zin2 : in signed(n-1 downto 0);
            zout : out signed(n-1 downto 0)
        );
    end component;
    
    -- Input delay line signals
    signal x_d1 : signed(n-1 downto 0);     -- X[n-1]
    signal x_d2 : signed(n-1 downto 0);     -- X[n-2]
    signal x_d3 : signed(n-1 downto 0);     -- X[n-3]
    
    -- Multiplier outputs (combinatorial)
    signal y0_comb : signed(n-1 downto 0);  -- b0 * X[n] (combinatorial)
    signal y1_comb : signed(n-1 downto 0);  -- b1 * X[n-1] (combinatorial)
    signal y2_comb : signed(n-1 downto 0);  -- b2 * X[n-2] (combinatorial)
    signal y3_comb : signed(n-1 downto 0);  -- b3 * X[n-3] (combinatorial)
    
    -- Pipeline stage 1: Multiplier outputs (registered)
    signal y0_reg : signed(n-1 downto 0);   -- b0 * X[n] (pipelined)
    signal y1_reg : signed(n-1 downto 0);   -- b1 * X[n-1] (pipelined)
    signal y2_reg : signed(n-1 downto 0);   -- b2 * X[n-2] (pipelined)
    signal y3_reg : signed(n-1 downto 0);   -- b3 * X[n-3] (pipelined)
    
    -- First level adder outputs (combinatorial)
    signal sum01_comb : signed(n-1 downto 0); -- y0 + y1 (combinatorial)
    signal sum23_comb : signed(n-1 downto 0); -- y2 + y3 (combinatorial)
    
    -- Pipeline stage 2: First level adder outputs (registered)
    signal sum01_reg : signed(n-1 downto 0);  -- y0 + y1 (pipelined)
    signal sum23_reg : signed(n-1 downto 0);  -- y2 + y3 (pipelined)
    
    -- Final adder output (combinatorial)
    signal y_comb : signed(n-1 downto 0);     -- Final sum (combinatorial)

begin

    -- Input delay line: Create X[n-1], X[n-2], X[n-3]
    DELAY1 : zdelay generic map(n) port map(clk, x, x_d1);        -- X[n-1]
    DELAY2 : zdelay generic map(n) port map(clk, x_d1, x_d2);     -- X[n-2] 
    DELAY3 : zdelay generic map(n) port map(clk, x_d2, x_d3);     -- X[n-3]
    
    -- Coefficient multipliers (combinatorial)
    MULT0 : zgain generic map(n, b0) port map(x, y0_comb);        -- b0 * X[n]
    MULT1 : zgain generic map(n, b1) port map(x_d1, y1_comb);     -- b1 * X[n-1]
    MULT2 : zgain generic map(n, b2) port map(x_d2, y2_comb);     -- b2 * X[n-2]
    MULT3 : zgain generic map(n, b3) port map(x_d3, y3_comb);     -- b3 * X[n-3]
    
    -- Pipeline Stage 1: Register multiplier outputs
    PIPE1: process(clk, rst)
    begin
        if rst = '1' then
            y0_reg <= (others => '0');
            y1_reg <= (others => '0');
            y2_reg <= (others => '0');
            y3_reg <= (others => '0');
        elsif rising_edge(clk) then
            y0_reg <= y0_comb;
            y1_reg <= y1_comb;
            y2_reg <= y2_comb;
            y3_reg <= y3_comb;
        end if;
    end process PIPE1;
    
    -- First level adders (combinatorial)
    SUM_01 : zsum generic map(n) port map(y0_reg, y1_reg, sum01_comb);  -- (b0*X[n] + b1*X[n-1])
    SUM_23 : zsum generic map(n) port map(y2_reg, y3_reg, sum23_comb);  -- (b2*X[n-2] + b3*X[n-3])
    
    -- Pipeline Stage 2: Register first level adder outputs  
    PIPE2: process(clk, rst)
    begin
        if rst = '1' then
            sum01_reg <= (others => '0');
            sum23_reg <= (others => '0');
        elsif rising_edge(clk) then
            sum01_reg <= sum01_comb;
            sum23_reg <= sum23_comb;
        end if;
    end process PIPE2;
    
    -- Final adder (combinatorial)
    SUM_FINAL : zsum generic map(n) port map(sum01_reg, sum23_reg, y_comb);
    
    -- Pipeline Stage 3: Register final output
    PIPE3: process(clk, rst)
    begin
        if rst = '1' then
            y <= (others => '0');
        elsif rising_edge(clk) then
            y <= y_comb;
        end if;
    end process PIPE3;
    
end architecture pipelined;
