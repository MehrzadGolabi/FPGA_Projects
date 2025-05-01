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

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2807594338_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3410769178_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3461525680_1035706684(char *, char *, char *, char *, int );


char *work_p_0874702962_sub_3468201349_3436059917(char *t1, char *t2, char *t3)
{
    char t4[248];
    char t5[24];
    char t8[16];
    char t33[16];
    char t39[16];
    char t94[16];
    char *t0;
    char *t6;
    unsigned int t7;
    int t9;
    char *t10;
    int t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    int t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned char t46;
    char *t47;
    int t48;
    char *t49;
    int t50;
    char *t51;
    int t52;
    char *t53;
    int t54;
    char *t55;
    char *t56;
    int t57;
    unsigned char t58;
    char *t59;
    int t60;
    int t61;
    char *t62;
    int t63;
    char *t64;
    int t65;
    char *t66;
    int t67;
    char *t68;
    int t69;
    int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned char t74;
    unsigned char t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    int t80;
    int t81;
    unsigned int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    int t88;
    int t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;

LAB0:    t6 = (t3 + 12U);
    t7 = *((unsigned int *)t6);
    t7 = (t7 * 1U);
    t10 = (t3 + 0U);
    t11 = *((int *)t10);
    t12 = (t3 + 4U);
    t13 = *((int *)t12);
    t14 = (t3 + 8U);
    t15 = *((int *)t14);
    if (t11 > t13)
        goto LAB2;

LAB3:    if (t15 == -1)
        goto LAB7;

LAB8:    t9 = t13;

LAB4:    t17 = (t3 + 0U);
    t18 = *((int *)t17);
    t19 = (t3 + 4U);
    t20 = *((int *)t19);
    t21 = (t3 + 8U);
    t22 = *((int *)t21);
    if (t18 > t20)
        goto LAB9;

LAB10:    if (t22 == -1)
        goto LAB14;

LAB15:    t16 = t18;

LAB11:    t23 = (t8 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = t9;
    t24 = (t23 + 4U);
    *((int *)t24) = t16;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (t16 - t9);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t4 + 4U);
    t27 = ((IEEE_P_1242562249) + 3112);
    t28 = (t24 + 88U);
    *((char **)t28) = t27;
    t29 = (char *)alloca(t7);
    t30 = (t24 + 56U);
    *((char **)t30) = t29;
    memcpy(t29, t2, t7);
    t31 = (t24 + 64U);
    *((char **)t31) = t8;
    t32 = (t24 + 80U);
    *((unsigned int *)t32) = t7;
    t34 = (t33 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = 15;
    t35 = (t34 + 4U);
    *((int *)t35) = 0;
    t35 = (t34 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - 15);
    t26 = (t36 * -1);
    t26 = (t26 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t26;
    t35 = (t4 + 124U);
    t37 = (t1 + 2736);
    t38 = (t35 + 88U);
    *((char **)t38) = t37;
    t40 = (t35 + 56U);
    *((char **)t40) = t39;
    xsi_type_set_default_value(t37, t39, 0);
    t41 = (t35 + 64U);
    t42 = (t37 + 80U);
    t43 = *((char **)t42);
    *((char **)t41) = t43;
    t44 = (t35 + 80U);
    *((unsigned int *)t44) = 16U;
    t45 = (t5 + 4U);
    t46 = (t2 != 0);
    if (t46 == 1)
        goto LAB17;

LAB16:    t47 = (t5 + 12U);
    *((char **)t47) = t3;
    t49 = (t8 + 0U);
    t50 = *((int *)t49);
    t51 = (t8 + 4U);
    t52 = *((int *)t51);
    t53 = (t8 + 8U);
    t54 = *((int *)t53);
    if (t50 > t52)
        goto LAB21;

LAB22:    if (t54 == -1)
        goto LAB26;

LAB27:    t48 = t52;

LAB23:    t55 = (t1 + 1168U);
    t56 = *((char **)t55);
    t57 = *((int *)t56);
    t58 = (t48 >= t57);
    if (t58 != 0)
        goto LAB18;

LAB20:    t6 = (t24 + 56U);
    t10 = *((char **)t6);
    t6 = (t1 + 1168U);
    t12 = *((char **)t6);
    t9 = *((int *)t12);
    t6 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t94, t10, t8, t9);
    t14 = (t35 + 56U);
    t17 = *((char **)t14);
    t14 = (t17 + 0);
    t19 = (t94 + 12U);
    t7 = *((unsigned int *)t19);
    t7 = (t7 * 1U);
    memcpy(t14, t6, t7);

LAB19:    t6 = (t35 + 56U);
    t10 = *((char **)t6);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t10, 16U);

LAB1:    return t0;
LAB2:    if (t15 == 1)
        goto LAB5;

LAB6:    t9 = t11;
    goto LAB4;

LAB5:    t9 = t13;
    goto LAB4;

LAB7:    t9 = t11;
    goto LAB4;

LAB9:    if (t22 == 1)
        goto LAB12;

LAB13:    t16 = t20;
    goto LAB11;

LAB12:    t16 = t18;
    goto LAB11;

LAB14:    t16 = t20;
    goto LAB11;

LAB17:    *((char **)t45) = t2;
    goto LAB16;

LAB18:    t55 = (t24 + 56U);
    t59 = *((char **)t55);
    t55 = (t8 + 0U);
    t61 = *((int *)t55);
    t62 = (t8 + 4U);
    t63 = *((int *)t62);
    t64 = (t8 + 8U);
    t65 = *((int *)t64);
    if (t61 > t63)
        goto LAB31;

LAB32:    if (t65 == -1)
        goto LAB36;

LAB37:    t60 = t63;

LAB33:    t66 = (t8 + 0U);
    t67 = *((int *)t66);
    t68 = (t8 + 8U);
    t69 = *((int *)t68);
    t70 = (t60 - t67);
    t26 = (t70 * t69);
    t71 = (1U * t26);
    t72 = (0 + t71);
    t73 = (t59 + t72);
    t74 = *((unsigned char *)t73);
    t75 = (t74 == (unsigned char)2);
    if (t75 != 0)
        goto LAB28;

LAB30:    t6 = xsi_get_transient_memory(16U);
    memset(t6, 0, 16U);
    t10 = t6;
    t12 = (t1 + 1168U);
    t14 = *((char **)t12);
    t9 = *((int *)t14);
    t11 = (t9 - 1);
    if (-1 == -1)
        goto LAB41;

LAB42:    t7 = 0;

LAB43:    t13 = (t7 - 15);
    t26 = (t13 * -1);
    t71 = (1U * t26);
    t12 = (t10 + t71);
    t17 = (t1 + 1168U);
    t19 = *((char **)t17);
    t15 = *((int *)t19);
    t16 = (t15 - 1);
    t18 = (0 - t16);
    t72 = (t18 * -1);
    t72 = (t72 + 1);
    t82 = (1U * t72);
    memset(t12, (unsigned char)3, t82);
    t17 = (t35 + 56U);
    t21 = *((char **)t17);
    t17 = (t21 + 0);
    memcpy(t17, t6, 16U);
    t6 = (t35 + 56U);
    t10 = *((char **)t6);
    t6 = (t1 + 1168U);
    t12 = *((char **)t6);
    t9 = *((int *)t12);
    t11 = (t9 - 1);
    t13 = (t11 - 15);
    t7 = (t13 * -1);
    t26 = (1U * t7);
    t71 = (0 + t26);
    t6 = (t10 + t71);
    *((unsigned char *)t6) = (unsigned char)3;
    t6 = xsi_get_transient_memory(15U);
    memset(t6, 0, 15U);
    t10 = t6;
    memset(t10, (unsigned char)2, 15U);
    t12 = (t35 + 56U);
    t14 = *((char **)t12);
    t12 = (t1 + 1168U);
    t17 = *((char **)t12);
    t9 = *((int *)t17);
    t11 = (t9 - 2);
    t7 = (15 - t11);
    t26 = (t7 * 1U);
    t71 = (0 + t26);
    t12 = (t14 + t71);
    memcpy(t12, t6, 15U);

LAB29:    goto LAB19;

LAB21:    if (t54 == 1)
        goto LAB24;

LAB25:    t48 = t50;
    goto LAB23;

LAB24:    t48 = t52;
    goto LAB23;

LAB26:    t48 = t50;
    goto LAB23;

LAB28:    t76 = xsi_get_transient_memory(16U);
    memset(t76, 0, 16U);
    t77 = t76;
    t78 = (t1 + 1168U);
    t79 = *((char **)t78);
    t80 = *((int *)t79);
    t81 = (t80 - 1);
    if (-1 == -1)
        goto LAB38;

LAB39:    t82 = 0;

LAB40:    t83 = (t82 - 15);
    t84 = (t83 * -1);
    t85 = (1U * t84);
    t78 = (t77 + t85);
    t86 = (t1 + 1168U);
    t87 = *((char **)t86);
    t88 = *((int *)t87);
    t89 = (t88 - 1);
    t90 = (0 - t89);
    t91 = (t90 * -1);
    t91 = (t91 + 1);
    t92 = (1U * t91);
    memset(t78, (unsigned char)2, t92);
    t86 = (t35 + 56U);
    t93 = *((char **)t86);
    t86 = (t93 + 0);
    memcpy(t86, t76, 16U);
    t6 = (t35 + 56U);
    t10 = *((char **)t6);
    t6 = (t1 + 1168U);
    t12 = *((char **)t6);
    t9 = *((int *)t12);
    t11 = (t9 - 1);
    t13 = (t11 - 15);
    t7 = (t13 * -1);
    t26 = (1U * t7);
    t71 = (0 + t26);
    t6 = (t10 + t71);
    *((unsigned char *)t6) = (unsigned char)2;
    t6 = xsi_get_transient_memory(15U);
    memset(t6, 0, 15U);
    t10 = t6;
    memset(t10, (unsigned char)3, 15U);
    t12 = (t35 + 56U);
    t14 = *((char **)t12);
    t12 = (t1 + 1168U);
    t17 = *((char **)t12);
    t9 = *((int *)t17);
    t11 = (t9 - 2);
    t7 = (15 - t11);
    t26 = (t7 * 1U);
    t71 = (0 + t26);
    t12 = (t14 + t71);
    memcpy(t12, t6, 15U);
    goto LAB29;

LAB31:    if (t65 == 1)
        goto LAB34;

LAB35:    t60 = t61;
    goto LAB33;

LAB34:    t60 = t63;
    goto LAB33;

LAB36:    t60 = t61;
    goto LAB33;

LAB38:    t82 = t81;
    goto LAB40;

LAB41:    t7 = t11;
    goto LAB43;

LAB44:;
}

