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
extern char *STD_STANDARD;
static const char *ng1 = "C:/Users/thanotos/Documents/FPGA/HW_3/serialadder/serial_adder.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


int work_a_2351029487_3212880686_sub_1996920732_3057020925(char *t1, int t2)
{
    char t3[248];
    char t4[8];
    char t8[8];
    char t14[8];
    int t0;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    unsigned char t21;
    char *t22;
    int t23;
    int t24;
    char *t25;

LAB0:    t5 = (t3 + 4U);
    t6 = ((STD_STANDARD) + 832);
    t7 = (t5 + 88U);
    *((char **)t7) = t6;
    t9 = (t5 + 56U);
    *((char **)t9) = t8;
    *((int *)t8) = 1;
    t10 = (t5 + 80U);
    *((unsigned int *)t10) = 4U;
    t11 = (t3 + 124U);
    t12 = ((STD_STANDARD) + 832);
    t13 = (t11 + 88U);
    *((char **)t13) = t12;
    t15 = (t11 + 56U);
    *((char **)t15) = t14;
    *((int *)t14) = 0;
    t16 = (t11 + 80U);
    *((unsigned int *)t16) = 4U;
    t17 = (t4 + 4U);
    *((int *)t17) = t2;

LAB2:    t18 = (t5 + 56U);
    t19 = *((char **)t18);
    t20 = *((int *)t19);
    t21 = (t20 < t2);
    if (t21 != 0)
        goto LAB3;

LAB5:    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t0 = t20;

LAB1:    return t0;
LAB3:    t18 = (t5 + 56U);
    t22 = *((char **)t18);
    t23 = *((int *)t22);
    t24 = (t23 * 2);
    t18 = (t5 + 56U);
    t25 = *((char **)t18);
    t18 = (t25 + 0);
    *((int *)t18) = t24;
    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t20 = *((int *)t7);
    t23 = (t20 + 1);
    t6 = (t11 + 56U);
    t9 = *((char **)t6);
    t6 = (t9 + 0);
    *((int *)t6) = t23;
    goto LAB2;

LAB4:;
LAB6:;
}

static void work_a_2351029487_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(59, ng1);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5760);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 5648);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2351029487_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(60, ng1);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5824);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 53U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5664);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2351029487_3212880686_p_2(char *t0)
{
    char t26[16];
    char t27[16];
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    int t25;
    unsigned int t28;
    char *t29;

LAB0:    xsi_set_current_line(67, ng1);
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
LAB3:    t1 = (t0 + 5680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng1);
    t1 = xsi_get_transient_memory(53U);
    memset(t1, 0, 53U);
    t5 = t1;
    memset(t5, (unsigned char)2, 53U);
    t6 = (t0 + 5888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 53U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(69, ng1);
    t1 = xsi_get_transient_memory(53U);
    memset(t1, 0, 53U);
    t2 = t1;
    memset(t2, (unsigned char)2, 53U);
    t5 = (t0 + 5952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 53U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng1);
    t1 = xsi_get_transient_memory(53U);
    memset(t1, 0, 53U);
    t2 = t1;
    memset(t2, (unsigned char)2, 53U);
    t5 = (t0 + 6016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 53U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng1);
    t1 = (t0 + 6080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng1);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 6144);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng1);
    t1 = (t0 + 6208);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(79, ng1);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB14:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(80, ng1);
    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t2 = (t0 + 5888);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t7, 53U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng1);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5952);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 53U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng1);
    t1 = xsi_get_transient_memory(53U);
    memset(t1, 0, 53U);
    t2 = t1;
    memset(t2, (unsigned char)2, 53U);
    t5 = (t0 + 6016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 53U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng1);
    t1 = (t0 + 6080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng1);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 6144);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(85, ng1);
    t1 = (t0 + 6208);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    t2 = (t0 + 2952U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)2);
    t4 = t14;
    goto LAB12;

