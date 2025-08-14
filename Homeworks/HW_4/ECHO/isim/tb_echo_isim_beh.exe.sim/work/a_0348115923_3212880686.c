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
static const char *ng0 = "C:/Users/thanotos/Desktop/FPGA_HW4_400249049/ECHO/TB_ECHO.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0348115923_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);

LAB4:    if ((unsigned char)1 != 0)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB8:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t8);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

void work_a_0348115923_3212880686_sub_2736588714_134673997(char *t0, char *t1, char *t2)
{
    char t4[24];
    char t5[16];
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    int64 t32;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t4 + 4U);
    t10 = (t2 != 0);
    if (t10 == 1)
        goto LAB3;

LAB2:    t11 = (t4 + 12U);
    *((char **)t11) = t5;
    t12 = (t0 + 4352);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    t6 = (t0 + 2408U);
    t12 = *((char **)t6);
    t17 = *((int64 *)t12);
    xsi_process_wait(t1, t17);

LAB7:    t6 = (t1 + 88U);
    t13 = *((char **)t6);
    t14 = (t13 + 2480U);
    *((unsigned int *)t14) = 1U;
    t15 = (t1 + 88U);
    t16 = *((char **)t15);
    t18 = (t16 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB8;

LAB9:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB5:
LAB6:
LAB4:    t8 = 0;
    t25 = 7;

LAB10:    if (t8 <= t25)
        goto LAB11;

LAB13:    t6 = (t0 + 4352);
    t12 = (t6 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 2408U);
    t12 = *((char **)t6);
    t17 = *((int64 *)t12);
    t32 = (t17 * 2);
    xsi_process_wait(t1, t32);

LAB24:    t6 = (t1 + 88U);
    t13 = *((char **)t6);
    t14 = (t13 + 2480U);
    *((unsigned int *)t14) = 1U;
    t15 = (t1 + 88U);
    t16 = *((char **)t15);
    t18 = (t16 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB25;

LAB26:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB22:
LAB23:
LAB21:
LAB1:    return;
LAB3:    *((char **)t7) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t6 = (t5 + 0U);
    t26 = *((int *)t6);
    t12 = (t5 + 8U);
    t27 = *((int *)t12);
    t28 = (t8 - t26);
    t9 = (t28 * t27);
    t13 = (t5 + 4U);
    t29 = *((int *)t13);
    xsi_vhdl_check_range_of_index(t26, t29, t27, t8);
    t30 = (1U * t9);
    t31 = (0 + t30);
    t14 = (t2 + t31);
    t10 = *((unsigned char *)t14);
    t15 = (t0 + 4352);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t10;
    xsi_driver_first_trans_fast(t15);
    t6 = (t0 + 2408U);
    t12 = *((char **)t6);
    t17 = *((int64 *)t12);
    xsi_process_wait(t1, t17);

LAB17:    t6 = (t1 + 88U);
    t13 = *((char **)t6);
    t14 = (t13 + 2480U);
    *((unsigned int *)t14) = 1U;
    t15 = (t1 + 88U);
    t16 = *((char **)t15);
    t18 = (t16 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB18;

LAB19:    t22 = (t1 + 88U);
    t23 = *((char **)t22);
    t24 = (t23 + 2480U);
    *((unsigned int *)t24) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t8 == t25)
        goto LAB13;

LAB20:    t26 = (t8 + 1);
    t8 = t26;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

}

static void work_a_0348115923_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(132, ng0);
    t3 = (1 * 1000000000LL);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3448);
    t4 = (t0 + 7656);
    work_a_0348115923_3212880686_sub_2736588714_134673997(t0, t2, t4);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 3448);
    t4 = (t0 + 7664);
    work_a_0348115923_3212880686_sub_2736588714_134673997(t0, t2, t4);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3448);
    t4 = (t0 + 7672);
    work_a_0348115923_3212880686_sub_2736588714_134673997(t0, t2, t4);
    xsi_set_current_line(136, ng0);
    t3 = (2 * 1000000000LL);
    t2 = (t0 + 3448);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(137, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_0348115923_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4208);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(146, ng0);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(147, ng0);
    t4 = (t0 + 1512U);
    t11 = *((char **)t4);
    t4 = (t0 + 1992U);
    t12 = *((char **)t4);
    t13 = *((int *)t12);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (8U * t15);
    t17 = (0U + t16);
    t4 = (t0 + 4416);
    t18 = (t4 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t11, 8U);
    xsi_driver_first_trans_delta(t4, t17, 8U, 0LL);
    xsi_set_current_line(148, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t13 = (t9 + 1);
    t1 = (t0 + 4480);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 < 3);
    t3 = t10;
    goto LAB10;

}


extern void work_a_0348115923_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0348115923_3212880686_p_0,(void *)work_a_0348115923_3212880686_p_1,(void *)work_a_0348115923_3212880686_p_2};
	static char *se[] = {(void *)work_a_0348115923_3212880686_sub_2736588714_134673997};
	xsi_register_didat("work_a_0348115923_3212880686", "isim/tb_echo_isim_beh.exe.sim/work/a_0348115923_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
