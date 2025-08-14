--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package alu_pkg is
    
	 constant WIDTH : positive := 16;                     -- wordsize

    subtype svec is signed(WIDTH-1 downto 0);
    subtype uvec is unsigned(WIDTH-1 downto 0);

    -- Fixedpoint helper:
    constant FRAC_BITS : natural := 14;                  -- fractional bits
    constant ONE : integer := 1 * (2 ** FRAC_BITS);    -- 1.0 in Q format

    -- resize to WIDTH bits
    function sat_resize(x : signed) return svec;

    -- 3term Taylor helpers
    function sin3(x : svec) return svec;
    function cos3(x : svec) return svec;
    function exp3(x : svec) return svec;
    function ln3 (x : svec) return svec;
end package;

package body alu_pkg is
    
    function sat_resize(x : signed) return svec is
        variable tmp : signed(x'high downto x'low) := x;
        variable res : svec;
    begin
        if tmp'high >= WIDTH then
            -- clip positive overflow
            if tmp(tmp'high) = '0' then
                res := (WIDTH-1 downto 0 => '0');
                res(WIDTH-1) := '0';
                res(WIDTH-2 downto 0) := (others => '1');
            else   -- clip negative overflow
                res := (WIDTH-1 downto 0 => '1');
                res(WIDTH-1) := '1';
                res(WIDTH-2 downto 0) := (others => '0');
            end if;
        else
            res := resize(tmp, WIDTH);
        end if;
        return res;
    end;


		function sin3(x : svec) return svec is
			-- sin x ˜ x - x^3/6        |x| < p/2
			 variable x32      : signed(2*WIDTH-1 downto 0);
			 variable xx       : signed(2*WIDTH-1 downto 0);
			 variable xxx_div  : signed(2*WIDTH-1 downto 0);
			 variable y32      : signed(2*WIDTH-1 downto 0);
		begin
			 x32      := resize(x, 2*WIDTH);
			 xx       := resize( x32 * x32, 2*WIDTH );          
			 xxx_div  := resize( (xx * x32) / 6, 2*WIDTH );     --moshkel size 2 ta variable 
			 y32      := x32 - xxx_div;
			 return sat_resize(y32);
		end;

    function cos3(x : svec) return svec is
        -- cos x ˜ 1 - x^2/2
        variable xx_div : svec;
        variable y      : signed(2*WIDTH-1 downto 0);
    begin
        xx_div := resize((resize(x, 2*WIDTH) * resize(x, 2*WIDTH)) / 2, WIDTH);
        y      := resize(to_signed(ONE, WIDTH), 2*WIDTH) - resize(xx_div, 2*WIDTH);
        return sat_resize(y);
    end;

    function exp3(x : svec) return svec is
        -- e^x ˜ 1 + x + x^2/2
        variable xx_div : svec;
        variable y      : signed(2*WIDTH-1 downto 0);
    begin
        xx_div := resize((resize(x, 2*WIDTH) * resize(x, 2*WIDTH)) / 2, WIDTH);
        y := resize(to_signed(ONE, WIDTH), 2*WIDTH) +
             resize(x, 2*WIDTH) +
             resize(xx_div, 2*WIDTH);
        return sat_resize(y);
    end;

-- 3 term fixedpoint Taylor:
-- ln(1+x) ˜ x - x^2/2 + x^3/3
function ln3(x : svec) return svec is
    variable x32, xx32, xxx_div32, y32 : signed(2*WIDTH-1 downto 0);
begin
    x32 := resize(x, 2*WIDTH);

    -- x^2
    xx32 := resize( x32 * x32, 2*WIDTH ); --lazem bood hata baad zarb resize beshe, rah jaigozin soal shavad

    -- x^3 / 3
    xxx_div32 := resize( (xx32 * x32) / 3, 2*WIDTH );

    -- y = x - x^2/2 + x^3/3
    y32 := x32
           - resize(xx32 / 2, 2*WIDTH)
           + xxx_div32;

    return sat_resize(y32); --to make sure it is 32  bit
end function;

	 
end package body;
