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
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;
extern char *WORK_P_0874702962;
static const char *ng3 = "Function safe_div ended without a return statement";
static const char *ng4 = "C:/Users/thanotos/Documents/FPGA/ALU/alu.vhd";

unsigned char ieee_p_1242562249_sub_2479254793_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2807594338_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2849293644_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2945041723_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_303759405_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3064532541_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_342011861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3696923623_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3991088854_1035706684(char *, char *, char *, char *);
char *ieee_p_1242562249_sub_4004982826_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
char *work_p_0874702962_sub_1271793263_3436059917(char *, char *);
char *work_p_0874702962_sub_324714392_3436059917(char *, char *);
char *work_p_0874702962_sub_3468201349_3436059917(char *, char *, char *);
char *work_p_0874702962_sub_413550656_3436059917(char *, char *);
char *work_p_0874702962_sub_792103819_3436059917(char *, char *);


char *work_a_0832606739_1516540902_sub_118654494_2134189630(char *t1, char *t2, char *t3, char *t4, char *t5, char *t6, unsigned char t7)
{
    char t8[128];
    char t9[40];
    char t12[16];
    char t30[16];
    char t31[16];
    char t34[16];
    char *t0;
    int t10;
    unsigned int t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    int t32;
    char *t33;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;

LAB0:    t10 = (0 - 16);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t11 = (t11 * 1U);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 16;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 16);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t8 + 4U);
    t17 = ((IEEE_P_1242562249) + 3112);
    t18 = (t14 + 88U);
    *((char **)t18) = t17;
    t19 = (char *)alloca(t11);
    t20 = (t14 + 56U);
    *((char **)t20) = t19;
    xsi_type_set_default_value(t17, t19, t12);
    t21 = (t14 + 64U);
    *((char **)t21) = t12;
    t22 = (t14 + 80U);
    *((unsigned int *)t22) = t11;
    t23 = (t9 + 4U);
    t24 = (t3 != 0);
    if (t24 == 1)
        goto LAB3;

LAB2:    t25 = (t9 + 12U);
    *((char **)t25) = t4;
    t26 = (t9 + 20U);
    t27 = (t5 != 0);
    if (t27 == 1)
        goto LAB5;

LAB4:    t28 = (t9 + 28U);
    *((char **)t28) = t6;
    t29 = (t9 + 36U);
    *((unsigned char *)t29) = t7;
    if (t7 != 0)
        goto LAB6;

LAB8:    t10 = (16 + 1);
    t13 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t31, t3, t4, t10);
    t15 = (16 + 1);
    t17 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t34, t5, t6, t15);
    t18 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t30, t13, t31, t17, t34);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t30 + 12U);
    t11 = *((unsigned int *)t22);
    t16 = (1U * t11);
    memcpy(t20, t18, t16);

LAB7:    t13 = (t14 + 56U);
    t17 = *((char **)t13);
    t13 = (t12 + 12U);
    t11 = *((unsigned int *)t13);
    t11 = (t11 * 1U);
    t0 = xsi_get_transient_memory(t11);
    memcpy(t0, t17, t11);
    t18 = (t12 + 0U);
    t10 = *((int *)t18);
    t20 = (t12 + 4U);
    t15 = *((int *)t20);
    t21 = (t12 + 8U);
    t32 = *((int *)t21);
    t22 = (t2 + 0U);
    t33 = (t22 + 0U);
    *((int *)t33) = t10;
    t33 = (t22 + 4U);
    *((int *)t33) = t15;
    t33 = (t22 + 8U);
    *((int *)t33) = t32;
    t35 = (t15 - t10);
    t16 = (t35 * t32);
    t16 = (t16 + 1);
    t33 = (t22 + 12U);
    *((unsigned int *)t33) = t16;

LAB1:    return t0;
LAB3:    *((char **)t23) = t3;
    goto LAB2;

