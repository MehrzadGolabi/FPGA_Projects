--Serial to Parallel Conversion (SIPO) is a relatively simple matter of
--clocking in a single bit stream into a register and shifting each bit
--in turn until the register is full. Then the parallel output can be read
--directly. In this example VHDL model, the size of the register is set
--by the generic (n), which in this case defaults to 8. Notice that in
--this example, the reset signal (nrst) is synchronous, not asynchro-
--nous as has been used before. In this case, the only signal that the
--process will react to is an event on the clock (clk), and a rising_edge
--event at that. When this event occurs, the reset signal is checked to
--see if it is low, otherwise the register is clocked through. If the reset
--signal is low, then the register is cleared to all zeros.
-- Peter Wilson Design Recipes for FPGAs Using Verilog and VHDL 2007 page 268
--===============================================================
LIBRARY ieee;
USE ieee.Std_logic_1164.ALL;
USE ieee.Std_logic_unsigned.ALL;

ENTITY sipo IS --serial in parallel out
    GENERIC(n : Positive := 8);
    PORT(
        clk  : in std_logic;
        nrst : in std_logic;
        di   : in std_logic;
        q    : out std_logic_vector((n-1) DOWNTO 0)
    );
END sipo;

ARCHITECTURE simple OF sipo IS
    SIGNAL int_reg : Std_logic_vector((n-1) DOWNTO 0);
    signal index   : integer := 0;

BEGIN

    out_process : PROCESS
    BEGIN
        WAIT UNTIL rising_edge(clk);
        if nrst = '0' then
            int_reg <= "00000000";
            index   <= 0;
        else
            int_reg(index) <= di;
            if index = 7 then
                index <= 0;
            else
                index <= index + 1;
            end if;
        end if;
    END PROCESS;

    q <= int_reg;
    
END simple;
