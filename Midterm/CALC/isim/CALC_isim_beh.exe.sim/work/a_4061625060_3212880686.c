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
static const char *ng0 = "C:/Users/Alireza/Desktop/CALC/CALC/CALC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_2110411308_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4061625060_3212880686_p_0(char *t0)
{
    char t6[16];
    char t8[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(99, ng0);

LAB3:    t1 = (t0 + 13479);
    t3 = (t0 + 3272U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 2;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t3 = xsi_base_array_concat(t3, t6, t7, (char)97, t1, t8, (char)99, t5, (char)101);
    t12 = (3U + 1U);
    t13 = (4U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 8280);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t18 = (t0 + 8088);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t12, 0);
    goto LAB6;

}

static void work_a_4061625060_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(100, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 8344);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 8104);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4061625060_3212880686_p_2(char *t0)
{
    char t11[16];
    char t14[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t12;
    unsigned char t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 8120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)0);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB30;

LAB32:
LAB31:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB38;

LAB40:
LAB39:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB46;

LAB48:
LAB47:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB49;

LAB51:
LAB50:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(106, ng0);
    t3 = (t0 + 2472U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB24;

LAB26:
LAB25:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB27;

LAB29:
LAB28:    goto LAB6;

LAB8:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 2152U);
    t10 = *((char **)t3);
    t3 = (t0 + 13264U);
    t12 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, 9, 4);
    t13 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t10, t3, t12, t11);
    if (t13 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 8408);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(108, ng0);
    t15 = (t0 + 2152U);
    t16 = *((char **)t15);
    t15 = (t0 + 13264U);
    t17 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t16, t15, 1);
    t18 = (t14 + 12U);
    t19 = *((unsigned int *)t18);
    t20 = (1U * t19);
    t21 = (4U != t20);
    if (t21 == 1)
        goto LAB14;

LAB15:    t22 = (t0 + 8408);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t17, 4U);
    xsi_driver_first_trans_fast(t22);
    goto LAB12;

LAB14:    xsi_size_not_matching(4U, t20, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 13264U);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, 0, 4);
    t6 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t4, t1, t7, t11);
    if (t6 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 8408);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(115, ng0);
    t10 = (t0 + 2152U);
    t12 = *((char **)t10);
    t10 = (t0 + 13264U);
    t15 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t14, t12, t10, 1);
    t16 = (t14 + 12U);
    t19 = *((unsigned int *)t16);
    t20 = (1U * t19);
    t8 = (4U != t20);
    if (t8 == 1)
        goto LAB22;

LAB23:    t17 = (t0 + 8408);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB20;

LAB22:    xsi_size_not_matching(4U, t20, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 8472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 8472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB30:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 13264U);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, 9, 4);
    t6 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t4, t1, t7, t11);
    if (t6 != 0)
        goto LAB33;

LAB35:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8536);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t1);

LAB34:    goto LAB31;

LAB33:    xsi_set_current_line(129, ng0);
    t10 = (t0 + 2312U);
    t12 = *((char **)t10);
    t10 = (t0 + 13264U);
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t14, t12, t10, 1);
    t16 = (t14 + 12U);
    t19 = *((unsigned int *)t16);
    t20 = (1U * t19);
    t8 = (4U != t20);
    if (t8 == 1)
        goto LAB36;

LAB37:    t17 = (t0 + 8536);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB34;

LAB36:    xsi_size_not_matching(4U, t20, 0);
    goto LAB37;

LAB38:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t1 = (t0 + 13264U);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, 0, 4);
    t6 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t4, t1, t7, t11);
    if (t6 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8536);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t1);

LAB42:    goto LAB39;

LAB41:    xsi_set_current_line(136, ng0);
    t10 = (t0 + 2312U);
    t12 = *((char **)t10);
    t10 = (t0 + 13264U);
    t15 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t14, t12, t10, 1);
    t16 = (t14 + 12U);
    t19 = *((unsigned int *)t16);
    t20 = (1U * t19);
    t8 = (4U != t20);
    if (t8 == 1)
        goto LAB44;

LAB45:    t17 = (t0 + 8536);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB42;

LAB44:    xsi_size_not_matching(4U, t20, 0);
    goto LAB45;

LAB46:    xsi_set_current_line(142, ng0);
    t1 = (t0 + 8472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB47;

LAB49:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 8472);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB50;

}

static void work_a_4061625060_3212880686_p_3(char *t0)
{
    char t8[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 8136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)0);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 13312U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 1000, 10);
    t2 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t3, t1, t4, t8);
    if (t2 != 0)
        goto LAB25;