char *work_p_0874702962_sub_792103819_3436059917(char *t1, char *t2)
{
    char t3[488];
    char t4[24];
    char t5[16];
    char t10[16];
    char t15[32];
    char t19[16];
    char t25[32];
    char t29[16];
    char t35[32];
    char t39[16];
    char t45[32];
    char t52[16];
    char t60[16];
    char t61[16];
    char *t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    int t42;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned char t50;
    char *t51;
    char *t53;
    char *t54;
    int t55;
    int t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t62;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 15);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t10 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 31;
    t11 = (t7 + 4U);
    *((int *)t11) = 0;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 31);
    t9 = (t12 * -1);
    t9 = (t9 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t9;
    t11 = (t3 + 4U);
    t13 = ((IEEE_P_1242562249) + 3112);
    t14 = (t11 + 88U);
    *((char **)t14) = t13;
    t16 = (t11 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, t10);
    t17 = (t11 + 64U);
    *((char **)t17) = t10;
    t18 = (t11 + 80U);
    *((unsigned int *)t18) = 32U;
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 31;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 31);
    t9 = (t22 * -1);
    t9 = (t9 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t9;
    t21 = (t3 + 124U);
    t23 = ((IEEE_P_1242562249) + 3112);
    t24 = (t21 + 88U);
    *((char **)t24) = t23;
    t26 = (t21 + 56U);
    *((char **)t26) = t25;
    xsi_type_set_default_value(t23, t25, t19);
    t27 = (t21 + 64U);
    *((char **)t27) = t19;
    t28 = (t21 + 80U);
    *((unsigned int *)t28) = 32U;
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 31;
    t31 = (t30 + 4U);
    *((int *)t31) = 0;
    t31 = (t30 + 8U);
    *((int *)t31) = -1;
    t32 = (0 - 31);
    t9 = (t32 * -1);
    t9 = (t9 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t9;
    t31 = (t3 + 244U);
    t33 = ((IEEE_P_1242562249) + 3112);
    t34 = (t31 + 88U);
    *((char **)t34) = t33;
    t36 = (t31 + 56U);
    *((char **)t36) = t35;
    xsi_type_set_default_value(t33, t35, t29);
    t37 = (t31 + 64U);
    *((char **)t37) = t29;
    t38 = (t31 + 80U);
    *((unsigned int *)t38) = 32U;
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 31;
    t41 = (t40 + 4U);
    *((int *)t41) = 0;
    t41 = (t40 + 8U);
    *((int *)t41) = -1;
    t42 = (0 - 31);
    t9 = (t42 * -1);
    t9 = (t9 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t9;
    t41 = (t3 + 364U);
    t43 = ((IEEE_P_1242562249) + 3112);
    t44 = (t41 + 88U);
    *((char **)t44) = t43;
    t46 = (t41 + 56U);
    *((char **)t46) = t45;
    xsi_type_set_default_value(t43, t45, t39);
    t47 = (t41 + 64U);
    *((char **)t47) = t39;
    t48 = (t41 + 80U);
    *((unsigned int *)t48) = 32U;
    t49 = (t4 + 4U);
    t50 = (t2 != 0);
    if (t50 == 1)
        goto LAB3;

LAB2:    t51 = (t4 + 12U);
    *((char **)t51) = t5;
    t53 = (t1 + 1168U);
    t54 = *((char **)t53);
    t55 = *((int *)t54);
    t56 = (2 * t55);
    t53 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t52, t2, t5, t56);
    t57 = (t11 + 56U);
    t58 = *((char **)t57);
    t57 = (t58 + 0);
    t59 = (t52 + 12U);
    t9 = *((unsigned int *)t59);
    t9 = (t9 * 1U);
    memcpy(t57, t53, t9);
    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t6 = (t11 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t60, t7, t10, t13, t10);
    t14 = (t1 + 1168U);
    t16 = *((char **)t14);
    t8 = *((int *)t16);
    t12 = (2 * t8);
    t14 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t52, t6, t60, t12);
    t17 = (t21 + 56U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t52 + 12U);
    t9 = *((unsigned int *)t20);
    t9 = (t9 * 1U);
    memcpy(t17, t14, t9);
    t6 = (t21 + 56U);
    t7 = *((char **)t6);
    t6 = (t11 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t61, t7, t19, t13, t10);
    t14 = ieee_p_1242562249_sub_3461525680_1035706684(IEEE_P_1242562249, t60, t6, t61, 6);
    t16 = (t1 + 1168U);
    t17 = *((char **)t16);
    t8 = *((int *)t17);
    t12 = (2 * t8);
    t16 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t52, t14, t60, t12);
    t18 = (t31 + 56U);
    t20 = *((char **)t18);
    t18 = (t20 + 0);
    t23 = (t52 + 12U);
    t9 = *((unsigned int *)t23);
    t9 = (t9 * 1U);
    memcpy(t18, t16, t9);
    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t6 = (t31 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t52, t7, t10, t13, t29);
    t14 = (t41 + 56U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    t17 = (t52 + 12U);
    t9 = *((unsigned int *)t17);
    t62 = (1U * t9);
    memcpy(t14, t6, t62);
    t6 = (t41 + 56U);
    t7 = *((char **)t6);
    t6 = work_p_0874702962_sub_3468201349_3436059917(t1, t7, t39);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t6, 16U);

