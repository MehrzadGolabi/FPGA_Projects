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
static const char *ng0 = "C:/Users/Alireza/Desktop/CALC/PB_debounced/PB_debounced.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0455808932_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t4 = (t0 + 5396U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (15U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3232);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 15U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)0);
    if (t10 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)3);
    if (t10 != 0)
        goto LAB13;

LAB14:
LAB8:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)2);
    if (t10 != 0)
        goto LAB21;

LAB23:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)1);
    if (t10 != 0)
        goto LAB27;

LAB28:
LAB22:    goto LAB3;

LAB5:    xsi_size_not_matching(15U, t9, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t5 = t1;
    memset(t5, (unsigned char)2, 15U);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 15U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)2);
    if (t10 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 3296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)2);
    if (t17 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB16:    goto LAB8;

LAB15:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t1 = (t0 + 5396U);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t3, 24000, 15);
    t18 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t6, t1, t7, t3);
    if (t18 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(36, ng0);
    t11 = (t0 + 3296);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 3360);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

LAB21:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(15U);
    memset(t1, 0, 15U);
    t5 = t1;
    memset(t5, (unsigned char)2, 15U);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 15U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t10 = (t2 == (unsigned char)3);
    if (t10 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB25:    goto LAB22;

LAB24:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB30:    goto LAB22;

LAB29:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t1 = (t0 + 5396U);
    t7 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t3, 24000, 15);
    t18 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t6, t1, t7, t3);
    if (t18 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB33:    goto LAB30;

LAB32:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 3296);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3360);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB33;

}


extern void work_a_0455808932_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0455808932_3212880686_p_0};
	xsi_register_didat("work_a_0455808932_3212880686", "isim/pb_debounce_isim_beh.exe.sim/work/a_0455808932_3212880686.didat");
	xsi_register_executes(pe);
}