LAB27:
LAB26:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t1 = (t0 + 13486);
    t2 = 1;
    if (4U == 4U)
        goto LAB31;

LAB32:    t2 = 0;

LAB33:    if (t2 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(178, ng0);
    t1 = (t0 + 8664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB29:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(155, ng0);
    t3 = (t0 + 4072U);
    t7 = *((char **)t3);
    t3 = (t0 + 13312U);
    t9 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 1000, 10);
    t10 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t7, t3, t9, t8);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t1 = (t0 + 13482);
    t2 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t2 = 0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(165, ng0);
    t1 = (t0 + 8664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB12:    goto LAB6;

LAB8:    xsi_set_current_line(156, ng0);
    t11 = xsi_get_transient_memory(10U);
    memset(t11, 0, 10U);
    t12 = t11;
    memset(t12, (unsigned char)2, 10U);
    t13 = (t0 + 8600);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 10U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB11:    xsi_set_current_line(159, ng0);
    t11 = (t0 + 8664);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_delta(t11, 0U, 1, 0LL);
    xsi_set_current_line(160, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 13312U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t3, t1, 1);
    t7 = (t8 + 12U);
    t18 = *((unsigned int *)t7);
    t19 = (1U * t18);
    t2 = (10U != t19);
    if (t2 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 8600);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 10U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 13312U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 500, 10);
    t2 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t3, t1, t4, t8);
    if (t2 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB12;

LAB14:    t18 = 0;

LAB17:    if (t18 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t7 = (t3 + t18);
    t9 = (t1 + t18);
    if (*((unsigned char *)t7) != *((unsigned char *)t9))
        goto LAB15;

LAB19:    t18 = (t18 + 1);
    goto LAB17;

LAB20:    xsi_size_not_matching(10U, t19, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(162, ng0);
    t7 = (t0 + 8664);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 0U, 1, 0LL);
    goto LAB23;

LAB25:    xsi_set_current_line(169, ng0);
    t7 = xsi_get_transient_memory(10U);
    memset(t7, 0, 10U);
    t9 = t7;
    memset(t9, (unsigned char)2, 10U);
    t11 = (t0 + 8600);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 10U);
    xsi_driver_first_trans_fast(t11);
    goto LAB26;

LAB28:    xsi_set_current_line(172, ng0);
    t11 = (t0 + 8664);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_delta(t11, 0U, 1, 0LL);
    xsi_set_current_line(173, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 13312U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t8, t3, t1, 1);
    t7 = (t8 + 12U);
    t18 = *((unsigned int *)t7);
    t19 = (1U * t18);
    t2 = (10U != t19);
    if (t2 == 1)
        goto LAB37;

LAB38:    t9 = (t0 + 8600);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 10U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(174, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t1 = (t0 + 13312U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 500, 10);
    t2 = ieee_p_1242562249_sub_2110411308_1035706684(IEEE_P_1242562249, t3, t1, t4, t8);
    if (t2 != 0)
        goto LAB39;

LAB41:
LAB40:    goto LAB29;

LAB31:    t18 = 0;

LAB34:    if (t18 < 4U)
        goto LAB35;
    else
        goto LAB33;

LAB35:    t7 = (t3 + t18);
    t9 = (t1 + t18);
    if (*((unsigned char *)t7) != *((unsigned char *)t9))
        goto LAB32;

LAB36:    t18 = (t18 + 1);
    goto LAB34;

LAB37:    xsi_size_not_matching(10U, t19, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(175, ng0);
    t7 = (t0 + 8664);
    t9 = (t7 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t7, 0U, 1, 0LL);
    goto LAB40;

}

static void work_a_4061625060_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8728);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8152);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4061625060_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8792);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8168);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4061625060_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8184);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4061625060_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8920);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8200);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4061625060_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4061625060_3212880686_p_0,(void *)work_a_4061625060_3212880686_p_1,(void *)work_a_4061625060_3212880686_p_2,(void *)work_a_4061625060_3212880686_p_3,(void *)work_a_4061625060_3212880686_p_4,(void *)work_a_4061625060_3212880686_p_5,(void *)work_a_4061625060_3212880686_p_6,(void *)work_a_4061625060_3212880686_p_7};
	xsi_register_didat("work_a_4061625060_3212880686", "isim/CALC_isim_beh.exe.sim/work/a_4061625060_3212880686.didat");
	xsi_register_executes(pe);
}
