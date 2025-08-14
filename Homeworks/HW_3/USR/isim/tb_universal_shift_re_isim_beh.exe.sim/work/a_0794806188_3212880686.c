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
static const char *ng0 = "C:/Users/thanotos/Documents/FPGA/USR/universal_shift_reg.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0794806188_3212880686_p_0(char *t0)
{
    char t32[16];
    char t33[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t34;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 3976);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = (t0 + 6251);
    t11 = xsi_mem_cmp(t2, t5, 3U);
    if (t11 == 1)
        goto LAB8;

LAB16:    t7 = (t0 + 6254);
    t12 = xsi_mem_cmp(t7, t5, 3U);
    if (t12 == 1)
        goto LAB9;

LAB17:    t9 = (t0 + 6257);
    t13 = xsi_mem_cmp(t9, t5, 3U);
    if (t13 == 1)
        goto LAB10;

LAB18:    t14 = (t0 + 6260);
    t16 = xsi_mem_cmp(t14, t5, 3U);
    if (t16 == 1)
        goto LAB11;

LAB19:    t17 = (t0 + 6263);
    t19 = xsi_mem_cmp(t17, t5, 3U);
    if (t19 == 1)
        goto LAB12;

LAB20:    t20 = (t0 + 6266);
    t22 = xsi_mem_cmp(t20, t5, 3U);
    if (t22 == 1)
        goto LAB13;

LAB21:    t23 = (t0 + 6269);
    t25 = xsi_mem_cmp(t23, t5, 3U);
    if (t25 == 1)
        goto LAB14;

LAB22:
LAB15:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t26 = (7 - 7);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_delta(t5, 1U, 7U, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t11 = (7 - 7);
    t26 = (t11 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(55, ng0);
    goto LAB7;

LAB9:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3976);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t26 = (7 - 6);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_delta(t5, 0U, 7U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3976);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);
    goto LAB7;

LAB11:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t26 = (7 - 7);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_delta(t5, 1U, 7U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3976);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB7;

LAB12:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t26 = (7 - 6);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t11 = (7 - 7);
    t29 = (t11 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t5 = (t6 + t31);
    t3 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t33 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 6;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t12 = (0 - 6);
    t34 = (t12 * -1);
    t34 = (t34 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t34;
    t7 = xsi_base_array_concat(t7, t32, t8, (char)97, t1, t33, (char)99, t3, (char)101);
    t34 = (7U + 1U);
    t4 = (8U != t34);
    if (t4 == 1)
        goto LAB24;

LAB25:    t10 = (t0 + 3976);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB7;

LAB13:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t11 = (0 - 7);
    t26 = (t11 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t29 = (7 - 7);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t5 = (t6 + t31);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t33 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 7;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t12 = (1 - 7);
    t34 = (t12 * -1);
    t34 = (t34 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t34;
    t7 = xsi_base_array_concat(t7, t32, t8, (char)99, t3, (char)97, t5, t33, (char)101);
    t34 = (1U + 7U);
    t4 = (8U != t34);
    if (t4 == 1)
        goto LAB26;

LAB27:    t10 = (t0 + 3976);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB7;

LAB14:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t26 = (7 - 6);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t5 = (t0 + 3976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 7U);
    xsi_driver_first_trans_delta(t5, 0U, 7U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3976);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 7U, 1, 0LL);
    goto LAB7;

LAB23:;
LAB24:    xsi_size_not_matching(8U, t34, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(8U, t34, 0);
    goto LAB27;

}

static void work_a_0794806188_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4040);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3896);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0794806188_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0794806188_3212880686_p_0,(void *)work_a_0794806188_3212880686_p_1};
	xsi_register_didat("work_a_0794806188_3212880686", "isim/tb_universal_shift_re_isim_beh.exe.sim/work/a_0794806188_3212880686.didat");
	xsi_register_executes(pe);
}