LAB5:    *((char **)t26) = t5;
    goto LAB4;

LAB6:    t32 = (16 + 1);
    t33 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t31, t3, t4, t32);
    t35 = (16 + 1);
    t36 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t34, t5, t6, t35);
    t37 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t30, t33, t31, t36, t34);
    t38 = (t14 + 56U);
    t39 = *((char **)t38);
    t38 = (t39 + 0);
    t40 = (t30 + 12U);
    t16 = *((unsigned int *)t40);
    t41 = (1U * t16);
    memcpy(t38, t37, t41);
    goto LAB7;

LAB9:;
}

unsigned char work_a_0832606739_1516540902_sub_29917175_2134189630(char *t1, char *t2, char *t3)
{
    char t5[24];
    unsigned char t0;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned char t18;

LAB0:    t6 = (t5 + 4U);
    t7 = (t2 != 0);
    if (t7 == 1)
        goto LAB3;

LAB2:    t8 = (t5 + 12U);
    *((char **)t8) = t3;
    t9 = (t3 + 0U);
    t10 = *((int *)t9);
    t11 = (t3 + 8U);
    t12 = *((int *)t11);
    t13 = (16 - t10);
    t14 = (t13 * t12);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t17 = (t2 + t16);
    t18 = *((unsigned char *)t17);
    t0 = t18;

LAB1:    return t0;
LAB3:    *((char **)t6) = t2;
    goto LAB2;

LAB4:;
}

unsigned char work_a_0832606739_1516540902_sub_1984818122_2134189630(char *t1, char *t2, char *t3)
{
    char t5[24];
    unsigned char t0;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned char t18;
    int t19;
    char *t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;

LAB0:    t6 = (t5 + 4U);
    t7 = (t2 != 0);
    if (t7 == 1)
        goto LAB3;

LAB2:    t8 = (t5 + 12U);
    *((char **)t8) = t3;
    t9 = (t3 + 0U);
    t10 = *((int *)t9);
    t11 = (t3 + 8U);
    t12 = *((int *)t11);
    t13 = (16 - t10);
    t14 = (t13 * t12);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t17 = (t2 + t16);
    t18 = *((unsigned char *)t17);
    t19 = (16 - 1);
    t20 = (t3 + 0U);
    t21 = *((int *)t20);
    t22 = (t3 + 8U);
    t23 = *((int *)t22);
    t24 = (t19 - t21);
    t25 = (t24 * t23);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t28 = (t2 + t27);
    t29 = *((unsigned char *)t28);
    t30 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t18, t29);
    t0 = t30;

LAB1:    return t0;
LAB3:    *((char **)t6) = t2;
    goto LAB2;

LAB4:;
}

char *work_a_0832606739_1516540902_sub_2854122759_2134189630(char *t1, char *t2, char *t3)
{
    char t5[40];
    char t6[16];
    char t11[16];
    char t22[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 15);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 15;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 15);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t5 + 4U);
    t14 = (t2 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t5 + 12U);
    *((char **)t15) = t6;
    t16 = (t5 + 20U);
    t17 = (t3 != 0);
    if (t17 == 1)
        goto LAB5;

LAB4:    t18 = (t5 + 28U);
    *((char **)t18) = t11;
    t19 = ieee_p_1242562249_sub_2479254793_1035706684(IEEE_P_1242562249, t3, t11, 0);
    if (t19 != 0)
        goto LAB6;

LAB8:    t7 = ieee_p_1242562249_sub_2849293644_1035706684(IEEE_P_1242562249, t22, t2, t6, t3, t11);
    t8 = work_p_0874702962_sub_3468201349_3436059917(WORK_P_0874702962, t7, t22);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t8, 16U);

LAB1:    return t0;
LAB3:    *((char **)t12) = t2;
    goto LAB2;

LAB5:    *((char **)t16) = t3;
    goto LAB4;

