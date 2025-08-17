library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_low_pass_filter is
end entity tb_low_pass_filter;

architecture testbench of tb_low_pass_filter is
    signal clk : std_logic := '0';
    signal x : signed (7 downto 0):= X"00";
    signal y : signed (7 downto 0):= X"00";
    signal y1: signed (7 downto 0):= X"00";
    signal yd: signed (7 downto 0):= X"00";
    signal yd2: signed (7 downto 0):= X"00";
    signal x2: signed (7 downto 0):= X"00";

    component zsum
    generic (
        n : integer := 8
    );
    port (
        zin1 : in signed(n-1 downto 0);
        zin2 : in signed(n-1 downto 0);
        zout : out signed(n-1 downto 0)
    );
    end component;

    component zdiff
    generic (
        n : integer := 8
    );
    port (
        zin1 : in signed(n-1 downto 0);
        zin2 : in signed(n-1 downto 0);
        zout : out signed(n-1 downto 0)
    );
    end component;

    component zdiv2
    generic (
        n : integer := 8
    );
    port (
        zin  : in signed(n-1 downto 0);
        zout : out signed(n-1 downto 0)
    );
    end component;

    component zdelay
    generic (
        n : integer := 8
    );
    port (
        clk  : in std_logic;
        zin  : in signed(n-1 downto 0);
        zout : out signed(n-1 downto 0)
    );
    end component;

begin

    clk <= not clk after 1 us;

    GAIN1 : zdiv2 generic map (8) port map (x, x2);
    GAIN2 : zdiv2 generic map (8) port map (yd, yd2);
    SUM1  : zsum  generic map (8) port map (x2, yd2, y);
    D1    : zdelay generic map (8) port map (clk, y, yd);

    x <= X"00", X"0F" after 10 us;

end architecture testbench;