LAB13:    xsi_set_current_line(92, ng1);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t16 = (0 - 52);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t5 + t19);
    t11 = *((unsigned char *)t1);
    t6 = (t0 + 3488U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((unsigned char *)t6) = t11;
    xsi_set_current_line(93, ng1);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t16 = (0 - 52);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3608U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    *((unsigned char *)t5) = t3;
    xsi_set_current_line(96, ng1);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3608U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t11 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t13 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t11, t12);
    t1 = (t0 + 3728U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = t13;
    xsi_set_current_line(97, ng1);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3608U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 3488U);
    t6 = *((char **)t1);
    t12 = *((unsigned char *)t6);
    t1 = (t0 + 2632U);
    t7 = *((char **)t1);
    t13 = *((unsigned char *)t7);
    t14 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t12, t13);
    t20 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t11, t14);
    t1 = (t0 + 3608U);
    t8 = *((char **)t1);
    t21 = *((unsigned char *)t8);
    t1 = (t0 + 2632U);
    t9 = *((char **)t1);
    t22 = *((unsigned char *)t9);
    t23 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t21, t22);
    t24 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t20, t23);
    t1 = (t0 + 3848U);
    t10 = *((char **)t1);
    t1 = (t10 + 0);
    *((unsigned char *)t1) = t24;
    xsi_set_current_line(99, ng1);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 3368U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 53U);
    xsi_set_current_line(100, ng1);
    t1 = (t0 + 3728U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3368U);
    t5 = *((char **)t1);
    t1 = (t0 + 2792U);
    t6 = *((char **)t1);
    t1 = (t0 + 9396U);
    t16 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t1);
    t25 = (t16 - 52);
    t17 = (t25 * -1);
    xsi_vhdl_check_range_of_index(52, 0, -1, t16);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t7 = (t5 + t19);
    *((unsigned char *)t7) = t3;
    xsi_set_current_line(101, ng1);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t1 = (t0 + 6016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 53U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(103, ng1);
    t1 = (t0 + 3848U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6080);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(104, ng1);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t16 = (53 - 1);
    t17 = (52 - t16);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t27 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 52;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t25 = (1 - 52);
    t28 = (t25 * -1);
    t28 = (t28 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t28;
    t5 = xsi_base_array_concat(t5, t26, t6, (char)99, (unsigned char)2, (char)97, t1, t27, (char)101);
    t28 = (1U + 52U);
    t3 = (53U != t28);
    if (t3 == 1)
        goto LAB15;

LAB16:    t8 = (t0 + 5888);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t29 = *((char **)t15);
    memcpy(t29, t5, 53U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(105, ng1);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t16 = (53 - 1);
    t17 = (52 - t16);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t27 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 52;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t25 = (1 - 52);
    t28 = (t25 * -1);
    t28 = (t28 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t28;
    t5 = xsi_base_array_concat(t5, t26, t6, (char)99, (unsigned char)2, (char)97, t1, t27, (char)101);
    t28 = (1U + 52U);
    t3 = (53U != t28);
    if (t3 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 5952);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t29 = *((char **)t15);
    memcpy(t29, t5, 53U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(107, ng1);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 9396U);
    t16 = (53 - 1);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t16);
    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(110, ng1);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 9396U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t26, t2, t1, 1);
    t6 = (t26 + 12U);
    t17 = *((unsigned int *)t6);
    t18 = (1U * t17);
    t3 = (6U != t18);
    if (t3 == 1)
        goto LAB22;

LAB23:    t7 = (t0 + 6144);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t5, 6U);
    xsi_driver_first_trans_fast(t7);

LAB20:    goto LAB8;

LAB15:    xsi_size_not_matching(53U, t28, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(53U, t28, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(108, ng1);
    t5 = (t0 + 6208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    goto LAB20;

LAB22:    xsi_size_not_matching(6U, t18, 0);
    goto LAB23;

}


extern void work_a_2351029487_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2351029487_3212880686_p_0,(void *)work_a_2351029487_3212880686_p_1,(void *)work_a_2351029487_3212880686_p_2};
	static char *se[] = {(void *)work_a_2351029487_3212880686_sub_1996920732_3057020925};
	xsi_register_didat("work_a_2351029487_3212880686", "isim/serial_adder_tb8_isim_beh.exe.sim/work/a_2351029487_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
