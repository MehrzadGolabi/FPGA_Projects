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
static const char *ng0 = "/home/thanotos/floating_point/tamrin_5_1_e/FP_DIVIDER.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_17249857350030274602_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1987757588013599599_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2749763749646623249_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3525738511873186323_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3525738511873258197_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3538367364753032487_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_800139796931496790_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1581676636_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4888);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4792);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1581676636_3212880686_p_1(char *t0)
{
    char t14[16];
    char t15[16];
    char t18[16];
    char t19[16];
    char t22[16];
    char t24[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t16;
    unsigned int t17;
    unsigned int t20;
    unsigned int t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    int t34;
    int t35;
    int t36;
    int t37;
    unsigned char t38;
    char *t39;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4808);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 4952);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t11 = (31 - 22);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t6 = ((IEEE_P_1242562249) + 2976);
    t7 = (t15 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 22;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (0 - 22);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t4 = xsi_base_array_concat(t4, t14, t6, (char)99, (unsigned char)3, (char)97, t1, t15, (char)101);
    t8 = (t0 + 2768U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t17 = (1U + 23U);
    memcpy(t8, t4, t17);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t11 = (31 - 22);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t6 = ((IEEE_P_1242562249) + 2976);
    t7 = (t15 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 22;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (0 - 22);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t4 = xsi_base_array_concat(t4, t14, t6, (char)99, (unsigned char)3, (char)97, t1, t15, (char)101);
    t8 = (t0 + 2888U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t17 = (1U + 23U);
    memcpy(t8, t4, t17);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t11 = (31 - 30);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t19 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 30;
    t8 = (t7 + 4U);
    *((int *)t8) = 23;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t16 = (23 - 30);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t4 = xsi_base_array_concat(t4, t18, t6, (char)99, (unsigned char)2, (char)97, t1, t19, (char)101);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t17 = (31 - 30);
    t20 = (t17 * 1U);
    t21 = (0 + t20);
    t8 = (t9 + t21);
    t23 = ((IEEE_P_2592010699) + 4000);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 30;
    t26 = (t25 + 4U);
    *((int *)t26) = 23;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (23 - 30);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t10 = xsi_base_array_concat(t10, t22, t23, (char)99, (unsigned char)2, (char)97, t8, t24, (char)101);
    t26 = ieee_p_1242562249_sub_3525738511873258197_1035706684(IEEE_P_1242562249, t15, t4, t18, t10, t22);
    t29 = ieee_p_1242562249_sub_800139796931496790_1035706684(IEEE_P_1242562249, t14, t26, t15, 127);
    t30 = (t0 + 3248U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    t32 = (t14 + 12U);
    t28 = *((unsigned int *)t32);
    t33 = (1U * t28);
    memcpy(t30, t29, t33);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2768U);
    t3 = *((char **)t1);
    t1 = (t0 + 7960U);
    t4 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t15, t3, t1, 48);
    t6 = ieee_p_1242562249_sub_1987757588013599599_1035706684(IEEE_P_1242562249, t14, t4, t15, 24);
    t7 = (t0 + 3008U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    t9 = (t14 + 12U);
    t11 = *((unsigned int *)t9);
    t11 = (t11 * 1U);
    memcpy(t7, t6, t11);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 8286);
    *((int *)t1) = 0;
    t3 = (t0 + 8290);
    *((int *)t3) = 23;
    t16 = 0;
    t27 = 23;

LAB13:    if (t16 <= t27)
        goto LAB14;

LAB16:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3248U);
    t3 = *((char **)t1);
    t1 = (t0 + 5080);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 9U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t16 = (31 - 31);
    t11 = (t16 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1512U);
    t6 = *((char **)t4);
    t27 = (31 - 31);
    t17 = (t27 * -1);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    t5 = *((unsigned char *)t4);
    t38 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t2, t5);
    t7 = (t0 + 5144);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t23 = *((char **)t10);
    *((unsigned char *)t23) = t38;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t11 = (8 - 7);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t4 + t13);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t15 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t16 = (0 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t6 = xsi_base_array_concat(t6, t14, t7, (char)99, t2, (char)97, t1, t15, (char)101);
    t9 = (t0 + 3128U);
    t10 = *((char **)t9);
    t17 = (23 - 22);
    t20 = (t17 * 1U);
    t21 = (0 + t20);
    t9 = (t10 + t21);
    t25 = ((IEEE_P_2592010699) + 4000);
    t26 = (t19 + 0U);
    t29 = (t26 + 0U);
    *((int *)t29) = 22;
    t29 = (t26 + 4U);
    *((int *)t29) = 0;
    t29 = (t26 + 8U);
    *((int *)t29) = -1;
    t27 = (0 - 22);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t29 = (t26 + 12U);
    *((unsigned int *)t29) = t28;
    t23 = xsi_base_array_concat(t23, t18, t25, (char)97, t6, t14, (char)97, t9, t19, (char)101);
    t28 = (1U + 8U);
    t33 = (t28 + 23U);
    t5 = (32U != t33);
    if (t5 == 1)
        goto LAB21;

LAB22:    t29 = (t0 + 5208);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t39 = *((char **)t32);
    memcpy(t39, t23, 32U);
    xsi_driver_first_trans_fast(t29);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB5;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5016);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB14:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 3008U);
    t6 = *((char **)t4);
    t4 = (t0 + 7992U);
    t2 = ieee_p_1242562249_sub_3538367364753032487_1035706684(IEEE_P_1242562249, t6, t4, 0);
    if (t2 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t1 = (t0 + 7992U);
    t4 = ieee_p_1242562249_sub_17249857350030274602_1035706684(IEEE_P_1242562249, t15, t3, t1, 1);
    t6 = (t0 + 2888U);
    t7 = *((char **)t6);
    t6 = (t0 + 7976U);
    t8 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t19, t7, t6, 48);
    t9 = ieee_p_1242562249_sub_1987757588013599599_1035706684(IEEE_P_1242562249, t18, t8, t19, 24);
    t10 = ieee_p_1242562249_sub_3525738511873186323_1035706684(IEEE_P_1242562249, t14, t4, t15, t9, t18);
    t23 = (t0 + 3008U);
    t25 = *((char **)t23);
    t23 = (t25 + 0);
    t26 = (t14 + 12U);
    t11 = *((unsigned int *)t26);
    t12 = (1U * t11);
    memcpy(t23, t10, t12);