LAB1:    return t0;
LAB3:    *((char **)t49) = t2;
    goto LAB2;

LAB4:;
}

char *work_p_0874702962_sub_324714392_3436059917(char *t1, char *t2)
{
    char t3[248];
    char t4[24];
    char t5[16];
    char t10[16];
    char t15[16];
    char t21[16];
    char t27[32];
    char t34[16];
    char t35[16];
    char t36[16];
    char t37[16];
    char t42[16];
    char *t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t38;
    char *t39;
    int t40;
    int t41;
    char *t43;
    char *t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t55;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 15);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t10 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 15;
    t11 = (t7 + 4U);
    *((int *)t11) = 0;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 15);
    t9 = (t12 * -1);
    t9 = (t9 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t9;
    t11 = (t3 + 4U);
    t13 = (t1 + 2736);
    t14 = (t11 + 88U);
    *((char **)t14) = t13;
    t16 = (t11 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t11 + 64U);
    t18 = (t13 + 80U);
    t19 = *((char **)t18);
    *((char **)t17) = t19;
    t20 = (t11 + 80U);
    *((unsigned int *)t20) = 16U;
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (0 - 31);
    t9 = (t24 * -1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t23 = (t3 + 124U);
    t25 = ((IEEE_P_1242562249) + 3112);
    t26 = (t23 + 88U);
    *((char **)t26) = t25;
    t28 = (t23 + 56U);
    *((char **)t28) = t27;
    xsi_type_set_default_value(t25, t27, t21);
    t29 = (t23 + 64U);
    *((char **)t29) = t21;
    t30 = (t23 + 80U);
    *((unsigned int *)t30) = 32U;
    t31 = (t4 + 4U);
    t32 = (t2 != 0);
    if (t32 == 1)
        goto LAB3;

LAB2:    t33 = (t4 + 12U);
    *((char **)t33) = t5;
    t38 = (t1 + 1168U);
    t39 = *((char **)t38);
    t40 = *((int *)t39);
    t41 = (2 * t40);
    t38 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t37, t2, t5, t41);
    t43 = (t1 + 1168U);
    t44 = *((char **)t43);
    t45 = *((int *)t44);
    t46 = (2 * t45);
    t43 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t42, t2, t5, t46);
    t47 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t36, t38, t37, t43, t42);
    t48 = ieee_p_1242562249_sub_3461525680_1035706684(IEEE_P_1242562249, t35, t47, t36, 2);
    t49 = (t1 + 1168U);
    t50 = *((char **)t49);
    t51 = *((int *)t50);
    t49 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t34, t48, t35, t51);
    t52 = (t11 + 56U);
    t53 = *((char **)t52);
    t52 = (t53 + 0);
    t54 = (t34 + 12U);
    t9 = *((unsigned int *)t54);
    t9 = (t9 * 1U);
    memcpy(t52, t49, t9);
    t6 = (t1 + 1408U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = (t1 + 1168U);
    t13 = *((char **)t6);
    t12 = *((int *)t13);
    t6 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t36, t8, t12);
    t14 = (t1 + 1168U);
    t16 = *((char **)t14);
    t24 = *((int *)t16);
    t40 = (2 * t24);
    t14 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t35, t6, t36, t40);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t17 = (t1 + 1168U);
    t19 = *((char **)t17);
    t41 = *((int *)t19);
    t45 = (2 * t41);
    t17 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t37, t18, t10, t45);
    t20 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t34, t14, t35, t17, t37);
    t22 = (t23 + 56U);
    t25 = *((char **)t22);
    t22 = (t25 + 0);
    t26 = (t34 + 12U);
    t9 = *((unsigned int *)t26);
    t55 = (1U * t9);
    memcpy(t22, t20, t55);
    t6 = (t23 + 56U);
    t7 = *((char **)t6);
    t6 = work_p_0874702962_sub_3468201349_3436059917(t1, t7, t21);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t6, 16U);

