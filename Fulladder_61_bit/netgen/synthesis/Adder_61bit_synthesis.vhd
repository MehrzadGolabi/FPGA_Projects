--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Adder_61bit_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 10 09:26:53 2025
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Adder_61bit -w -dir netgen/synthesis -ofmt vhdl -sim Adder_61bit.ngc Adder_61bit_synthesis.vhd 
-- Device	: xc6slx150t-3-fgg676
-- Input file	: Adder_61bit.ngc
-- Output file	: /home/thanotos/Desktop/Fulladder_61_bit/netgen/synthesis/Adder_61bit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Adder_61bit
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Adder_61bit is
  port (
    Cout : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 60 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 60 downto 0 ); 
    Sum : out STD_LOGIC_VECTOR ( 60 downto 0 ) 
  );
end Adder_61bit;

architecture Structure of Adder_61bit is
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_1 : STD_LOGIC; 
  signal A_1_IBUF_2 : STD_LOGIC; 
  signal A_0_IBUF_3 : STD_LOGIC; 
  signal A_7_IBUF_4 : STD_LOGIC; 
  signal A_6_IBUF_5 : STD_LOGIC; 
  signal A_5_IBUF_6 : STD_LOGIC; 
  signal A_4_IBUF_7 : STD_LOGIC; 
  signal A_11_IBUF_8 : STD_LOGIC; 
  signal A_10_IBUF_9 : STD_LOGIC; 
  signal A_9_IBUF_10 : STD_LOGIC; 
  signal A_8_IBUF_11 : STD_LOGIC; 
  signal A_15_IBUF_12 : STD_LOGIC; 
  signal A_14_IBUF_13 : STD_LOGIC; 
  signal A_13_IBUF_14 : STD_LOGIC; 
  signal A_12_IBUF_15 : STD_LOGIC; 
  signal A_19_IBUF_16 : STD_LOGIC; 
  signal A_18_IBUF_17 : STD_LOGIC; 
  signal A_17_IBUF_18 : STD_LOGIC; 
  signal A_16_IBUF_19 : STD_LOGIC; 
  signal A_23_IBUF_20 : STD_LOGIC; 
  signal A_22_IBUF_21 : STD_LOGIC; 
  signal A_21_IBUF_22 : STD_LOGIC; 
  signal A_20_IBUF_23 : STD_LOGIC; 
  signal A_27_IBUF_24 : STD_LOGIC; 
  signal A_26_IBUF_25 : STD_LOGIC; 
  signal A_25_IBUF_26 : STD_LOGIC; 
  signal A_24_IBUF_27 : STD_LOGIC; 
  signal A_31_IBUF_28 : STD_LOGIC; 
  signal A_30_IBUF_29 : STD_LOGIC; 
  signal A_29_IBUF_30 : STD_LOGIC; 
  signal A_28_IBUF_31 : STD_LOGIC; 
  signal A_35_IBUF_32 : STD_LOGIC; 
  signal A_34_IBUF_33 : STD_LOGIC; 
  signal A_33_IBUF_34 : STD_LOGIC; 
  signal A_32_IBUF_35 : STD_LOGIC; 
  signal A_39_IBUF_36 : STD_LOGIC; 
  signal A_38_IBUF_37 : STD_LOGIC; 
  signal A_37_IBUF_38 : STD_LOGIC; 
  signal A_36_IBUF_39 : STD_LOGIC; 
  signal A_43_IBUF_40 : STD_LOGIC; 
  signal A_42_IBUF_41 : STD_LOGIC; 
  signal A_41_IBUF_42 : STD_LOGIC; 
  signal A_40_IBUF_43 : STD_LOGIC; 
  signal A_47_IBUF_44 : STD_LOGIC; 
  signal A_46_IBUF_45 : STD_LOGIC; 
  signal A_45_IBUF_46 : STD_LOGIC; 
  signal A_44_IBUF_47 : STD_LOGIC; 
  signal A_51_IBUF_48 : STD_LOGIC; 
  signal A_50_IBUF_49 : STD_LOGIC; 
  signal A_49_IBUF_50 : STD_LOGIC; 
  signal A_48_IBUF_51 : STD_LOGIC; 
  signal A_55_IBUF_52 : STD_LOGIC; 
  signal A_54_IBUF_53 : STD_LOGIC; 
  signal A_53_IBUF_54 : STD_LOGIC; 
  signal A_52_IBUF_55 : STD_LOGIC; 
  signal A_59_IBUF_56 : STD_LOGIC; 
  signal A_58_IBUF_57 : STD_LOGIC; 
  signal A_57_IBUF_58 : STD_LOGIC; 
  signal A_56_IBUF_59 : STD_LOGIC; 
  signal A_60_IBUF_60 : STD_LOGIC; 
  signal B_3_IBUF_61 : STD_LOGIC; 
  signal B_2_IBUF_62 : STD_LOGIC; 
  signal B_1_IBUF_63 : STD_LOGIC; 
  signal B_0_IBUF_64 : STD_LOGIC; 
  signal B_7_IBUF_65 : STD_LOGIC; 
  signal B_6_IBUF_66 : STD_LOGIC; 
  signal B_5_IBUF_67 : STD_LOGIC; 
  signal B_4_IBUF_68 : STD_LOGIC; 
  signal B_11_IBUF_69 : STD_LOGIC; 
  signal B_10_IBUF_70 : STD_LOGIC; 
  signal B_9_IBUF_71 : STD_LOGIC; 
  signal B_8_IBUF_72 : STD_LOGIC; 
  signal B_15_IBUF_73 : STD_LOGIC; 
  signal B_14_IBUF_74 : STD_LOGIC; 
  signal B_13_IBUF_75 : STD_LOGIC; 
  signal B_12_IBUF_76 : STD_LOGIC; 
  signal B_19_IBUF_77 : STD_LOGIC; 
  signal B_18_IBUF_78 : STD_LOGIC; 
  signal B_17_IBUF_79 : STD_LOGIC; 
  signal B_16_IBUF_80 : STD_LOGIC; 
  signal B_23_IBUF_81 : STD_LOGIC; 
  signal B_22_IBUF_82 : STD_LOGIC; 
  signal B_21_IBUF_83 : STD_LOGIC; 
  signal B_20_IBUF_84 : STD_LOGIC; 
  signal B_27_IBUF_85 : STD_LOGIC; 
  signal B_26_IBUF_86 : STD_LOGIC; 
  signal B_25_IBUF_87 : STD_LOGIC; 
  signal B_24_IBUF_88 : STD_LOGIC; 
  signal B_31_IBUF_89 : STD_LOGIC; 
  signal B_30_IBUF_90 : STD_LOGIC; 
  signal B_29_IBUF_91 : STD_LOGIC; 
  signal B_28_IBUF_92 : STD_LOGIC; 
  signal B_35_IBUF_93 : STD_LOGIC; 
  signal B_34_IBUF_94 : STD_LOGIC; 
  signal B_33_IBUF_95 : STD_LOGIC; 
  signal B_32_IBUF_96 : STD_LOGIC; 
  signal B_39_IBUF_97 : STD_LOGIC; 
  signal B_38_IBUF_98 : STD_LOGIC; 
  signal B_37_IBUF_99 : STD_LOGIC; 
  signal B_36_IBUF_100 : STD_LOGIC; 
  signal B_43_IBUF_101 : STD_LOGIC; 
  signal B_42_IBUF_102 : STD_LOGIC; 
  signal B_41_IBUF_103 : STD_LOGIC; 
  signal B_40_IBUF_104 : STD_LOGIC; 
  signal B_47_IBUF_105 : STD_LOGIC; 
  signal B_46_IBUF_106 : STD_LOGIC; 
  signal B_45_IBUF_107 : STD_LOGIC; 
  signal B_44_IBUF_108 : STD_LOGIC; 
  signal B_51_IBUF_109 : STD_LOGIC; 
  signal B_50_IBUF_110 : STD_LOGIC; 
  signal B_49_IBUF_111 : STD_LOGIC; 
  signal B_48_IBUF_112 : STD_LOGIC; 
  signal B_55_IBUF_113 : STD_LOGIC; 
  signal B_54_IBUF_114 : STD_LOGIC; 
  signal B_53_IBUF_115 : STD_LOGIC; 
  signal B_52_IBUF_116 : STD_LOGIC; 
  signal B_59_IBUF_117 : STD_LOGIC; 
  signal B_58_IBUF_118 : STD_LOGIC; 
  signal B_57_IBUF_119 : STD_LOGIC; 
  signal B_56_IBUF_120 : STD_LOGIC; 
  signal B_60_IBUF_121 : STD_LOGIC; 
  signal Sum_3_OBUF_122 : STD_LOGIC; 
  signal Sum_2_OBUF_123 : STD_LOGIC; 
  signal Sum_1_OBUF_124 : STD_LOGIC; 
  signal Sum_0_OBUF_125 : STD_LOGIC; 
  signal Sum_7_OBUF_126 : STD_LOGIC; 
  signal Sum_6_OBUF_127 : STD_LOGIC; 
  signal Sum_5_OBUF_128 : STD_LOGIC; 
  signal Sum_4_OBUF_129 : STD_LOGIC; 
  signal Sum_11_OBUF_130 : STD_LOGIC; 
  signal Sum_10_OBUF_131 : STD_LOGIC; 
  signal Sum_9_OBUF_132 : STD_LOGIC; 
  signal Sum_8_OBUF_133 : STD_LOGIC; 
  signal Sum_15_OBUF_134 : STD_LOGIC; 
  signal Sum_14_OBUF_135 : STD_LOGIC; 
  signal Sum_13_OBUF_136 : STD_LOGIC; 
  signal Sum_12_OBUF_137 : STD_LOGIC; 
  signal Sum_19_OBUF_138 : STD_LOGIC; 
  signal Sum_18_OBUF_139 : STD_LOGIC; 
  signal Sum_17_OBUF_140 : STD_LOGIC; 
  signal Sum_16_OBUF_141 : STD_LOGIC; 
  signal Sum_23_OBUF_142 : STD_LOGIC; 
  signal Sum_22_OBUF_143 : STD_LOGIC; 
  signal Sum_21_OBUF_144 : STD_LOGIC; 
  signal Sum_20_OBUF_145 : STD_LOGIC; 
  signal Sum_27_OBUF_146 : STD_LOGIC; 
  signal Sum_26_OBUF_147 : STD_LOGIC; 
  signal Sum_25_OBUF_148 : STD_LOGIC; 
  signal Sum_24_OBUF_149 : STD_LOGIC; 
  signal Sum_31_OBUF_150 : STD_LOGIC; 
  signal Sum_30_OBUF_151 : STD_LOGIC; 
  signal Sum_29_OBUF_152 : STD_LOGIC; 
  signal Sum_28_OBUF_153 : STD_LOGIC; 
  signal Sum_35_OBUF_154 : STD_LOGIC; 
  signal Sum_34_OBUF_155 : STD_LOGIC; 
  signal Sum_33_OBUF_156 : STD_LOGIC; 
  signal Sum_32_OBUF_157 : STD_LOGIC; 
  signal Sum_39_OBUF_158 : STD_LOGIC; 
  signal Sum_38_OBUF_159 : STD_LOGIC; 
  signal Sum_37_OBUF_160 : STD_LOGIC; 
  signal Sum_36_OBUF_161 : STD_LOGIC; 
  signal Sum_43_OBUF_163 : STD_LOGIC; 
  signal Sum_42_OBUF_164 : STD_LOGIC; 
  signal Sum_41_OBUF_165 : STD_LOGIC; 
  signal Sum_40_OBUF_166 : STD_LOGIC; 
  signal Sum_47_OBUF_168 : STD_LOGIC; 
  signal Sum_46_OBUF_169 : STD_LOGIC; 
  signal Sum_45_OBUF_170 : STD_LOGIC; 
  signal Sum_44_OBUF_171 : STD_LOGIC; 
  signal Sum_51_OBUF_173 : STD_LOGIC; 
  signal Sum_50_OBUF_174 : STD_LOGIC; 
  signal Sum_49_OBUF_175 : STD_LOGIC; 
  signal Sum_48_OBUF_176 : STD_LOGIC; 
  signal Sum_55_OBUF_178 : STD_LOGIC; 
  signal Sum_54_OBUF_179 : STD_LOGIC; 
  signal Sum_53_OBUF_180 : STD_LOGIC; 
  signal Sum_52_OBUF_181 : STD_LOGIC; 
  signal Sum_59_OBUF_183 : STD_LOGIC; 
  signal Sum_58_OBUF_184 : STD_LOGIC; 
  signal Sum_57_OBUF_185 : STD_LOGIC; 
  signal Sum_56_OBUF_186 : STD_LOGIC; 
  signal Sum_60_OBUF_188 : STD_LOGIC; 
  signal Cout_OBUF_189 : STD_LOGIC; 
  signal GEN_4BIT_14_FA4_inst_c_1_Q : STD_LOGIC; 
  signal GEN_4BIT_13_FA4_inst_c_1_Q : STD_LOGIC; 
  signal GEN_4BIT_12_FA4_inst_c_1_Q : STD_LOGIC; 
  signal GEN_4BIT_11_FA4_inst_c_1_Q : STD_LOGIC; 
  signal GEN_4BIT_10_FA4_inst_c_1_Q : STD_LOGIC; 
  signal GEN_4BIT_9_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_9_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_8_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_8_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_7_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_7_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_6_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_6_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_5_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_5_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_4_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_4_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_3_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_3_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_2_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_2_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_1_FA4_inst_c_2_Q : STD_LOGIC; 
  signal GEN_4BIT_1_FA4_inst_c_0_Q : STD_LOGIC; 
  signal GEN_4BIT_0_FA4_inst_c_2_Q : STD_LOGIC; 
  signal carry : STD_LOGIC_VECTOR ( 15 downto 10 ); 
