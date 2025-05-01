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
static const char *ng0 = "C:/Users/thanotos/Documents/FPGA/arith_circ_2/arith_unit.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_2797637665_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t1 = (t0 + 7192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 7048);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_1516540902_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t2 = (t0 + 2248U);
    t3 = *((char **)t2);
    t2 = (t0 + 11256U);
    t4 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t3, t2);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (4U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 7256);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 4U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 7064);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t7, 0);
    goto LAB6;

}

static void work_a_2797637665_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 7320);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_1516540902_p_3(char *t0)
{
    char t1[16];
    char t2[16];
    char t18[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t3 = (t0 + 2248U);
    t4 = *((char **)t3);
    t3 = (t0 + 11256U);
    t5 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t2, t4, t3);
    t6 = xsi_get_transient_memory(4U);
    memset(t6, 0, 4U);
    t7 = t6;
    t8 = (t0 + 2568U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    if (-1 == 1)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (1U * t13);
    t8 = (t7 + t14);
    t15 = (0 - 3);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t17 = (1U * t16);
    memset(t8, t10, t17);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (3 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t20 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t5, t2, t6, t18);
    t23 = (t1 + 12U);
    t22 = *((unsigned int *)t23);
    t24 = (1U * t22);
    t25 = (4U != t24);
    if (t25 == 1)
        goto LAB8;

LAB9:    t26 = (t0 + 7384);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t20, 4U);
    xsi_driver_first_trans_fast(t26);

LAB2:    t31 = (t0 + 7080);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t11 = 3;
    goto LAB7;

LAB8:    xsi_size_not_matching(4U, t24, 0);
    goto LAB9;

}

static void work_a_2797637665_1516540902_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7448);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);

LAB2:    t8 = (t0 + 7096);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2797637665_1516540902_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 7512);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 7112);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2797637665_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2797637665_1516540902_p_0,(void *)work_a_2797637665_1516540902_p_1,(void *)work_a_2797637665_1516540902_p_2,(void *)work_a_2797637665_1516540902_p_3,(void *)work_a_2797637665_1516540902_p_4,(void *)work_a_2797637665_1516540902_p_5};
	xsi_register_didat("work_a_2797637665_1516540902", "isim/tb_arith_unit_isim_beh.exe.sim/work/a_2797637665_1516540902.didat");
	xsi_register_executes(pe);
}
