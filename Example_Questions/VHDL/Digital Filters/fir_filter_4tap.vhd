library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_filter_4tap is
    generic (
        n : integer := 8;           -- Data width
        b0 : signed(7 downto 0) := X"20";  -- Coefficient 0 (1/4 in Q4.4)
        b1 : signed(7 downto 0) := X"30";  -- Coefficient 1 (3/8 in Q4.4) 
        b2 : signed(7 downto 0) := X"20";  -- Coefficient 2 (1/4 in Q4.4)
        b3 : signed(7 downto 0) := X"10"   -- Coefficient 3 (1/8 in Q4.4)
    );
    port (
        clk : in std_logic;
        x   : in signed(n-1 downto 0);     -- Input X[n]
        y   : out signed(n-1 downto 0)     -- Output Y[n]
    );
end entity fir_filter_4tap;

architecture structural of fir_filter_4tap is
    
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
    
    -- Internal signals for delay line
    signal x_d1 : signed(n-1 downto 0);  -- X[n-1]
    signal x_d2 : signed(n-1 downto 0);  -- X[n-2] 
    signal x_d3 : signed(n-1 downto 0);  -- X[n-3]
    
    -- Internal signals for coefficient multiplication
    signal y0 : signed(n-1 downto 0);    -- b0 * X[n]
    signal y1 : signed(n-1 downto 0);    -- b1 * X[n-1]
    signal y2 : signed(n-1 downto 0);    -- b2 * X[n-2]
    signal y3 : signed(n-1 downto 0);    -- b3 * X[n-3]
    
    -- Internal signals for summation tree
    signal sum01 : signed(n-1 downto 0); -- y0 + y1
    signal sum23 : signed(n-1 downto 0); -- y2 + y3

begin

    -- Delay line: Create Z^-1 delay elements
    DELAY1 : zdelay generic map(n) port map(clk, x, x_d1);      -- X[n-1]
    DELAY2 : zdelay generic map(n) port map(clk, x_d1, x_d2);   -- X[n-2] 
    DELAY3 : zdelay generic map(n) port map(clk, x_d2, x_d3);   -- X[n-3]
    
    -- Coefficient multipliers
    MULT0 : zgain generic map(n, b0) port map(x, y0);       -- b0 * X[n]
    MULT1 : zgain generic map(n, b1) port map(x_d1, y1);    -- b1 * X[n-1]
    MULT2 : zgain generic map(n, b2) port map(x_d2, y2);    -- b2 * X[n-2]
    MULT3 : zgain generic map(n, b3) port map(x_d3, y3);    -- b3 * X[n-3]
    
    -- Summation tree (cascaded adders)
    SUM_01 : zsum generic map(n) port map(y0, y1, sum01);    -- (b0*X[n] + b1*X[n-1])
    SUM_23 : zsum generic map(n) port map(y2, y3, sum23);    -- (b2*X[n-2] + b3*X[n-3])
    SUM_FINAL : zsum generic map(n) port map(sum01, sum23, y); -- Final output Y[n]
    
end architecture structural;