LAB6:    t20 = xsi_get_transient_memory(16U);
    memset(t20, 0, 16U);
    t21 = t20;
    memset(t21, (unsigned char)2, 16U);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t20, 16U);
    goto LAB1;

LAB7:    xsi_error(ng3);
    t0 = 0;
    goto LAB1;

LAB9:    goto LAB7;

LAB10:    goto LAB7;

}

static void work_a_0832606739_1516540902_p_0(char *t0)
{
    char t16[16];
    char t18[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(80, ng4);

LAB3:    t1 = (t0 + 1296U);
    t2 = *((char **)t1);
    t3 = (16 - 2);
    t4 = (15 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 1296U);
    t8 = *((char **)t7);
    t9 = (16 - 1);
    t10 = (t9 - 15);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t7 = (t8 + t13);
    t14 = *((unsigned char *)t7);
    t17 = ((IEEE_P_1242562249) + 3112);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 14;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 14);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t15 = xsi_base_array_concat(t15, t16, t17, (char)97, t1, t18, (char)99, t14, (char)101);
    t22 = (15U + 1U);
    t23 = (16U != t22);
    if (t23 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 8488);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t15, 16U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t28 = (t0 + 8200);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t22, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_1(char *t0)
{
    char t15[16];
    char t17[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(81, ng4);

LAB3:    t1 = (t0 + 1296U);
    t2 = *((char **)t1);
    t3 = (0 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1296U);
    t9 = *((char **)t8);
    t10 = (16 - 1);
    t11 = (15 - t10);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t16 = ((IEEE_P_1242562249) + 3112);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 15;
    t19 = (t18 + 4U);
    *((int *)t19) = 1;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (1 - 15);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)99, t7, (char)97, t8, t17, (char)101);
    t21 = (1U + 15U);
    t22 = (16U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 8552);
    t23 = (t19 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 16U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t27 = (t0 + 8216);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t21, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_2(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(84, ng4);

LAB3:    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t5 = (t0 + 1456U);
    t6 = *((char **)t5);
    t5 = (t0 + 1464U);
    t7 = *((char **)t5);
    t8 = work_a_0832606739_1516540902_sub_118654494_2134189630(t0, t1, t3, t4, t6, t7, (unsigned char)0);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (17U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 8616);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 17U);
    xsi_driver_first_trans_fast(t12);

LAB2:    t17 = (t0 + 8232);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t10, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(85, ng4);

LAB3:    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t5 = (t0 + 1456U);
    t6 = *((char **)t5);
    t5 = (t0 + 1464U);
    t7 = *((char **)t5);
    t8 = work_a_0832606739_1516540902_sub_118654494_2134189630(t0, t1, t3, t4, t6, t7, (unsigned char)1);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t10 = (t10 * 1U);
    t11 = (17U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 8680);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 17U);
    xsi_driver_first_trans_fast(t12);

LAB2:    t17 = (t0 + 8248);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t10, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_4(char *t0)
{
    char t1[16];
    char t5[16];
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(86, ng4);

LAB3:    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t5, 1, 16);
    t7 = work_a_0832606739_1516540902_sub_118654494_2134189630(t0, t1, t3, t4, t6, t5, (unsigned char)0);
    t8 = (t1 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t10 = (17U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 8744);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 17U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 8264);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t9, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_5(char *t0)
{
    char t1[16];
    char t5[16];
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(87, ng4);

LAB3:    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t5, 1, 16);
    t7 = work_a_0832606739_1516540902_sub_118654494_2134189630(t0, t1, t3, t4, t6, t5, (unsigned char)1);
    t8 = (t1 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t10 = (17U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 8808);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 17U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 8280);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t9, 0);
    goto LAB6;

}