LAB1:    return t0;
LAB3:    *((char **)t31) = t2;
    goto LAB2;

LAB4:;
}

char *work_p_0874702962_sub_413550656_3436059917(char *t1, char *t2)
{
    char t3[248];
    char t4[24];
    char t5[16];
    char t10[16];
    char t15[16];
    char t21[16];
    char t27[32];
    char t34[16];
    char t35[16];
    char t36[16];
    char t37[16];
    char t42[16];
    char t55[16];
    char *t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned char t32;
    char *t33;
    char *t38;
    char *t39;
    int t40;
    int t41;
    char *t43;
    char *t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t56;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 15);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t10 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 15;
    t11 = (t7 + 4U);
    *((int *)t11) = 0;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 15);
    t9 = (t12 * -1);
    t9 = (t9 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t9;
    t11 = (t3 + 4U);
    t13 = (t1 + 2736);
    t14 = (t11 + 88U);
    *((char **)t14) = t13;
    t16 = (t11 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, 0);
    t17 = (t11 + 64U);
    t18 = (t13 + 80U);
    t19 = *((char **)t18);
    *((char **)t17) = t19;
    t20 = (t11 + 80U);
    *((unsigned int *)t20) = 16U;
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 31;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (0 - 31);
    t9 = (t24 * -1);
    t9 = (t9 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t9;
    t23 = (t3 + 124U);
    t25 = ((IEEE_P_1242562249) + 3112);
    t26 = (t23 + 88U);
    *((char **)t26) = t25;
    t28 = (t23 + 56U);
    *((char **)t28) = t27;
    xsi_type_set_default_value(t25, t27, t21);
    t29 = (t23 + 64U);
    *((char **)t29) = t21;
    t30 = (t23 + 80U);
    *((unsigned int *)t30) = 32U;
    t31 = (t4 + 4U);
    t32 = (t2 != 0);
    if (t32 == 1)
        goto LAB3;

LAB2:    t33 = (t4 + 12U);
    *((char **)t33) = t5;
    t38 = (t1 + 1168U);
    t39 = *((char **)t38);
    t40 = *((int *)t39);
    t41 = (2 * t40);
    t38 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t37, t2, t5, t41);
    t43 = (t1 + 1168U);
    t44 = *((char **)t43);
    t45 = *((int *)t44);
    t46 = (2 * t45);
    t43 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t42, t2, t5, t46);
    t47 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t36, t38, t37, t43, t42);
    t48 = ieee_p_1242562249_sub_3461525680_1035706684(IEEE_P_1242562249, t35, t47, t36, 2);
    t49 = (t1 + 1168U);
    t50 = *((char **)t49);
    t51 = *((int *)t50);
    t49 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t34, t48, t35, t51);
    t52 = (t11 + 56U);
    t53 = *((char **)t52);
    t52 = (t53 + 0);
    t54 = (t34 + 12U);
    t9 = *((unsigned int *)t54);
    t9 = (t9 * 1U);
    memcpy(t52, t49, t9);
    t6 = (t1 + 1408U);
    t7 = *((char **)t6);
    t8 = *((int *)t7);
    t6 = (t1 + 1168U);
    t13 = *((char **)t6);
    t12 = *((int *)t13);
    t6 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t37, t8, t12);
    t14 = (t1 + 1168U);
    t16 = *((char **)t14);
    t24 = *((int *)t16);
    t40 = (2 * t24);
    t14 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t36, t6, t37, t40);
    t17 = (t1 + 1168U);
    t18 = *((char **)t17);
    t41 = *((int *)t18);
    t45 = (2 * t41);
    t17 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t42, t2, t5, t45);
    t19 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t35, t14, t36, t17, t42);
    t20 = (t11 + 56U);
    t22 = *((char **)t20);
    t20 = (t1 + 1168U);
    t25 = *((char **)t20);
    t46 = *((int *)t25);
    t51 = (2 * t46);
    t20 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t55, t22, t10, t51);
    t26 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t34, t19, t35, t20, t55);
    t28 = (t23 + 56U);
    t29 = *((char **)t28);
    t28 = (t29 + 0);
    t30 = (t34 + 12U);
    t9 = *((unsigned int *)t30);
    t56 = (1U * t9);
    memcpy(t28, t26, t56);
    t6 = (t23 + 56U);
    t7 = *((char **)t6);
    t6 = work_p_0874702962_sub_3468201349_3436059917(t1, t7, t21);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t6, 16U);

