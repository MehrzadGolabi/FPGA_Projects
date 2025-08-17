----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:57 05/01/2025 
-- Design Name: 
-- Module Name:    serial_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity serial_adder is
generic (
        N : positive := 53                -- 400249049 --> 49+4=53
    );
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;          -- asynchronous, active-high
        start   : in  std_logic;          -- 1-cycle "go" pulse
        a_in    : in  std_logic_vector(N-1 downto 0);
        b_in    : in  std_logic_vector(N-1 downto 0);
        sum_out : out std_logic_vector(N-1 downto 0);
        ready   : out std_logic           -- 1 = idle or result valid
    );
end serial_adder;

architecture Behavioral of serial_adder is

    signal a_reg, b_reg   : std_logic_vector(N-1 downto 0);
    signal sum_reg        : std_logic_vector(N-1 downto 0);
    signal carry          : std_logic := '0';

    function ceil_log2 (constant x : positive) return natural is --to find the number of bits needed to represent the number
        variable v : natural := 1; 
        variable r : natural := 0;
        begin
            while v < x loop --while the number is less than the number of bits needed to represent the number, multiply by 2 and add 1 to the number of bits needed
                v := v * 2;   r := r + 1;
            end loop;
        return r;
    end function;

    signal bit_cnt : unsigned(ceil_log2(N)-1 downto 0) := (others=>'0'); --required number of bits to represent the number
    signal busy    : std_logic := '0';

begin

    ready <= not busy;          -- external user signal
    sum_out <= sum_reg;         -- always drive the output port

    process(clk, reset)
        variable new_sum  : std_logic_vector(N-1 downto 0);
        variable a0, b0   : std_logic;
        variable s, c_out : std_logic;
    begin
        if reset = '1' then
            a_reg   <= (others=>'0');
            b_reg   <= (others=>'0');
            sum_reg <= (others=>'0');
            carry   <= '0';
            bit_cnt <= (others=>'0');
            busy    <= '0'; --idle

        elsif rising_edge(clk) then
            
            -- Start of a new addition
            
            if (start = '1') and (busy = '0') then
                a_reg   <= a_in;
                b_reg   <= b_in;
                sum_reg <= (others=>'0');
                carry   <= '0';
                bit_cnt <= (others=>'0');
                busy    <= '1';

            
            -- addition one bit per clock
           
            elsif busy = '1' then
                -- fetch current LSBs
                a0 := a_reg(0);
                b0 := b_reg(0);

                -- full-adder
                s      := a0 xor b0 xor carry;
                c_out  := (a0 and b0) or (a0 and carry) or (b0 and carry);

                new_sum            := sum_reg;                    -- copy
                new_sum(to_integer(bit_cnt)) := s;                -- store bit i
                sum_reg            <= new_sum;

                carry   <= c_out;
                a_reg   <= '0' & a_reg(N-1 downto 1);             -- logical shift-right, could have used shift_right function if unsigned typecasting was used
                b_reg   <= '0' & b_reg(N-1 downto 1);

                if bit_cnt = to_unsigned(N-1, bit_cnt'length) then
                    busy    <= '0';                               -- finished
                else
                    bit_cnt <= bit_cnt + 1;
                end if;
            end if;
        end if;
    end process;

end Behavioral;