static void work_a_0832606739_1516540902_p_6(char *t0)
{
    char t83[16];
    char t85[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    int t62;
    char *t63;
    int t65;
    char *t66;
    int t68;
    char *t69;
    int t71;
    char *t72;
    char *t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned char t84;

LAB0:    t1 = (t0 + 6144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(89, ng4);
    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t2 = (t0 + 12479);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB29:    t6 = (t0 + 12484);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB30:    t9 = (t0 + 12489);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB31:    t12 = (t0 + 12494);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB32:    t15 = (t0 + 12499);
    t17 = xsi_mem_cmp(t15, t3, 5U);
    if (t17 == 1)
        goto LAB9;

LAB33:    t18 = (t0 + 12504);
    t20 = xsi_mem_cmp(t18, t3, 5U);
    if (t20 == 1)
        goto LAB10;

LAB34:    t21 = (t0 + 12509);
    t23 = xsi_mem_cmp(t21, t3, 5U);
    if (t23 == 1)
        goto LAB11;

LAB35:    t24 = (t0 + 12514);
    t26 = xsi_mem_cmp(t24, t3, 5U);
    if (t26 == 1)
        goto LAB12;

LAB36:    t27 = (t0 + 12519);
    t29 = xsi_mem_cmp(t27, t3, 5U);
    if (t29 == 1)
        goto LAB13;

LAB37:    t30 = (t0 + 12524);
    t32 = xsi_mem_cmp(t30, t3, 5U);
    if (t32 == 1)
        goto LAB14;

LAB38:    t33 = (t0 + 12529);
    t35 = xsi_mem_cmp(t33, t3, 5U);
    if (t35 == 1)
        goto LAB15;

LAB39:    t36 = (t0 + 12534);
    t38 = xsi_mem_cmp(t36, t3, 5U);
    if (t38 == 1)
        goto LAB16;

LAB40:    t39 = (t0 + 12539);
    t41 = xsi_mem_cmp(t39, t3, 5U);
    if (t41 == 1)
        goto LAB17;

LAB41:    t42 = (t0 + 12544);
    t44 = xsi_mem_cmp(t42, t3, 5U);
    if (t44 == 1)
        goto LAB18;

LAB42:    t45 = (t0 + 12549);
    t47 = xsi_mem_cmp(t45, t3, 5U);
    if (t47 == 1)
        goto LAB19;

LAB43:    t48 = (t0 + 12554);
    t50 = xsi_mem_cmp(t48, t3, 5U);
    if (t50 == 1)
        goto LAB20;

LAB44:    t51 = (t0 + 12559);
    t53 = xsi_mem_cmp(t51, t3, 5U);
    if (t53 == 1)
        goto LAB21;

LAB45:    t54 = (t0 + 12564);
    t56 = xsi_mem_cmp(t54, t3, 5U);
    if (t56 == 1)
        goto LAB22;

LAB46:    t57 = (t0 + 12569);
    t59 = xsi_mem_cmp(t57, t3, 5U);
    if (t59 == 1)
        goto LAB23;

LAB47:    t60 = (t0 + 12574);
    t62 = xsi_mem_cmp(t60, t3, 5U);
    if (t62 == 1)
        goto LAB24;

LAB48:    t63 = (t0 + 12579);
    t65 = xsi_mem_cmp(t63, t3, 5U);
    if (t65 == 1)
        goto LAB25;

LAB49:    t66 = (t0 + 12584);
    t68 = xsi_mem_cmp(t66, t3, 5U);
    if (t68 == 1)
        goto LAB26;

LAB50:    t69 = (t0 + 12589);
    t71 = xsi_mem_cmp(t69, t3, 5U);
    if (t71 == 1)
        goto LAB27;

LAB51:
LAB28:    xsi_set_current_line(90, ng4);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(89, ng4);

LAB77:    t2 = (t0 + 8296);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB78;

LAB1:    return;
LAB5:    xsi_set_current_line(90, ng4);
    t72 = (t0 + 2896U);
    t73 = *((char **)t72);
    t74 = (16 - 1);
    t75 = (16 - t74);
    t76 = (t75 * 1U);
    t77 = (0 + t76);
    t72 = (t73 + t77);
    t78 = (t0 + 8872);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    memcpy(t82, t72, 16U);
    xsi_driver_first_trans_fast(t78);
    goto LAB4;

LAB6:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 3056U);
    t3 = *((char **)t2);
    t5 = (16 - 1);
    t75 = (16 - t5);
    t76 = (t75 * 1U);
    t77 = (0 + t76);
    t2 = (t3 + t77);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t83, t3, t4, t7, t9);
    t12 = work_p_0874702962_sub_3468201349_3436059917(WORK_P_0874702962, t10, t83);
    t13 = (t0 + 8872);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t12, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB8:    xsi_set_current_line(90, ng4);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 3216U);
    t3 = *((char **)t2);
    t5 = (16 - 1);
    t75 = (16 - t5);
    t76 = (t75 * 1U);
    t77 = (0 + t76);
    t2 = (t3 + t77);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 3376U);
    t3 = *((char **)t2);
    t5 = (16 - 1);
    t75 = (16 - t5);
    t76 = (t75 * 1U);
    t77 = (0 + t76);
    t2 = (t3 + t77);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_3696923623_1035706684(IEEE_P_1242562249, t83, t3, t4, t7, t9);
    t12 = (t83 + 12U);
    t75 = *((unsigned int *)t12);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB53;