begin
  GEN_4BIT_0_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_0_IBUF_3,
      I1 => B_0_IBUF_64,
      O => Sum_0_OBUF_125
    );
  GEN_4BIT_9_FA4_inst_FA3_Cout1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => B_39_IBUF_97,
      I1 => GEN_4BIT_9_FA4_inst_c_2_Q,
      I2 => A_39_IBUF_36,
      O => carry(10)
    );
  FA1_inst_Cout1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => B_60_IBUF_121,
      I1 => carry(15),
      I2 => A_60_IBUF_60,
      O => Cout_OBUF_189
    );
  FA1_inst_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_60_IBUF_60,
      I1 => B_60_IBUF_121,
      I2 => carry(15),
      O => Sum_60_OBUF_188
    );
  GEN_4BIT_14_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_58_IBUF_57,
      I1 => B_58_IBUF_118,
      I2 => GEN_4BIT_14_FA4_inst_c_1_Q,
      O => Sum_58_OBUF_184
    );
  GEN_4BIT_14_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_56_IBUF_59,
      I1 => B_56_IBUF_120,
      I2 => carry(14),
      O => Sum_56_OBUF_186
    );
  GEN_4BIT_13_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_54_IBUF_53,
      I1 => B_54_IBUF_114,
      I2 => GEN_4BIT_13_FA4_inst_c_1_Q,
      O => Sum_54_OBUF_179
    );
  GEN_4BIT_13_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_52_IBUF_55,
      I1 => B_52_IBUF_116,
      I2 => carry(13),
      O => Sum_52_OBUF_181
    );
  GEN_4BIT_12_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_50_IBUF_49,
      I1 => B_50_IBUF_110,
      I2 => GEN_4BIT_12_FA4_inst_c_1_Q,
      O => Sum_50_OBUF_174
    );
  GEN_4BIT_12_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_48_IBUF_51,
      I1 => B_48_IBUF_112,
      I2 => carry(12),
      O => Sum_48_OBUF_176
    );
  GEN_4BIT_11_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_46_IBUF_45,
      I1 => B_46_IBUF_106,
      I2 => GEN_4BIT_11_FA4_inst_c_1_Q,
      O => Sum_46_OBUF_169
    );
  GEN_4BIT_11_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_44_IBUF_47,
      I1 => B_44_IBUF_108,
      I2 => carry(11),
      O => Sum_44_OBUF_171
    );
  GEN_4BIT_10_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_42_IBUF_41,
      I1 => B_42_IBUF_102,
      I2 => GEN_4BIT_10_FA4_inst_c_1_Q,
      O => Sum_42_OBUF_164
    );
  GEN_4BIT_9_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_39_IBUF_36,
      I1 => B_39_IBUF_97,
      I2 => GEN_4BIT_9_FA4_inst_c_2_Q,
      O => Sum_39_OBUF_158
    );
  GEN_4BIT_9_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_37_IBUF_38,
      I1 => B_37_IBUF_99,
      I2 => GEN_4BIT_9_FA4_inst_c_0_Q,
      O => Sum_37_OBUF_160
    );
  GEN_4BIT_8_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_35_IBUF_32,
      I1 => B_35_IBUF_93,
      I2 => GEN_4BIT_8_FA4_inst_c_2_Q,
      O => Sum_35_OBUF_154
    );
  GEN_4BIT_8_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_33_IBUF_34,
      I1 => B_33_IBUF_95,
      I2 => GEN_4BIT_8_FA4_inst_c_0_Q,
      O => Sum_33_OBUF_156
    );
  GEN_4BIT_7_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_31_IBUF_28,
      I1 => B_31_IBUF_89,
      I2 => GEN_4BIT_7_FA4_inst_c_2_Q,
      O => Sum_31_OBUF_150
    );
  GEN_4BIT_7_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_29_IBUF_30,
      I1 => B_29_IBUF_91,
      I2 => GEN_4BIT_7_FA4_inst_c_0_Q,
      O => Sum_29_OBUF_152
    );
  GEN_4BIT_6_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_27_IBUF_24,
      I1 => B_27_IBUF_85,
      I2 => GEN_4BIT_6_FA4_inst_c_2_Q,
      O => Sum_27_OBUF_146
    );
  GEN_4BIT_6_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_25_IBUF_26,
      I1 => B_25_IBUF_87,
      I2 => GEN_4BIT_6_FA4_inst_c_0_Q,
      O => Sum_25_OBUF_148
    );
  GEN_4BIT_5_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_23_IBUF_20,
      I1 => B_23_IBUF_81,
      I2 => GEN_4BIT_5_FA4_inst_c_2_Q,
      O => Sum_23_OBUF_142
    );
  GEN_4BIT_5_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_21_IBUF_22,
      I1 => B_21_IBUF_83,
      I2 => GEN_4BIT_5_FA4_inst_c_0_Q,
      O => Sum_21_OBUF_144
    );
  GEN_4BIT_4_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_19_IBUF_16,
      I1 => B_19_IBUF_77,
      I2 => GEN_4BIT_4_FA4_inst_c_2_Q,
      O => Sum_19_OBUF_138
    );
  GEN_4BIT_4_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_17_IBUF_18,
      I1 => B_17_IBUF_79,
      I2 => GEN_4BIT_4_FA4_inst_c_0_Q,
      O => Sum_17_OBUF_140
    );
  GEN_4BIT_3_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_15_IBUF_12,
      I1 => B_15_IBUF_73,
      I2 => GEN_4BIT_3_FA4_inst_c_2_Q,
      O => Sum_15_OBUF_134
    );
  GEN_4BIT_3_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_13_IBUF_14,
      I1 => B_13_IBUF_75,
      I2 => GEN_4BIT_3_FA4_inst_c_0_Q,
      O => Sum_13_OBUF_136
    );
  GEN_4BIT_2_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_11_IBUF_8,
      I1 => B_11_IBUF_69,
      I2 => GEN_4BIT_2_FA4_inst_c_2_Q,
      O => Sum_11_OBUF_130
    );
  GEN_4BIT_2_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_9_IBUF_10,
      I1 => B_9_IBUF_71,
      I2 => GEN_4BIT_2_FA4_inst_c_0_Q,
      O => Sum_9_OBUF_132
    );
  GEN_4BIT_1_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_7_IBUF_4,
      I1 => B_7_IBUF_65,
      I2 => GEN_4BIT_1_FA4_inst_c_2_Q,
      O => Sum_7_OBUF_126
    );
  GEN_4BIT_1_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_5_IBUF_6,
      I1 => B_5_IBUF_67,
      I2 => GEN_4BIT_1_FA4_inst_c_0_Q,
      O => Sum_5_OBUF_128
    );
  GEN_4BIT_0_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_3_IBUF_0,
      I1 => B_3_IBUF_61,
      I2 => GEN_4BIT_0_FA4_inst_c_2_Q,
      O => Sum_3_OBUF_122
    );
  GEN_4BIT_0_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT4
    generic map(
      INIT => X"8778"
    )
    port map (
      I0 => A_0_IBUF_3,
      I1 => B_0_IBUF_64,
      I2 => A_1_IBUF_2,
      I3 => B_1_IBUF_63,
      O => Sum_1_OBUF_124
    );
  GEN_4BIT_0_FA4_inst_FA2_Cout1 : LUT6
    generic map(
      INIT => X"EEE8E888E888E888"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => B_2_IBUF_62,
      I2 => A_1_IBUF_2,
      I3 => B_1_IBUF_63,
      I4 => A_0_IBUF_3,
      I5 => B_0_IBUF_64,
      O => GEN_4BIT_0_FA4_inst_c_2_Q
    );
  GEN_4BIT_0_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT6
    generic map(
      INIT => X"9996966696669666"
    )
    port map (
      I0 => A_2_IBUF_1,
      I1 => B_2_IBUF_62,
      I2 => A_1_IBUF_2,
      I3 => B_1_IBUF_63,
      I4 => A_0_IBUF_3,
      I5 => B_0_IBUF_64,
      O => Sum_2_OBUF_123
    );
  GEN_4BIT_1_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_4_IBUF_7,
      I1 => B_4_IBUF_68,
      I2 => B_3_IBUF_61,
      I3 => GEN_4BIT_0_FA4_inst_c_2_Q,
      I4 => A_3_IBUF_0,
      O => GEN_4BIT_1_FA4_inst_c_0_Q
    );
  GEN_4BIT_1_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_4_IBUF_7,
      I1 => B_4_IBUF_68,
      I2 => B_3_IBUF_61,
      I3 => GEN_4BIT_0_FA4_inst_c_2_Q,
      I4 => A_3_IBUF_0,
      O => Sum_4_OBUF_129
    );
  GEN_4BIT_10_FA4_inst_FA1_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_41_IBUF_42,
      I1 => B_41_IBUF_103,
      I2 => B_40_IBUF_104,
      I3 => carry(10),
      I4 => A_40_IBUF_43,
      O => GEN_4BIT_10_FA4_inst_c_1_Q
    );
  GEN_4BIT_10_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_41_IBUF_42,
      I1 => B_41_IBUF_103,
      I2 => B_40_IBUF_104,
      I3 => carry(10),
      I4 => A_40_IBUF_43,
      O => Sum_41_OBUF_165
    );
  GEN_4BIT_10_FA4_inst_FA3_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_43_IBUF_40,
      I1 => B_43_IBUF_101,
      I2 => B_42_IBUF_102,
      I3 => GEN_4BIT_10_FA4_inst_c_1_Q,
      I4 => A_42_IBUF_41,
      O => carry(11)
    );
  GEN_4BIT_10_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_43_IBUF_40,
      I1 => B_43_IBUF_101,
      I2 => B_42_IBUF_102,
      I3 => GEN_4BIT_10_FA4_inst_c_1_Q,
      I4 => A_42_IBUF_41,
      O => Sum_43_OBUF_163
    );
  GEN_4BIT_11_FA4_inst_FA1_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_45_IBUF_46,
      I1 => B_45_IBUF_107,
      I2 => B_44_IBUF_108,
      I3 => carry(11),
      I4 => A_44_IBUF_47,
      O => GEN_4BIT_11_FA4_inst_c_1_Q
    );
  GEN_4BIT_11_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_45_IBUF_46,
      I1 => B_45_IBUF_107,
      I2 => B_44_IBUF_108,
      I3 => carry(11),
      I4 => A_44_IBUF_47,
      O => Sum_45_OBUF_170
    );
  GEN_4BIT_11_FA4_inst_FA3_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_47_IBUF_44,
      I1 => B_47_IBUF_105,
      I2 => B_46_IBUF_106,
      I3 => GEN_4BIT_11_FA4_inst_c_1_Q,
      I4 => A_46_IBUF_45,
      O => carry(12)
    );
  GEN_4BIT_11_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_47_IBUF_44,
      I1 => B_47_IBUF_105,
      I2 => B_46_IBUF_106,
      I3 => GEN_4BIT_11_FA4_inst_c_1_Q,
      I4 => A_46_IBUF_45,
      O => Sum_47_OBUF_168
    );
  GEN_4BIT_12_FA4_inst_FA1_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_49_IBUF_50,
      I1 => B_49_IBUF_111,
      I2 => B_48_IBUF_112,
      I3 => carry(12),
      I4 => A_48_IBUF_51,
      O => GEN_4BIT_12_FA4_inst_c_1_Q
    );
  GEN_4BIT_12_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_49_IBUF_50,
      I1 => B_49_IBUF_111,
      I2 => B_48_IBUF_112,
      I3 => carry(12),
      I4 => A_48_IBUF_51,
      O => Sum_49_OBUF_175
    );
  GEN_4BIT_12_FA4_inst_FA3_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_51_IBUF_48,
      I1 => B_51_IBUF_109,
      I2 => B_50_IBUF_110,
      I3 => GEN_4BIT_12_FA4_inst_c_1_Q,
      I4 => A_50_IBUF_49,
      O => carry(13)
    );
  GEN_4BIT_12_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_51_IBUF_48,
      I1 => B_51_IBUF_109,
      I2 => B_50_IBUF_110,
      I3 => GEN_4BIT_12_FA4_inst_c_1_Q,
      I4 => A_50_IBUF_49,
      O => Sum_51_OBUF_173
    );
  GEN_4BIT_13_FA4_inst_FA1_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_53_IBUF_54,
      I1 => B_53_IBUF_115,
      I2 => B_52_IBUF_116,
      I3 => carry(13),
      I4 => A_52_IBUF_55,
      O => GEN_4BIT_13_FA4_inst_c_1_Q
    );
  GEN_4BIT_13_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_53_IBUF_54,
      I1 => B_53_IBUF_115,
      I2 => B_52_IBUF_116,
      I3 => carry(13),
      I4 => A_52_IBUF_55,
      O => Sum_53_OBUF_180
    );
  GEN_4BIT_13_FA4_inst_FA3_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_55_IBUF_52,
      I1 => B_55_IBUF_113,
      I2 => B_54_IBUF_114,
      I3 => GEN_4BIT_13_FA4_inst_c_1_Q,
      I4 => A_54_IBUF_53,
      O => carry(14)
    );
  GEN_4BIT_13_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_55_IBUF_52,
      I1 => B_55_IBUF_113,
      I2 => B_54_IBUF_114,
      I3 => GEN_4BIT_13_FA4_inst_c_1_Q,
      I4 => A_54_IBUF_53,
      O => Sum_55_OBUF_178
    );
  GEN_4BIT_14_FA4_inst_FA1_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_57_IBUF_58,
      I1 => B_57_IBUF_119,
      I2 => B_56_IBUF_120,
      I3 => carry(14),
      I4 => A_56_IBUF_59,
      O => GEN_4BIT_14_FA4_inst_c_1_Q
    );
  GEN_4BIT_14_FA4_inst_FA1_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_57_IBUF_58,
      I1 => B_57_IBUF_119,
      I2 => B_56_IBUF_120,
      I3 => carry(14),
      I4 => A_56_IBUF_59,
      O => Sum_57_OBUF_185
    );
  GEN_4BIT_14_FA4_inst_FA3_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_59_IBUF_56,
      I1 => B_59_IBUF_117,
      I2 => B_58_IBUF_118,
      I3 => GEN_4BIT_14_FA4_inst_c_1_Q,
      I4 => A_58_IBUF_57,
      O => carry(15)
    );
  GEN_4BIT_14_FA4_inst_FA3_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_59_IBUF_56,
      I1 => B_59_IBUF_117,
      I2 => B_58_IBUF_118,
      I3 => GEN_4BIT_14_FA4_inst_c_1_Q,
      I4 => A_58_IBUF_57,
      O => Sum_59_OBUF_183
    );
  GEN_4BIT_1_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_6_IBUF_5,
      I1 => B_6_IBUF_66,
      I2 => B_5_IBUF_67,
      I3 => GEN_4BIT_1_FA4_inst_c_0_Q,
      I4 => A_5_IBUF_6,
      O => GEN_4BIT_1_FA4_inst_c_2_Q
    );
  GEN_4BIT_1_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_6_IBUF_5,
      I1 => B_6_IBUF_66,
      I2 => B_5_IBUF_67,
      I3 => GEN_4BIT_1_FA4_inst_c_0_Q,
      I4 => A_5_IBUF_6,
      O => Sum_6_OBUF_127
    );
  GEN_4BIT_2_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_8_IBUF_11,
      I1 => B_8_IBUF_72,
      I2 => B_7_IBUF_65,
      I3 => GEN_4BIT_1_FA4_inst_c_2_Q,
      I4 => A_7_IBUF_4,
      O => GEN_4BIT_2_FA4_inst_c_0_Q
    );
  GEN_4BIT_2_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_8_IBUF_11,
      I1 => B_8_IBUF_72,
      I2 => B_7_IBUF_65,
      I3 => GEN_4BIT_1_FA4_inst_c_2_Q,
      I4 => A_7_IBUF_4,
      O => Sum_8_OBUF_133
    );
  GEN_4BIT_2_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => B_10_IBUF_70,
      I2 => B_9_IBUF_71,
      I3 => GEN_4BIT_2_FA4_inst_c_0_Q,
      I4 => A_9_IBUF_10,
      O => GEN_4BIT_2_FA4_inst_c_2_Q
    );
  GEN_4BIT_2_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_10_IBUF_9,
      I1 => B_10_IBUF_70,
      I2 => B_9_IBUF_71,
      I3 => GEN_4BIT_2_FA4_inst_c_0_Q,
      I4 => A_9_IBUF_10,
      O => Sum_10_OBUF_131
    );
  GEN_4BIT_3_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_12_IBUF_15,
      I1 => B_12_IBUF_76,
      I2 => B_11_IBUF_69,
      I3 => GEN_4BIT_2_FA4_inst_c_2_Q,
      I4 => A_11_IBUF_8,
      O => GEN_4BIT_3_FA4_inst_c_0_Q
    );
  GEN_4BIT_3_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_12_IBUF_15,
      I1 => B_12_IBUF_76,
      I2 => B_11_IBUF_69,
      I3 => GEN_4BIT_2_FA4_inst_c_2_Q,
      I4 => A_11_IBUF_8,
      O => Sum_12_OBUF_137
    );
  GEN_4BIT_3_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_14_IBUF_13,
      I1 => B_14_IBUF_74,
      I2 => B_13_IBUF_75,
      I3 => GEN_4BIT_3_FA4_inst_c_0_Q,
      I4 => A_13_IBUF_14,
      O => GEN_4BIT_3_FA4_inst_c_2_Q
    );
  GEN_4BIT_3_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_14_IBUF_13,
      I1 => B_14_IBUF_74,
      I2 => B_13_IBUF_75,
      I3 => GEN_4BIT_3_FA4_inst_c_0_Q,
      I4 => A_13_IBUF_14,
      O => Sum_14_OBUF_135
    );
  GEN_4BIT_4_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_16_IBUF_19,
      I1 => B_16_IBUF_80,
      I2 => B_15_IBUF_73,
      I3 => GEN_4BIT_3_FA4_inst_c_2_Q,
      I4 => A_15_IBUF_12,
      O => GEN_4BIT_4_FA4_inst_c_0_Q
    );
  GEN_4BIT_4_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_16_IBUF_19,
      I1 => B_16_IBUF_80,
      I2 => B_15_IBUF_73,
      I3 => GEN_4BIT_3_FA4_inst_c_2_Q,
      I4 => A_15_IBUF_12,
      O => Sum_16_OBUF_141
    );
  GEN_4BIT_4_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_18_IBUF_17,
      I1 => B_18_IBUF_78,
      I2 => B_17_IBUF_79,
      I3 => GEN_4BIT_4_FA4_inst_c_0_Q,
      I4 => A_17_IBUF_18,
      O => GEN_4BIT_4_FA4_inst_c_2_Q
    );
  GEN_4BIT_4_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_18_IBUF_17,
      I1 => B_18_IBUF_78,
      I2 => B_17_IBUF_79,
      I3 => GEN_4BIT_4_FA4_inst_c_0_Q,
      I4 => A_17_IBUF_18,
      O => Sum_18_OBUF_139
    );
  GEN_4BIT_5_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_20_IBUF_23,
      I1 => B_20_IBUF_84,
      I2 => B_19_IBUF_77,
      I3 => GEN_4BIT_4_FA4_inst_c_2_Q,
      I4 => A_19_IBUF_16,
      O => GEN_4BIT_5_FA4_inst_c_0_Q
    );
  GEN_4BIT_5_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_20_IBUF_23,
      I1 => B_20_IBUF_84,
      I2 => B_19_IBUF_77,
      I3 => GEN_4BIT_4_FA4_inst_c_2_Q,
      I4 => A_19_IBUF_16,
      O => Sum_20_OBUF_145
    );
  GEN_4BIT_5_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_22_IBUF_21,
      I1 => B_22_IBUF_82,
      I2 => B_21_IBUF_83,
      I3 => GEN_4BIT_5_FA4_inst_c_0_Q,
      I4 => A_21_IBUF_22,
      O => GEN_4BIT_5_FA4_inst_c_2_Q
    );
  GEN_4BIT_5_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_22_IBUF_21,
      I1 => B_22_IBUF_82,
      I2 => B_21_IBUF_83,
      I3 => GEN_4BIT_5_FA4_inst_c_0_Q,
      I4 => A_21_IBUF_22,
      O => Sum_22_OBUF_143
    );
  GEN_4BIT_6_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_24_IBUF_27,
      I1 => B_24_IBUF_88,
      I2 => B_23_IBUF_81,
      I3 => GEN_4BIT_5_FA4_inst_c_2_Q,
      I4 => A_23_IBUF_20,
      O => GEN_4BIT_6_FA4_inst_c_0_Q
    );
  GEN_4BIT_6_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_24_IBUF_27,
      I1 => B_24_IBUF_88,
      I2 => B_23_IBUF_81,
      I3 => GEN_4BIT_5_FA4_inst_c_2_Q,
      I4 => A_23_IBUF_20,
      O => Sum_24_OBUF_149
    );
  GEN_4BIT_6_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_26_IBUF_25,
      I1 => B_26_IBUF_86,
      I2 => B_25_IBUF_87,
      I3 => GEN_4BIT_6_FA4_inst_c_0_Q,
      I4 => A_25_IBUF_26,
      O => GEN_4BIT_6_FA4_inst_c_2_Q
    );
  GEN_4BIT_6_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_26_IBUF_25,
      I1 => B_26_IBUF_86,
      I2 => B_25_IBUF_87,
      I3 => GEN_4BIT_6_FA4_inst_c_0_Q,
      I4 => A_25_IBUF_26,
      O => Sum_26_OBUF_147
    );
  GEN_4BIT_7_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_28_IBUF_31,
      I1 => B_28_IBUF_92,
      I2 => B_27_IBUF_85,
      I3 => GEN_4BIT_6_FA4_inst_c_2_Q,
      I4 => A_27_IBUF_24,
      O => GEN_4BIT_7_FA4_inst_c_0_Q
    );
  GEN_4BIT_7_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_28_IBUF_31,
      I1 => B_28_IBUF_92,
      I2 => B_27_IBUF_85,
      I3 => GEN_4BIT_6_FA4_inst_c_2_Q,
      I4 => A_27_IBUF_24,
      O => Sum_28_OBUF_153
    );
  GEN_4BIT_7_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_30_IBUF_29,
      I1 => B_30_IBUF_90,
      I2 => B_29_IBUF_91,
      I3 => GEN_4BIT_7_FA4_inst_c_0_Q,
      I4 => A_29_IBUF_30,
      O => GEN_4BIT_7_FA4_inst_c_2_Q
    );
  GEN_4BIT_7_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_30_IBUF_29,
      I1 => B_30_IBUF_90,
      I2 => B_29_IBUF_91,
      I3 => GEN_4BIT_7_FA4_inst_c_0_Q,
      I4 => A_29_IBUF_30,
      O => Sum_30_OBUF_151
    );
  GEN_4BIT_8_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_32_IBUF_35,
      I1 => B_32_IBUF_96,
      I2 => B_31_IBUF_89,
      I3 => GEN_4BIT_7_FA4_inst_c_2_Q,
      I4 => A_31_IBUF_28,
      O => GEN_4BIT_8_FA4_inst_c_0_Q
    );
  GEN_4BIT_8_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_32_IBUF_35,
      I1 => B_32_IBUF_96,
      I2 => B_31_IBUF_89,
      I3 => GEN_4BIT_7_FA4_inst_c_2_Q,
      I4 => A_31_IBUF_28,
      O => Sum_32_OBUF_157
    );
  GEN_4BIT_8_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_34_IBUF_33,
      I1 => B_34_IBUF_94,
      I2 => B_33_IBUF_95,
      I3 => GEN_4BIT_8_FA4_inst_c_0_Q,
      I4 => A_33_IBUF_34,
      O => GEN_4BIT_8_FA4_inst_c_2_Q
    );
  GEN_4BIT_8_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_34_IBUF_33,
      I1 => B_34_IBUF_94,
      I2 => B_33_IBUF_95,
      I3 => GEN_4BIT_8_FA4_inst_c_0_Q,
      I4 => A_33_IBUF_34,
      O => Sum_34_OBUF_155
    );
  GEN_4BIT_9_FA4_inst_FA0_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_36_IBUF_39,
      I1 => B_36_IBUF_100,
      I2 => B_35_IBUF_93,
      I3 => GEN_4BIT_8_FA4_inst_c_2_Q,
      I4 => A_35_IBUF_32,
      O => GEN_4BIT_9_FA4_inst_c_0_Q
    );
  GEN_4BIT_9_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_36_IBUF_39,
      I1 => B_36_IBUF_100,
      I2 => B_35_IBUF_93,
      I3 => GEN_4BIT_8_FA4_inst_c_2_Q,
      I4 => A_35_IBUF_32,
      O => Sum_36_OBUF_161
    );
  GEN_4BIT_9_FA4_inst_FA2_Cout1 : LUT5
    generic map(
      INIT => X"EEE8E888"
    )
    port map (
      I0 => A_38_IBUF_37,
      I1 => B_38_IBUF_98,
      I2 => B_37_IBUF_99,
      I3 => GEN_4BIT_9_FA4_inst_c_0_Q,
      I4 => A_37_IBUF_38,
      O => GEN_4BIT_9_FA4_inst_c_2_Q
    );
  GEN_4BIT_9_FA4_inst_FA2_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_38_IBUF_37,
      I1 => B_38_IBUF_98,
      I2 => B_37_IBUF_99,
      I3 => GEN_4BIT_9_FA4_inst_c_0_Q,
      I4 => A_37_IBUF_38,
      O => Sum_38_OBUF_159
    );
  A_60_IBUF : IBUF
    port map (
      I => A(60),
      O => A_60_IBUF_60
    );
  A_59_IBUF : IBUF
    port map (
      I => A(59),
      O => A_59_IBUF_56
    );
  A_58_IBUF : IBUF
    port map (
      I => A(58),
      O => A_58_IBUF_57
    );
  A_57_IBUF : IBUF
    port map (
      I => A(57),
      O => A_57_IBUF_58
    );
  A_56_IBUF : IBUF
    port map (
      I => A(56),
      O => A_56_IBUF_59
    );
  A_55_IBUF : IBUF
    port map (
      I => A(55),
      O => A_55_IBUF_52
    );
  A_54_IBUF : IBUF
    port map (
      I => A(54),
      O => A_54_IBUF_53
    );
  A_53_IBUF : IBUF
    port map (
      I => A(53),
      O => A_53_IBUF_54
    );
  A_52_IBUF : IBUF
    port map (
      I => A(52),
      O => A_52_IBUF_55
    );
  A_51_IBUF : IBUF
    port map (
      I => A(51),
      O => A_51_IBUF_48
    );
  A_50_IBUF : IBUF
    port map (
      I => A(50),
      O => A_50_IBUF_49
    );
  A_49_IBUF : IBUF
    port map (
      I => A(49),
      O => A_49_IBUF_50
    );
  A_48_IBUF : IBUF
    port map (
      I => A(48),
      O => A_48_IBUF_51
    );
  A_47_IBUF : IBUF
    port map (
      I => A(47),
      O => A_47_IBUF_44
    );
  A_46_IBUF : IBUF
    port map (
      I => A(46),
      O => A_46_IBUF_45
    );
  A_45_IBUF : IBUF
    port map (
      I => A(45),
      O => A_45_IBUF_46
    );
  A_44_IBUF : IBUF
    port map (
      I => A(44),
      O => A_44_IBUF_47
    );
  A_43_IBUF : IBUF
    port map (
      I => A(43),
      O => A_43_IBUF_40
    );
  A_42_IBUF : IBUF
    port map (
      I => A(42),
      O => A_42_IBUF_41
    );
  A_41_IBUF : IBUF
    port map (
      I => A(41),
      O => A_41_IBUF_42
    );
  A_40_IBUF : IBUF
    port map (
      I => A(40),
      O => A_40_IBUF_43
    );
  A_39_IBUF : IBUF
    port map (
      I => A(39),
      O => A_39_IBUF_36
    );
  A_38_IBUF : IBUF
    port map (
      I => A(38),
      O => A_38_IBUF_37
    );
  A_37_IBUF : IBUF
    port map (
      I => A(37),
      O => A_37_IBUF_38
    );
  A_36_IBUF : IBUF
    port map (
      I => A(36),
      O => A_36_IBUF_39
    );
  A_35_IBUF : IBUF
    port map (
      I => A(35),
      O => A_35_IBUF_32
    );
  A_34_IBUF : IBUF
    port map (
      I => A(34),
      O => A_34_IBUF_33
    );
  A_33_IBUF : IBUF
    port map (
      I => A(33),
      O => A_33_IBUF_34
    );
  A_32_IBUF : IBUF
    port map (
      I => A(32),
      O => A_32_IBUF_35
    );
  A_31_IBUF : IBUF
    port map (
      I => A(31),
      O => A_31_IBUF_28
    );
  A_30_IBUF : IBUF
    port map (
      I => A(30),
      O => A_30_IBUF_29
    );
  A_29_IBUF : IBUF
    port map (
      I => A(29),
      O => A_29_IBUF_30
    );
  A_28_IBUF : IBUF
    port map (
      I => A(28),
      O => A_28_IBUF_31
    );
  A_27_IBUF : IBUF
    port map (
      I => A(27),
      O => A_27_IBUF_24
    );
  A_26_IBUF : IBUF
    port map (
      I => A(26),
      O => A_26_IBUF_25
    );
  A_25_IBUF : IBUF
    port map (
      I => A(25),
      O => A_25_IBUF_26
    );
  A_24_IBUF : IBUF
    port map (
      I => A(24),
      O => A_24_IBUF_27
    );
  A_23_IBUF : IBUF
    port map (
      I => A(23),
      O => A_23_IBUF_20
    );
  A_22_IBUF : IBUF
    port map (
      I => A(22),
      O => A_22_IBUF_21
    );
  A_21_IBUF : IBUF
    port map (
      I => A(21),
      O => A_21_IBUF_22
    );
  A_20_IBUF : IBUF
    port map (
      I => A(20),
      O => A_20_IBUF_23
    );
  A_19_IBUF : IBUF
    port map (
      I => A(19),
      O => A_19_IBUF_16
    );
  A_18_IBUF : IBUF
    port map (
      I => A(18),
      O => A_18_IBUF_17
    );
  A_17_IBUF : IBUF
    port map (
      I => A(17),
      O => A_17_IBUF_18
    );
  A_16_IBUF : IBUF
    port map (
      I => A(16),
      O => A_16_IBUF_19
    );
  A_15_IBUF : IBUF
    port map (
      I => A(15),
      O => A_15_IBUF_12
    );
  A_14_IBUF : IBUF
    port map (
      I => A(14),
      O => A_14_IBUF_13
    );
  A_13_IBUF : IBUF
    port map (
      I => A(13),
      O => A_13_IBUF_14
    );
  A_12_IBUF : IBUF
    port map (
      I => A(12),
      O => A_12_IBUF_15
    );
  A_11_IBUF : IBUF
    port map (
      I => A(11),
      O => A_11_IBUF_8
    );
  A_10_IBUF : IBUF
    port map (
      I => A(10),
      O => A_10_IBUF_9
    );
  A_9_IBUF : IBUF
    port map (
      I => A(9),
      O => A_9_IBUF_10
    );
  A_8_IBUF : IBUF
    port map (
      I => A(8),
      O => A_8_IBUF_11
    );
  A_7_IBUF : IBUF
    port map (
      I => A(7),
      O => A_7_IBUF_4
    );
  A_6_IBUF : IBUF
    port map (
      I => A(6),
      O => A_6_IBUF_5
    );
  A_5_IBUF : IBUF
    port map (
      I => A(5),
      O => A_5_IBUF_6
    );
  A_4_IBUF : IBUF
    port map (
      I => A(4),
      O => A_4_IBUF_7
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_0
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_1
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_2
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_3
    );
  B_60_IBUF : IBUF
    port map (
      I => B(60),
      O => B_60_IBUF_121
    );
  B_59_IBUF : IBUF
    port map (
      I => B(59),
      O => B_59_IBUF_117
    );
  B_58_IBUF : IBUF
    port map (
      I => B(58),
      O => B_58_IBUF_118
    );
  B_57_IBUF : IBUF
    port map (
      I => B(57),
      O => B_57_IBUF_119
    );
  B_56_IBUF : IBUF
    port map (
      I => B(56),
      O => B_56_IBUF_120
    );
  B_55_IBUF : IBUF
    port map (
      I => B(55),
      O => B_55_IBUF_113
    );
  B_54_IBUF : IBUF
    port map (
      I => B(54),
      O => B_54_IBUF_114
    );
  B_53_IBUF : IBUF
    port map (
      I => B(53),
      O => B_53_IBUF_115
    );
  B_52_IBUF : IBUF
    port map (
      I => B(52),
      O => B_52_IBUF_116
    );
  B_51_IBUF : IBUF
    port map (
      I => B(51),
      O => B_51_IBUF_109
    );
  B_50_IBUF : IBUF
    port map (
      I => B(50),
      O => B_50_IBUF_110
    );
  B_49_IBUF : IBUF
    port map (
      I => B(49),
      O => B_49_IBUF_111
    );
  B_48_IBUF : IBUF
    port map (
      I => B(48),
      O => B_48_IBUF_112
    );
  B_47_IBUF : IBUF
    port map (
      I => B(47),
      O => B_47_IBUF_105
    );
  B_46_IBUF : IBUF
    port map (
      I => B(46),
      O => B_46_IBUF_106
    );
  B_45_IBUF : IBUF
    port map (
      I => B(45),
      O => B_45_IBUF_107
    );
  B_44_IBUF : IBUF
    port map (
      I => B(44),
      O => B_44_IBUF_108
    );
  B_43_IBUF : IBUF
    port map (
      I => B(43),
      O => B_43_IBUF_101
    );
  B_42_IBUF : IBUF
    port map (
      I => B(42),
      O => B_42_IBUF_102
    );
  B_41_IBUF : IBUF
    port map (
      I => B(41),
      O => B_41_IBUF_103
    );
  B_40_IBUF : IBUF
    port map (
      I => B(40),
      O => B_40_IBUF_104
    );
  B_39_IBUF : IBUF
    port map (
      I => B(39),
      O => B_39_IBUF_97
    );
  B_38_IBUF : IBUF
    port map (
      I => B(38),
      O => B_38_IBUF_98
    );
  B_37_IBUF : IBUF
    port map (
      I => B(37),
      O => B_37_IBUF_99
    );
  B_36_IBUF : IBUF
    port map (
      I => B(36),
      O => B_36_IBUF_100
    );
  B_35_IBUF : IBUF
    port map (
      I => B(35),
      O => B_35_IBUF_93
    );
  B_34_IBUF : IBUF
    port map (
      I => B(34),
      O => B_34_IBUF_94
    );
  B_33_IBUF : IBUF
    port map (
      I => B(33),
      O => B_33_IBUF_95
    );
  B_32_IBUF : IBUF
    port map (
      I => B(32),
      O => B_32_IBUF_96
    );
  B_31_IBUF : IBUF
    port map (
      I => B(31),
      O => B_31_IBUF_89
    );
  B_30_IBUF : IBUF
    port map (
      I => B(30),
      O => B_30_IBUF_90
    );
  B_29_IBUF : IBUF
    port map (
      I => B(29),
      O => B_29_IBUF_91
    );
  B_28_IBUF : IBUF
    port map (
      I => B(28),
      O => B_28_IBUF_92
    );
  B_27_IBUF : IBUF
    port map (
      I => B(27),
      O => B_27_IBUF_85
    );
  B_26_IBUF : IBUF
    port map (
      I => B(26),
      O => B_26_IBUF_86
    );
  B_25_IBUF : IBUF
    port map (
      I => B(25),
      O => B_25_IBUF_87
    );
  B_24_IBUF : IBUF
    port map (
      I => B(24),
      O => B_24_IBUF_88
    );
  B_23_IBUF : IBUF
    port map (
      I => B(23),
      O => B_23_IBUF_81
    );
  B_22_IBUF : IBUF
    port map (
      I => B(22),
      O => B_22_IBUF_82
    );
  B_21_IBUF : IBUF
    port map (
      I => B(21),
      O => B_21_IBUF_83
    );
  B_20_IBUF : IBUF
    port map (
      I => B(20),
      O => B_20_IBUF_84
    );
  B_19_IBUF : IBUF
    port map (
      I => B(19),
      O => B_19_IBUF_77
    );
  B_18_IBUF : IBUF
    port map (
      I => B(18),
      O => B_18_IBUF_78
    );
  B_17_IBUF : IBUF
    port map (
      I => B(17),
      O => B_17_IBUF_79
    );
  B_16_IBUF : IBUF
    port map (
      I => B(16),
      O => B_16_IBUF_80
    );
  B_15_IBUF : IBUF
    port map (
      I => B(15),
      O => B_15_IBUF_73
    );
  B_14_IBUF : IBUF
    port map (
      I => B(14),
      O => B_14_IBUF_74
    );
  B_13_IBUF : IBUF
    port map (
      I => B(13),
      O => B_13_IBUF_75
    );
  B_12_IBUF : IBUF
    port map (
      I => B(12),
      O => B_12_IBUF_76
    );
  B_11_IBUF : IBUF
    port map (
      I => B(11),
      O => B_11_IBUF_69
    );
  B_10_IBUF : IBUF
    port map (
      I => B(10),
      O => B_10_IBUF_70
    );
  B_9_IBUF : IBUF
    port map (
      I => B(9),
      O => B_9_IBUF_71
    );
  B_8_IBUF : IBUF
    port map (
      I => B(8),
      O => B_8_IBUF_72
    );
  B_7_IBUF : IBUF
    port map (
      I => B(7),
      O => B_7_IBUF_65
    );
  B_6_IBUF : IBUF
    port map (
      I => B(6),
      O => B_6_IBUF_66
    );
  B_5_IBUF : IBUF
    port map (
      I => B(5),
      O => B_5_IBUF_67
    );
  B_4_IBUF : IBUF
    port map (
      I => B(4),
      O => B_4_IBUF_68
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_61
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_62
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_63
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_64
    );
  Sum_60_OBUF : OBUF
    port map (
      I => Sum_60_OBUF_188,
      O => Sum(60)
    );
  Sum_59_OBUF : OBUF
    port map (
      I => Sum_59_OBUF_183,
      O => Sum(59)
    );
  Sum_58_OBUF : OBUF
    port map (
      I => Sum_58_OBUF_184,
      O => Sum(58)
    );
  Sum_57_OBUF : OBUF
    port map (
      I => Sum_57_OBUF_185,
      O => Sum(57)
    );
  Sum_56_OBUF : OBUF
    port map (
      I => Sum_56_OBUF_186,
      O => Sum(56)
    );
  Sum_55_OBUF : OBUF
    port map (
      I => Sum_55_OBUF_178,
      O => Sum(55)
    );
  Sum_54_OBUF : OBUF
    port map (
      I => Sum_54_OBUF_179,
      O => Sum(54)
    );
  Sum_53_OBUF : OBUF
    port map (
      I => Sum_53_OBUF_180,
      O => Sum(53)
    );
  Sum_52_OBUF : OBUF
    port map (
      I => Sum_52_OBUF_181,
      O => Sum(52)
    );
  Sum_51_OBUF : OBUF
    port map (
      I => Sum_51_OBUF_173,
      O => Sum(51)
    );
  Sum_50_OBUF : OBUF
    port map (
      I => Sum_50_OBUF_174,
      O => Sum(50)
    );
  Sum_49_OBUF : OBUF
    port map (
      I => Sum_49_OBUF_175,
      O => Sum(49)
    );
  Sum_48_OBUF : OBUF
    port map (
      I => Sum_48_OBUF_176,
      O => Sum(48)
    );
  Sum_47_OBUF : OBUF
    port map (
      I => Sum_47_OBUF_168,
      O => Sum(47)
    );
  Sum_46_OBUF : OBUF
    port map (
      I => Sum_46_OBUF_169,
      O => Sum(46)
    );
  Sum_45_OBUF : OBUF
    port map (
      I => Sum_45_OBUF_170,
      O => Sum(45)
    );
  Sum_44_OBUF : OBUF
    port map (
      I => Sum_44_OBUF_171,
      O => Sum(44)
    );
  Sum_43_OBUF : OBUF
    port map (
      I => Sum_43_OBUF_163,
      O => Sum(43)
    );
  Sum_42_OBUF : OBUF
    port map (
      I => Sum_42_OBUF_164,
      O => Sum(42)
    );
  Sum_41_OBUF : OBUF
    port map (
      I => Sum_41_OBUF_165,
      O => Sum(41)
    );
  Sum_40_OBUF : OBUF
    port map (
      I => Sum_40_OBUF_166,
      O => Sum(40)
    );
  Sum_39_OBUF : OBUF
    port map (
      I => Sum_39_OBUF_158,
      O => Sum(39)
    );
  Sum_38_OBUF : OBUF
    port map (
      I => Sum_38_OBUF_159,
      O => Sum(38)
    );
  Sum_37_OBUF : OBUF
    port map (
      I => Sum_37_OBUF_160,
      O => Sum(37)
    );
  Sum_36_OBUF : OBUF
    port map (
      I => Sum_36_OBUF_161,
      O => Sum(36)
    );
  Sum_35_OBUF : OBUF
    port map (
      I => Sum_35_OBUF_154,
      O => Sum(35)
    );
  Sum_34_OBUF : OBUF
    port map (
      I => Sum_34_OBUF_155,
      O => Sum(34)
    );
  Sum_33_OBUF : OBUF
    port map (
      I => Sum_33_OBUF_156,
      O => Sum(33)
    );
  Sum_32_OBUF : OBUF
    port map (
      I => Sum_32_OBUF_157,
      O => Sum(32)
    );
  Sum_31_OBUF : OBUF
    port map (
      I => Sum_31_OBUF_150,
      O => Sum(31)
    );
  Sum_30_OBUF : OBUF
    port map (
      I => Sum_30_OBUF_151,
      O => Sum(30)
    );
  Sum_29_OBUF : OBUF
    port map (
      I => Sum_29_OBUF_152,
      O => Sum(29)
    );
  Sum_28_OBUF : OBUF
    port map (
      I => Sum_28_OBUF_153,
      O => Sum(28)
    );
  Sum_27_OBUF : OBUF
    port map (
      I => Sum_27_OBUF_146,
      O => Sum(27)
    );
  Sum_26_OBUF : OBUF
    port map (
      I => Sum_26_OBUF_147,
      O => Sum(26)
    );
  Sum_25_OBUF : OBUF
    port map (
      I => Sum_25_OBUF_148,
      O => Sum(25)
    );
  Sum_24_OBUF : OBUF
    port map (
      I => Sum_24_OBUF_149,
      O => Sum(24)
    );
  Sum_23_OBUF : OBUF
    port map (
      I => Sum_23_OBUF_142,
      O => Sum(23)
    );
  Sum_22_OBUF : OBUF
    port map (
      I => Sum_22_OBUF_143,
      O => Sum(22)
    );
  Sum_21_OBUF : OBUF
    port map (
      I => Sum_21_OBUF_144,
      O => Sum(21)
    );
  Sum_20_OBUF : OBUF
    port map (
      I => Sum_20_OBUF_145,
      O => Sum(20)
    );
  Sum_19_OBUF : OBUF
    port map (
      I => Sum_19_OBUF_138,
      O => Sum(19)
    );
  Sum_18_OBUF : OBUF
    port map (
      I => Sum_18_OBUF_139,
      O => Sum(18)
    );
  Sum_17_OBUF : OBUF
    port map (
      I => Sum_17_OBUF_140,
      O => Sum(17)
    );
  Sum_16_OBUF : OBUF
    port map (
      I => Sum_16_OBUF_141,
      O => Sum(16)
    );
  Sum_15_OBUF : OBUF
    port map (
      I => Sum_15_OBUF_134,
      O => Sum(15)
    );
  Sum_14_OBUF : OBUF
    port map (
      I => Sum_14_OBUF_135,
      O => Sum(14)
    );
  Sum_13_OBUF : OBUF
    port map (
      I => Sum_13_OBUF_136,
      O => Sum(13)
    );
  Sum_12_OBUF : OBUF
    port map (
      I => Sum_12_OBUF_137,
      O => Sum(12)
    );
  Sum_11_OBUF : OBUF
    port map (
      I => Sum_11_OBUF_130,
      O => Sum(11)
    );
  Sum_10_OBUF : OBUF
    port map (
      I => Sum_10_OBUF_131,
      O => Sum(10)
    );
  Sum_9_OBUF : OBUF
    port map (
      I => Sum_9_OBUF_132,
      O => Sum(9)
    );
  Sum_8_OBUF : OBUF
    port map (
      I => Sum_8_OBUF_133,
      O => Sum(8)
    );
  Sum_7_OBUF : OBUF
    port map (
      I => Sum_7_OBUF_126,
      O => Sum(7)
    );
  Sum_6_OBUF : OBUF
    port map (
      I => Sum_6_OBUF_127,
      O => Sum(6)
    );
  Sum_5_OBUF : OBUF
    port map (
      I => Sum_5_OBUF_128,
      O => Sum(5)
    );
  Sum_4_OBUF : OBUF
    port map (
      I => Sum_4_OBUF_129,
      O => Sum(4)
    );
  Sum_3_OBUF : OBUF
    port map (
      I => Sum_3_OBUF_122,
      O => Sum(3)
    );
  Sum_2_OBUF : OBUF
    port map (
      I => Sum_2_OBUF_123,
      O => Sum(2)
    );
  Sum_1_OBUF : OBUF
    port map (
      I => Sum_1_OBUF_124,
      O => Sum(1)
    );
  Sum_0_OBUF : OBUF
    port map (
      I => Sum_0_OBUF_125,
      O => Sum(0)
    );
  Cout_OBUF : OBUF
    port map (
      I => Cout_OBUF_189,
      O => Cout
    );
  GEN_4BIT_10_FA4_inst_FA0_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"99969666"
    )
    port map (
      I0 => A_40_IBUF_43,
      I1 => B_40_IBUF_104,
      I2 => B_39_IBUF_97,
      I3 => GEN_4BIT_9_FA4_inst_c_2_Q,
      I4 => A_39_IBUF_36,
      O => Sum_40_OBUF_166
    );

end Structure;

