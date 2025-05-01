----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:51 04/17/2025 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.alu_pkg.all; --helper functions, sin cos ln exp, fixed point 1 and ... things that cluttered the actual file, also used in test bench      

entity alu is
    generic ( W : positive := WIDTH );
    port (
        A, B   : in  svec;                          -- operands, svec is defined in the pkg file, signed 16 bit
        OP     : in  std_logic_vector(4 downto 0);  -- 5bit 
        D      : out svec;                          -- result
        FLAGS  : out std_logic_vector(3 downto 0)   -- [C V S Z]
    );
end entity;

architecture rtl of alu is
    function add_or_sub(
             a, b  : signed;
             is_sub: boolean
         ) return signed is
        variable ext : signed(W downto 0);
    begin
        if is_sub then
            ext := resize(a, W+1) - resize(b, W+1);
        else
            ext := resize(a, W+1) + resize(b, W+1);
        end if;
        return ext;
    end;

    function get_carry(ext : signed) return std_logic is
    begin
        return ext(W);                             
    end;

    function get_overflow(ext : signed) return std_logic is
    begin
        return ext(W) xor ext(W-1);                
    end;

    function safe_div(a, b : svec) return svec is
    begin
        if b = 0 then
            return (others => '0'); --drop divide by zero
        else
            return sat_resize(a / b);
        end if;
    end;

    signal rslt          : svec;
    signal carry_s, ovf_s: std_logic;
	 
begin
    alu_core : block
        
        signal rotl, rotr : svec; --left and right
        
        signal ext_add, ext_sub, ext_inc, ext_dec : signed(W downto 0);
		  
    begin
        rotl <= A(W-2 downto 0) & A(W-1);
        rotr <= A(0) & A(W-1 downto 1);

       
        ext_add <= add_or_sub(A, B, false);
        ext_sub <= add_or_sub(A, B, true );
        ext_inc <= add_or_sub(A, to_signed(1,W), false);
        ext_dec <= add_or_sub(A, to_signed(1,W), true );

        with OP select --shift_left and ... are defined in ieee.numeric_std
            rslt <= ext_add(W-1 downto 0)                    when "00000", -- ADD
                     ext_sub(W-1 downto 0)                   when "00001", -- SUB
                     sat_resize(A * B)                       when "00010", -- MUL
                     (others => '0')                         when "00011", -- DIV 
                     ext_inc(W-1 downto 0)                   when "00100", -- INC
                     ext_dec(W-1 downto 0)                   when "00101", -- DEC
                     A and  B                                when "00110", -- AND
                     A or   B                                when "00111", -- OR
                     A xor  B                                when "01000", -- XOR
                     not A                                   when "01001", -- NOT
                     not (A and B)                           when "01010", -- NAND
                     not (A or  B)                           when "01011", -- NOR
                     A xnor B                                when "01100", -- XNOR
                     shift_left (A, 1)                       when "01101", -- SHL
                     shift_right(A, 1)                       when "01110", -- SHR 
                     shift_left (A, 1)                       when "01111", -- Arithmetic SHL
                     shift_right(A, 1)                       when "10000", -- Arithmetic SHR
                     rotl                                     when "10001", -- ROTL
                     rotr                                     when "10010", -- ROTR
                     sin3(A)                                  when "10011", -- SIN
                     cos3(A)                                  when "10100", -- COS
                     exp3(A)                                  when "10101", -- EXP
                     ln3 (A)                                  when "10110", -- LN
                     (others => '0')                          when others;


        with OP select
            carry_s <= get_carry(ext_add) when "00000", -- operations that need carry
                        get_carry(ext_sub) when "00001",
                        get_carry(ext_inc) when "00100",
                        get_carry(ext_dec) when "00101",
                        '0'                when others;

        with OP select
            ovf_s   <= get_overflow(ext_add) when "00000", --operations that need overflow
                        get_overflow(ext_sub) when "00001",
                        get_overflow(ext_inc) when "00100",
                        get_overflow(ext_dec) when "00101",
                        '0'                   when others;
    end block;


    D             <= rslt;									-- D
    FLAGS(0)      <= carry_s;                      -- C
    FLAGS(1)      <= ovf_s;                        -- V
    FLAGS(2)      <= rslt(W-1);                    -- S
    FLAGS(3)      <= '1' when rslt = 0 else '0';   -- Z
end architecture;