LAB54:    t13 = (t0 + 8872);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB12:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_342011861_1035706684(IEEE_P_1242562249, t83, t3, t4, t7, t9);
    t12 = (t83 + 12U);
    t75 = *((unsigned int *)t12);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB55;

LAB56:    t13 = (t0 + 8872);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB13:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_303759405_1035706684(IEEE_P_1242562249, t83, t3, t4, t7, t9);
    t12 = (t83 + 12U);
    t75 = *((unsigned int *)t12);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB57;

LAB58:    t13 = (t0 + 8872);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB14:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_3991088854_1035706684(IEEE_P_1242562249, t83, t3, t4);
    t7 = (t83 + 12U);
    t75 = *((unsigned int *)t7);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB59;

LAB60:    t9 = (t0 + 8872);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB15:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_3696923623_1035706684(IEEE_P_1242562249, t85, t3, t4, t7, t9);
    t12 = ieee_p_1242562249_sub_3991088854_1035706684(IEEE_P_1242562249, t83, t10, t85);
    t13 = (t83 + 12U);
    t75 = *((unsigned int *)t13);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB61;

LAB62:    t15 = (t0 + 8872);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_fast(t15);
    goto LAB4;

LAB16:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_342011861_1035706684(IEEE_P_1242562249, t85, t3, t4, t7, t9);
    t12 = ieee_p_1242562249_sub_3991088854_1035706684(IEEE_P_1242562249, t83, t10, t85);
    t13 = (t83 + 12U);
    t75 = *((unsigned int *)t13);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB63;

LAB64:    t15 = (t0 + 8872);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_fast(t15);
    goto LAB4;

LAB17:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = (t0 + 1456U);
    t7 = *((char **)t6);
    t6 = (t0 + 1464U);
    t9 = *((char **)t6);
    t10 = ieee_p_1242562249_sub_2945041723_1035706684(IEEE_P_1242562249, t83, t3, t4, t7, t9);
    t12 = (t83 + 12U);
    t75 = *((unsigned int *)t12);
    t76 = (1U * t75);
    t84 = (16U != t76);
    if (t84 == 1)
        goto LAB65;

LAB66:    t13 = (t0 + 8872);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 16U);
    xsi_driver_first_trans_fast(t13);
    goto LAB4;

LAB18:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_4004982826_1035706684(IEEE_P_1242562249, t83, t3, t4, 1);
    t7 = (t83 + 12U);
    t75 = *((unsigned int *)t7);
    t75 = (t75 * 1U);
    t84 = (16U != t75);
    if (t84 == 1)
        goto LAB67;

