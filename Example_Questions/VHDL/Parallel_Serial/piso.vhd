--The parallel to serial register has two stages of operation. The first
--stage is to load in the parallel data. In this model, the load signal
--is active low and synchronous. In other words, just like the SIPO
--model, there is no asynchronous function and the clock is the only
--signal in the sensitivity list. If the load signal is high, then the data
--in the register is clocked out one bit at a time. Note that the
--Parallel to Serial Conversion (PISO) model cycles around, and
--does not stop after the data has been output.
-- Peter Wilson Design Recipes for FPGAs Using Verilog and VHDL 2007 page 269
--===============================================================
LIBRARY ieee;
USE ieee.Std_logic_1164.ALL;
USE ieee.Std_logic_unsigned.ALL;

ENTITY piso IS --parallel in serial out
    GENERIC(n : Positive := 8); --size of register
    PORT(
        clk  : IN Std_logic;
        load : IN std_logic;
        do   : OUT std_logic;
        q    : IN Std_logic_vector((n-1) DOWNTO 0)
    );
END piso;

ARCHITECTURE simple OF piso IS
    SIGNAL int_reg : Std_logic_vector((n-1) DOWNTO 0);
    SIGNAL index   : integer := 0;

BEGIN
    out_process : PROCESS
    BEGIN
        WAIT UNTIL rising_edge(clk);
        if load = '0' then
            int_reg <= q;
            index <= 0;
        else
            do <= int_reg(index);
            if index = 7 then
                index <= 0;
            else
                index <= index + 1;
            end if;
        end if;
    END PROCESS;

END simple;
