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
static const char *ng0 = "/home/thanotos/floating_point/tamrin_5_1_d/FP_ADDER_TB.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0802427070_1985558087_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3656);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 3656);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 3512);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0802427070_1985558087_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    int t14;
    char *t15;
    int t16;
    int t17;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t3 = t2;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 3720);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = (0 - 0);
    t10 = (t9 * 1);
    t11 = (32U * t10);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t4 = (t0 + 3784);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);

LAB6:    t2 = (t0 + 3528);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3528);
    *((int *)t4) = 0;
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);

LAB10:    t2 = (t0 + 3544);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 3544);
    *((int *)t4) = 0;
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 6617);
    *((int *)t2) = 1;
    t3 = (t0 + 6621);
    *((int *)t3) = 4;
    t9 = 1;
    t14 = 4;

LAB12:    if (t9 <= t14)
        goto LAB13;

LAB15:    xsi_set_current_line(95, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB9:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(89, ng0);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 3720);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    memcpy(t15, t5, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t2 = (t0 + 6617);
    t16 = *((int *)t2);
    t17 = (t16 - 0);
    t10 = (t17 * 1);
    xsi_vhdl_check_range_of_index(0, 4, 1, *((int *)t2));
    t11 = (32U * t10);
    t12 = (0 + t11);
    t4 = (t3 + t12);
    t5 = (t0 + 3784);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t15 = *((char **)t8);
    memcpy(t15, t4, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(91, ng0);

LAB18:    t2 = (t0 + 3560);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 6617);
    t9 = *((int *)t2);
    t3 = (t0 + 6621);
    t14 = *((int *)t3);
    if (t9 == t14)
        goto LAB15;

LAB24:    t16 = (t9 + 1);
    t9 = t16;
    t4 = (t0 + 6617);
    *((int *)t4) = t9;
    goto LAB12;

LAB16:    t4 = (t0 + 3560);
    *((int *)t4) = 0;
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 32U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);

LAB22:    t2 = (t0 + 3576);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t4 = (t0 + 3576);
    *((int *)t4) = 0;
    goto LAB14;

LAB21:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_0802427070_1985558087_init()
{
	static char *pe[] = {(void *)work_a_0802427070_1985558087_p_0,(void *)work_a_0802427070_1985558087_p_1};
	xsi_register_didat("work_a_0802427070_1985558087", "isim/FP_ADDER_TB_isim_beh.exe.sim/work/a_0802427070_1985558087.didat");
	xsi_register_executes(pe);
}