LAB68:    t9 = (t0 + 8872);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB19:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t83, t3, t4, 1);
    t7 = (t83 + 12U);
    t75 = *((unsigned int *)t7);
    t75 = (t75 * 1U);
    t84 = (16U != t75);
    if (t84 == 1)
        goto LAB69;

LAB70:    t9 = (t0 + 8872);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB20:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_4004982826_1035706684(IEEE_P_1242562249, t83, t3, t4, 1);
    t7 = (t83 + 12U);
    t75 = *((unsigned int *)t7);
    t75 = (t75 * 1U);
    t84 = (16U != t75);
    if (t84 == 1)
        goto LAB71;

LAB72:    t9 = (t0 + 8872);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB21:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = (t0 + 1304U);
    t4 = *((char **)t2);
    t6 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t83, t3, t4, 1);
    t7 = (t83 + 12U);
    t75 = *((unsigned int *)t7);
    t75 = (t75 * 1U);
    t84 = (16U != t75);
    if (t84 == 1)
        goto LAB73;

LAB74:    t9 = (t0 + 8872);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB4;

LAB22:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    t2 = (t0 + 8872);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB23:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 2736U);
    t3 = *((char **)t2);
    t2 = (t0 + 8872);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB24:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = work_p_0874702962_sub_792103819_3436059917(WORK_P_0874702962, t3);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB25:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = work_p_0874702962_sub_324714392_3436059917(WORK_P_0874702962, t3);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB26:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = work_p_0874702962_sub_413550656_3436059917(WORK_P_0874702962, t3);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB27:    xsi_set_current_line(90, ng4);
    t2 = (t0 + 1296U);
    t3 = *((char **)t2);
    t2 = work_p_0874702962_sub_1271793263_3436059917(WORK_P_0874702962, t3);
    t4 = (t0 + 8872);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB52:;