LAB18:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t34 = (47 - 47);
    t11 = (t34 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t3 + t13);
    t2 = *((unsigned char *)t1);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t2);
    t4 = (t0 + 3128U);
    t6 = *((char **)t4);
    t4 = (t0 + 8286);
    t35 = *((int *)t4);
    t36 = (23 - t35);
    t37 = (t36 - 23);
    t17 = (t37 * -1);
    xsi_vhdl_check_range_of_index(23, 0, -1, t36);
    t20 = (1U * t17);
    t21 = (0 + t20);
    t7 = (t6 + t21);
    *((unsigned char *)t7) = t5;

LAB15:    t1 = (t0 + 8286);
    t16 = *((int *)t1);
    t3 = (t0 + 8290);
    t27 = *((int *)t3);
    if (t16 == t27)
        goto LAB16;

LAB20:    t34 = (t16 + 1);
    t16 = t34;
    t4 = (t0 + 8286);
    *((int *)t4) = t16;
    goto LAB13;

LAB17:    xsi_set_current_line(73, ng0);
    t7 = (t0 + 3008U);
    t8 = *((char **)t7);
    t7 = (t0 + 7992U);
    t9 = ieee_p_1242562249_sub_17249857350030274602_1035706684(IEEE_P_1242562249, t15, t8, t7, 1);
    t10 = (t0 + 2888U);
    t23 = *((char **)t10);
    t10 = (t0 + 7976U);
    t25 = ieee_p_1242562249_sub_2749763749646623249_1035706684(IEEE_P_1242562249, t19, t23, t10, 48);
    t26 = ieee_p_1242562249_sub_1987757588013599599_1035706684(IEEE_P_1242562249, t18, t25, t19, 24);
    t29 = ieee_p_1242562249_sub_3525738511873258197_1035706684(IEEE_P_1242562249, t14, t9, t15, t26, t18);
    t30 = (t0 + 3008U);
    t31 = *((char **)t30);
    t30 = (t31 + 0);
    t32 = (t14 + 12U);
    t11 = *((unsigned int *)t32);
    t12 = (1U * t11);
    memcpy(t30, t29, t12);
    goto LAB18;

LAB21:    xsi_size_not_matching(32U, t33, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5016);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

}


extern void work_a_1581676636_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1581676636_3212880686_p_0,(void *)work_a_1581676636_3212880686_p_1};
	xsi_register_didat("work_a_1581676636_3212880686", "isim/FP_MATH_TB_isim_beh.exe.sim/work/a_1581676636_3212880686.didat");
	xsi_register_executes(pe);
}
