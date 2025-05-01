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
static const char *ng0 = "C:/Users/thanotos/Documents/FPGA/HW_3/serialadder/serial_adder_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_1242562249_sub_2110375371_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_1178963147_1746574152_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    int64 t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t4 = (t3 / 2);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 4416);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t4);
    t12 = (t0 + 4416);
    xsi_driver_intertial_reject(t12, t4, t4);

LAB2:    t13 = (t0 + 4320);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1178963147_1746574152_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t9;
    int t10;
    int t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    int t20;
    unsigned char t21;
    unsigned char t22;
    unsigned int t23;

LAB0:    t1 = (t0 + 4000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (3 * t7);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 7782);
    *((int *)t2) = 0;
    t3 = (t0 + 7786);
    *((int *)t3) = 7;
    t9 = 0;
    t10 = 7;

LAB8:    if (t9 <= t10)
        goto LAB9;

LAB11:    xsi_set_current_line(102, ng0);

LAB29:    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(81, ng0);
    t4 = (t0 + 7782);
    t12 = *((int *)t4);
    t13 = (t12 * 12345);
    t14 = (t13 + 17);
    t5 = (t0 + 2288U);
    t6 = *((char **)t5);
    t15 = *((int *)t6);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t14, t15);
    t16 = (t0 + 2528U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t11 + 12U);
    t19 = *((unsigned int *)t18);
    t19 = (t19 * 1U);
    memcpy(t16, t5, t19);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 7782);
    t12 = *((int *)t2);
    t13 = (t12 + 3);
    t14 = (t13 * 9876);
    t15 = (t14 + 5);
    t3 = (t0 + 2288U);
    t4 = *((char **)t3);
    t20 = *((int *)t4);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, t15, t20);
    t5 = (t0 + 2648U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    t16 = (t11 + 12U);
    t19 = *((unsigned int *)t16);
    t19 = (t19 * 1U);
    memcpy(t5, t3, t19);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2528U);
    t3 = *((char **)t2);
    t2 = (t0 + 4544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t16 = *((char **)t6);
    memcpy(t16, t3, 53U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 4608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t16 = *((char **)t6);
    memcpy(t16, t3, 53U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4672);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 7782);
    t9 = *((int *)t2);
    t3 = (t0 + 7786);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB11;

LAB26:    t12 = (t9 + 1);
    t9 = t12;
    t4 = (t0 + 7782);
    *((int *)t4) = t9;
    goto LAB8;

LAB12:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4672);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);

LAB18:    t2 = (t0 + 4336);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t3 = (t0 + 4336);
    *((int *)t3) = 0;
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2528U);
    t3 = *((char **)t2);
    t2 = (t0 + 7420U);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    t4 = (t0 + 7420U);
    t6 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t3, t2, t5, t4);
    t16 = (t0 + 2768U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t11 + 12U);
    t19 = *((unsigned int *)t18);
    t23 = (1U * t19);
    memcpy(t16, t6, t23);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7404U);
    t4 = (t0 + 2768U);
    t5 = *((char **)t4);
    t4 = (t0 + 7420U);
    t21 = ieee_p_1242562249_sub_2110375371_1035706684(IEEE_P_1242562249, t3, t2, t5, t4);
    if (t21 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (4 * t7);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t8);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB17:    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t21 = *((unsigned char *)t4);
    t22 = (t21 == (unsigned char)3);
    if (t22 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t6 = (t0 + 7790);
    xsi_report(t6, 19U, (unsigned char)3);
    goto LAB21;

LAB22:    goto LAB10;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB27:    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}


extern void work_a_1178963147_1746574152_init()
{
	static char *pe[] = {(void *)work_a_1178963147_1746574152_p_0,(void *)work_a_1178963147_1746574152_p_1};
	xsi_register_didat("work_a_1178963147_1746574152", "isim/serial_adder_tb8_isim_beh.exe.sim/work/a_1178963147_1746574152.didat");
	xsi_register_executes(pe);
}