LAB53:    xsi_size_not_matching(16U, t76, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(16U, t76, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(16U, t76, 0);
    goto LAB58;

LAB59:    xsi_size_not_matching(16U, t76, 0);
    goto LAB60;

LAB61:    xsi_size_not_matching(16U, t76, 0);
    goto LAB62;

LAB63:    xsi_size_not_matching(16U, t76, 0);
    goto LAB64;

LAB65:    xsi_size_not_matching(16U, t76, 0);
    goto LAB66;

LAB67:    xsi_size_not_matching(16U, t75, 0);
    goto LAB68;

LAB69:    xsi_size_not_matching(16U, t75, 0);
    goto LAB70;

LAB71:    xsi_size_not_matching(16U, t75, 0);
    goto LAB72;

LAB73:    xsi_size_not_matching(16U, t75, 0);
    goto LAB74;

LAB75:    t3 = (t0 + 8296);
    *((int *)t3) = 0;
    goto LAB2;

LAB76:    goto LAB75;

LAB78:    goto LAB76;

}

static void work_a_0832606739_1516540902_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 6392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng4);
    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t2 = (t0 + 12594);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 12599);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 12604);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 12609);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(117, ng4);
    t2 = (t0 + 8936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(116, ng4);

LAB17:    t2 = (t0 + 8312);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(117, ng4);
    t15 = (t0 + 2896U);
    t16 = *((char **)t15);
    t15 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_29917175_2134189630(t0, t16, t15);
    t18 = (t0 + 8936);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t17;
    xsi_driver_first_trans_fast(t18);
    goto LAB4;

LAB6:    xsi_set_current_line(117, ng4);
    t2 = (t0 + 3056U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_29917175_2134189630(t0, t3, t2);
    t4 = (t0 + 8936);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(117, ng4);
    t2 = (t0 + 3216U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_29917175_2134189630(t0, t3, t2);
    t4 = (t0 + 8936);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(117, ng4);
    t2 = (t0 + 3376U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_29917175_2134189630(t0, t3, t2);
    t4 = (t0 + 8936);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 8312);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_0832606739_1516540902_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 6640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng4);
    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t2 = (t0 + 12614);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 12619);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 12624);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 12629);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(124, ng4);
    t2 = (t0 + 9000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB4:    xsi_set_current_line(123, ng4);

LAB17:    t2 = (t0 + 8328);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(124, ng4);
    t15 = (t0 + 2896U);
    t16 = *((char **)t15);
    t15 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_1984818122_2134189630(t0, t16, t15);
    t18 = (t0 + 9000);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t17;
    xsi_driver_first_trans_fast(t18);
    goto LAB4;

LAB6:    xsi_set_current_line(124, ng4);
    t2 = (t0 + 3056U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_1984818122_2134189630(t0, t3, t2);
    t4 = (t0 + 9000);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(124, ng4);
    t2 = (t0 + 3216U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_1984818122_2134189630(t0, t3, t2);
    t4 = (t0 + 9000);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(124, ng4);
    t2 = (t0 + 3376U);
    t3 = *((char **)t2);
    t2 = (t0 + 12296U);
    t17 = work_a_0832606739_1516540902_sub_1984818122_2134189630(t0, t3, t2);
    t4 = (t0 + 9000);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 8328);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}

static void work_a_0832606739_1516540902_p_9(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(132, ng4);

LAB3:    t1 = (t0 + 2096U);
    t2 = *((char **)t1);
    t1 = (t0 + 9064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 8344);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_1516540902_p_10(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(133, ng4);

LAB3:    t1 = (t0 + 2256U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 9128);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB2:    t8 = (t0 + 8360);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_1516540902_p_11(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(134, ng4);

LAB3:    t1 = (t0 + 2416U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 9192);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);

LAB2:    t8 = (t0 + 8376);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_1516540902_p_12(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(135, ng4);

LAB3:    t1 = (t0 + 2096U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (t3 - 15);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 9256);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_delta(t9, 1U, 1, 0LL);

LAB2:    t14 = (t0 + 8392);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_1516540902_p_13(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(136, ng4);
    t1 = (t0 + 2096U);
    t2 = *((char **)t1);
    t1 = (t0 + 2104U);
    t3 = *((char **)t1);
    t4 = ieee_p_1242562249_sub_2479254793_1035706684(IEEE_P_1242562249, t2, t3, 0);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 9320);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t10, 0U, 1, 0LL);

LAB2:    t15 = (t0 + 8408);
    *((int *)t15) = 1;

LAB1:    return;
LAB3:    t5 = (t0 + 9320);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0832606739_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0832606739_1516540902_p_0,(void *)work_a_0832606739_1516540902_p_1,(void *)work_a_0832606739_1516540902_p_2,(void *)work_a_0832606739_1516540902_p_3,(void *)work_a_0832606739_1516540902_p_4,(void *)work_a_0832606739_1516540902_p_5,(void *)work_a_0832606739_1516540902_p_6,(void *)work_a_0832606739_1516540902_p_7,(void *)work_a_0832606739_1516540902_p_8,(void *)work_a_0832606739_1516540902_p_9,(void *)work_a_0832606739_1516540902_p_10,(void *)work_a_0832606739_1516540902_p_11,(void *)work_a_0832606739_1516540902_p_12,(void *)work_a_0832606739_1516540902_p_13};
	static char *se[] = {(void *)work_a_0832606739_1516540902_sub_118654494_2134189630,(void *)work_a_0832606739_1516540902_sub_29917175_2134189630,(void *)work_a_0832606739_1516540902_sub_1984818122_2134189630,(void *)work_a_0832606739_1516540902_sub_2854122759_2134189630};
	xsi_register_didat("work_a_0832606739_1516540902", "isim/tb_alu_isim_beh.exe.sim/work/a_0832606739_1516540902.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
