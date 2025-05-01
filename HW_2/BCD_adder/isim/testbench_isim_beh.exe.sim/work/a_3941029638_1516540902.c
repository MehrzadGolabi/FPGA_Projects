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
static const char *ng0 = "C:/Users/thanotos/Documents/FPGA/BCD_adder/BCD_adder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781543830_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_3941029638_1516540902_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 7240U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (t0 + 4664);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 4536);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3941029638_1516540902_p_1(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 7256U);
    t3 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t2, t1, 9);
    if (t3 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 5U);
    xsi_driver_first_trans_fast(t1);

LAB3:    t1 = (t0 + 4552);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t5 = (t0 + 7256U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t4, t6, t5, 6);
    t8 = (t4 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (5U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4728);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB3;

LAB5:    xsi_size_not_matching(5U, t10, 0);
    goto LAB6;

}

static void work_a_3941029638_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4568);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3941029638_1516540902_p_3(char *t0)
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

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4856);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4584);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3941029638_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3941029638_1516540902_p_0,(void *)work_a_3941029638_1516540902_p_1,(void *)work_a_3941029638_1516540902_p_2,(void *)work_a_3941029638_1516540902_p_3};
	xsi_register_didat("work_a_3941029638_1516540902", "isim/testbench_isim_beh.exe.sim/work/a_3941029638_1516540902.didat");
	xsi_register_executes(pe);
}
