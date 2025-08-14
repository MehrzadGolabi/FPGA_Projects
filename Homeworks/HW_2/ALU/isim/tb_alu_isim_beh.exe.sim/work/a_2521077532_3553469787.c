/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/thanotos/Documents/FPGA/ALU/tb_alu.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_0874702962;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_2521077532_3553469787_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    int64 t15;
    char *t16;
    int t17;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = ((WORK_P_0874702962) + 1168U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, 5, t5);
    t6 = (16U != 16U);
    if (t6 == 1)
        goto LAB4;

LAB5:    t7 = (t0 + 3456);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(59, ng0);
    t5 = (-(3));
    t2 = ((WORK_P_0874702962) + 1168U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, t5, t12);
    t7 = (t3 + 12U);
    t13 = *((unsigned int *)t7);
    t13 = (t13 * 1U);
    t6 = (16U != t13);
    if (t6 == 1)
        goto LAB6;

LAB7:    t8 = (t0 + 3520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t15);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB4:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB5;

LAB6:    xsi_size_not_matching(16U, t13, 0);
    goto LAB7;

LAB8:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5644);
    *((int *)t2) = 0;
    t4 = (t0 + 5648);
    *((int *)t4) = 22;
    t5 = 0;
    t12 = 22;

LAB12:    if (t5 <= t12)
        goto LAB13;

LAB15:    xsi_set_current_line(67, ng0);
    t5 = (-(7));
    t2 = ((WORK_P_0874702962) + 1168U);
    t4 = *((char **)t2);
    t12 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, t5, t12);
    t7 = (t3 + 12U);
    t13 = *((unsigned int *)t7);
    t13 = (t13 * 1U);
    t6 = (16U != t13);
    if (t6 == 1)
        goto LAB21;

LAB22:    t8 = (t0 + 3456);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(68, ng0);
    t2 = ((WORK_P_0874702962) + 1168U);
    t4 = *((char **)t2);
    t5 = *((int *)t4);
    t2 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t3, 2, t5);
    t7 = (t3 + 12U);
    t13 = *((unsigned int *)t7);
    t13 = (t13 * 1U);
    t6 = (16U != t13);
    if (t6 == 1)
        goto LAB23;

LAB24:    t8 = (t0 + 3520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t15);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(63, ng0);
    t7 = (t0 + 5644);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t3, *((int *)t7), 5);
    t9 = (t0 + 3584);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t8, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t15);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 5644);
    t5 = *((int *)t2);
    t4 = (t0 + 5648);
    t12 = *((int *)t4);
    if (t5 == t12)
        goto LAB15;

LAB20:    t17 = (t5 + 1);
    t5 = t17;
    t7 = (t0 + 5644);
    *((int *)t7) = t5;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_size_not_matching(16U, t13, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(16U, t13, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5652);
    *((int *)t2) = 0;
    t4 = (t0 + 5656);
    *((int *)t4) = 22;
    t5 = 0;
    t12 = 22;

LAB29:    if (t5 <= t12)
        goto LAB30;

LAB32:    xsi_set_current_line(76, ng0);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB30:    xsi_set_current_line(72, ng0);
    t7 = (t0 + 5652);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t3, *((int *)t7), 5);
    t9 = (t0 + 3584);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t8, 5U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1968U);
    t4 = *((char **)t2);
    t15 = *((int64 *)t4);
    t2 = (t0 + 2880);
    xsi_process_wait(t2, t15);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB31:    t2 = (t0 + 5652);
    t5 = *((int *)t2);
    t4 = (t0 + 5656);
    t12 = *((int *)t4);
    if (t5 == t12)
        goto LAB32;

LAB37:    t17 = (t5 + 1);
    t5 = t17;
    t7 = (t0 + 5652);
    *((int *)t7) = t5;
    goto LAB29;

LAB33:    goto LAB31;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB38:    goto LAB2;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

}


extern void work_a_2521077532_3553469787_init()
{
	static char *pe[] = {(void *)work_a_2521077532_3553469787_p_0};
	xsi_register_didat("work_a_2521077532_3553469787", "isim/tb_alu_isim_beh.exe.sim/work/a_2521077532_3553469787.didat");
	xsi_register_executes(pe);
}