LAB1:    return t0;
LAB3:    *((char **)t31) = t2;
    goto LAB2;

LAB4:;
}

char *work_p_0874702962_sub_1271793263_3436059917(char *t1, char *t2)
{
    char t3[488];
    char t4[24];
    char t5[16];
    char t10[16];
    char t15[32];
    char t22[32];
    char t29[32];
    char t36[32];
    char t43[16];
    char t51[16];
    char t52[16];
    char t53[16];
    char *t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned char t41;
    char *t42;
    char *t44;
    char *t45;
    int t46;
    int t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t54;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 15);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t10 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 31;
    t11 = (t7 + 4U);
    *((int *)t11) = 0;
    t11 = (t7 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 31);
    t9 = (t12 * -1);
    t9 = (t9 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t9;
    t11 = (t3 + 4U);
    t13 = ((IEEE_P_1242562249) + 3112);
    t14 = (t11 + 88U);
    *((char **)t14) = t13;
    t16 = (t11 + 56U);
    *((char **)t16) = t15;
    xsi_type_set_default_value(t13, t15, t10);
    t17 = (t11 + 64U);
    *((char **)t17) = t10;
    t18 = (t11 + 80U);
    *((unsigned int *)t18) = 32U;
    t19 = (t3 + 124U);
    t20 = ((IEEE_P_1242562249) + 3112);
    t21 = (t19 + 88U);
    *((char **)t21) = t20;
    t23 = (t19 + 56U);
    *((char **)t23) = t22;
    xsi_type_set_default_value(t20, t22, t10);
    t24 = (t19 + 64U);
    *((char **)t24) = t10;
    t25 = (t19 + 80U);
    *((unsigned int *)t25) = 32U;
    t26 = (t3 + 244U);
    t27 = ((IEEE_P_1242562249) + 3112);
    t28 = (t26 + 88U);
    *((char **)t28) = t27;
    t30 = (t26 + 56U);
    *((char **)t30) = t29;
    xsi_type_set_default_value(t27, t29, t10);
    t31 = (t26 + 64U);
    *((char **)t31) = t10;
    t32 = (t26 + 80U);
    *((unsigned int *)t32) = 32U;
    t33 = (t3 + 364U);
    t34 = ((IEEE_P_1242562249) + 3112);
    t35 = (t33 + 88U);
    *((char **)t35) = t34;
    t37 = (t33 + 56U);
    *((char **)t37) = t36;
    xsi_type_set_default_value(t34, t36, t10);
    t38 = (t33 + 64U);
    *((char **)t38) = t10;
    t39 = (t33 + 80U);
    *((unsigned int *)t39) = 32U;
    t40 = (t4 + 4U);
    t41 = (t2 != 0);
    if (t41 == 1)
        goto LAB3;

LAB2:    t42 = (t4 + 12U);
    *((char **)t42) = t5;
    t44 = (t1 + 1168U);
    t45 = *((char **)t44);
    t46 = *((int *)t45);
    t47 = (2 * t46);
    t44 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t43, t2, t5, t47);
    t48 = (t11 + 56U);
    t49 = *((char **)t48);
    t48 = (t49 + 0);
    t50 = (t43 + 12U);
    t9 = *((unsigned int *)t50);
    t9 = (t9 * 1U);
    memcpy(t48, t44, t9);
    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t6 = (t11 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t51, t7, t10, t13, t10);
    t14 = (t1 + 1168U);
    t16 = *((char **)t14);
    t8 = *((int *)t16);
    t12 = (2 * t8);
    t14 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t43, t6, t51, t12);
    t17 = (t19 + 56U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t20 = (t43 + 12U);
    t9 = *((unsigned int *)t20);
    t9 = (t9 * 1U);
    memcpy(t17, t14, t9);
    t6 = (t19 + 56U);
    t7 = *((char **)t6);
    t6 = (t11 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_2807594338_1035706684(IEEE_P_1242562249, t52, t7, t10, t13, t10);
    t14 = ieee_p_1242562249_sub_3461525680_1035706684(IEEE_P_1242562249, t51, t6, t52, 3);
    t16 = (t1 + 1168U);
    t17 = *((char **)t16);
    t8 = *((int *)t17);
    t12 = (2 * t8);
    t16 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t43, t14, t51, t12);
    t18 = (t26 + 56U);
    t20 = *((char **)t18);
    t18 = (t20 + 0);
    t21 = (t43 + 12U);
    t9 = *((unsigned int *)t21);
    t9 = (t9 * 1U);
    memcpy(t18, t16, t9);
    t6 = (t11 + 56U);
    t7 = *((char **)t6);
    t6 = (t19 + 56U);
    t13 = *((char **)t6);
    t6 = ieee_p_1242562249_sub_3461525680_1035706684(IEEE_P_1242562249, t53, t13, t10, 2);
    t14 = (t1 + 1168U);
    t16 = *((char **)t14);
    t8 = *((int *)t16);
    t12 = (2 * t8);
    t14 = ieee_p_1242562249_sub_3410769178_1035706684(IEEE_P_1242562249, t52, t6, t53, t12);
    t17 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t51, t7, t10, t14, t52);
    t18 = (t26 + 56U);
    t20 = *((char **)t18);
    t18 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t43, t17, t51, t20, t10);
    t21 = (t33 + 56U);
    t23 = *((char **)t21);
    t21 = (t23 + 0);
    t24 = (t43 + 12U);
    t9 = *((unsigned int *)t24);
    t54 = (1U * t9);
    memcpy(t21, t18, t54);
    t6 = (t33 + 56U);
    t7 = *((char **)t6);
    t6 = work_p_0874702962_sub_3468201349_3436059917(t1, t7, t10);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t6, 16U);

LAB1:    return t0;
LAB3:    *((char **)t40) = t2;
    goto LAB2;

LAB4:;
}


void ieee_p_2592010699_sub_3130575329_503743352();

void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_p_0874702962_init()
{
	static char *se[] = {(void *)work_p_0874702962_sub_3468201349_3436059917,(void *)work_p_0874702962_sub_792103819_3436059917,(void *)work_p_0874702962_sub_324714392_3436059917,(void *)work_p_0874702962_sub_413550656_3436059917,(void *)work_p_0874702962_sub_1271793263_3436059917};
	xsi_register_didat("work_p_0874702962", "isim/tb_alu_isim_beh.exe.sim/work/p_0874702962.didat");
	xsi_register_subprogram_executes(se);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
	xsi_register_resolution_function(2, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
