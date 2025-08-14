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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/thanotos/Desktop/Fulladder_61_bit/tb_Adder_61bit.vhd";



static void work_a_2149024628_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)2, 61U);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(71, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)2, 61U);
    t4 = (t0 + 3112);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(72, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(75, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)3, 61U);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(76, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)2, 61U);
    t4 = (t0 + 3112);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(77, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(80, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)2, 61U);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(81, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)3, 61U);
    t4 = (t0 + 3112);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(82, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(88, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    if (-1 == -1)
        goto LAB16;

LAB17:    t10 = 31;

LAB18:    t11 = (t10 - 60);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t4 = (t3 + t13);
    t14 = (31 - 60);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t16 = (1U * t15);
    memset(t4, (unsigned char)2, t16);
    if (-1 == -1)
        goto LAB19;

LAB20:    t17 = 0;

LAB21:    t18 = (t17 - 60);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t5 = (t3 + t20);
    t21 = (0 - 30);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t23 = (1U * t22);
    memset(t5, (unsigned char)3, t23);
    t6 = (t0 + 3048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t24 = (t8 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t2, 61U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(89, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    if (-1 == -1)
        goto LAB22;

LAB23:    t10 = 31;

LAB24:    t11 = (t10 - 60);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t4 = (t3 + t13);
    t14 = (31 - 60);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t16 = (1U * t15);
    memset(t4, (unsigned char)3, t16);
    if (-1 == -1)
        goto LAB25;

LAB26:    t17 = 0;

LAB27:    t18 = (t17 - 60);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t5 = (t3 + t20);
    t21 = (0 - 30);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t23 = (1U * t22);
    memset(t5, (unsigned char)2, t23);
    t6 = (t0 + 3112);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t24 = (t8 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t2, 61U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(90, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t9);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t10 = 60;
    goto LAB18;

LAB19:    t17 = 30;
    goto LAB21;

LAB22:    t10 = 60;
    goto LAB24;

LAB25:    t17 = 30;
    goto LAB27;

LAB28:    xsi_set_current_line(93, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)3, 61U);
    t4 = (t0 + 3048);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = xsi_get_transient_memory(61U);
    memset(t2, 0, 61U);
    t3 = t2;
    memset(t3, (unsigned char)3, 61U);
    t4 = (t0 + 3112);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 61U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t9);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(97, ng0);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_2149024628_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2149024628_3212880686_p_0};
	xsi_register_didat("work_a_2149024628_3212880686", "isim/tb_Adder_61bit_isim_beh.exe.sim/work/a_2149024628_3212880686.didat");
	xsi_register_executes(pe);
}
