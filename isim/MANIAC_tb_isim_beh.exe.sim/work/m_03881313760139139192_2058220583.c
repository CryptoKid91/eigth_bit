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
static const char *ng0 = "/mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/Control.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {14U, 0U};
static unsigned int ng13[] = {15U, 0U};



static void Always_49_0(char *t0)
{
    char t19[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    unsigned int t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 7624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 7944);
    *((int *)t2) = 1;
    t3 = (t0 + 7656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 3272U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3832);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3992);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4152);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4312);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4632);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5112);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5592);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5752);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5912);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6552);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB10:    t5 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB19:    goto LAB2;

LAB6:    xsi_set_current_line(50, ng0);

LAB9:    xsi_set_current_line(51, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(73, ng0);

LAB20:    xsi_set_current_line(74, ng0);
    t11 = (t0 + 6712);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);

LAB21:    t15 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t14, 3, t15, 3);
    if (t16 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t14, 3, t2, 3);
    if (t13 == 1)
        goto LAB24;

LAB25:
LAB26:    goto LAB19;

LAB13:    xsi_set_current_line(92, ng0);

LAB29:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 3112U);
    t5 = *((char **)t3);
    memset(t19, 0, 8);
    t3 = (t19 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 4);
    *((unsigned int *)t19) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 4);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t10 & 15U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 15U);

LAB30:    t12 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t19, 8, t12, 8);
    if (t16 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng7)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng9)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng11)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng13)));
    t13 = xsi_vlog_unsigned_case_compare(t19, 8, t2, 8);
    if (t13 == 1)
        goto LAB51;

LAB52:
LAB54:
LAB53:    xsi_set_current_line(220, ng0);

LAB101:    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(222, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB55:    goto LAB19;

LAB15:    xsi_set_current_line(227, ng0);

LAB102:    xsi_set_current_line(228, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3832);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(229, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB19;

LAB22:    xsi_set_current_line(76, ng0);

LAB27:    xsi_set_current_line(77, ng0);
    t17 = ((char*)((ng3)));
    t18 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t18, t17, 0, 0, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5752);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB26;

LAB24:    xsi_set_current_line(82, ng0);

LAB28:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5592);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6232);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB26;

LAB31:    xsi_set_current_line(95, ng0);
    t15 = (t0 + 6712);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);

LAB56:    t21 = ((char*)((ng1)));
    t22 = xsi_vlog_unsigned_case_compare(t18, 3, t21, 3);
    if (t22 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t18, 3, t2, 3);
    if (t13 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB55;

LAB33:    xsi_set_current_line(111, ng0);
    t3 = (t0 + 6712);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);

LAB64:    t12 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t11, 3, t12, 3);
    if (t16 == 1)
        goto LAB65;

LAB66:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB67;

LAB68:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t11, 3, t2, 3);
    if (t13 == 1)
        goto LAB69;

LAB70:
LAB71:    goto LAB55;

LAB35:    xsi_set_current_line(134, ng0);
    t3 = (t0 + 6712);
    t5 = (t3 + 56U);
    t12 = *((char **)t5);

LAB75:    t15 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t12, 3, t15, 3);
    if (t16 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB78;

LAB79:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB80;

LAB81:
LAB82:    goto LAB55;

LAB37:    xsi_set_current_line(158, ng0);
    t3 = (t0 + 6712);
    t5 = (t3 + 56U);
    t15 = *((char **)t5);

LAB86:    t17 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t15, 3, t17, 3);
    if (t16 == 1)
        goto LAB87;

LAB88:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t15, 3, t2, 3);
    if (t13 == 1)
        goto LAB89;

LAB90:
LAB91:    goto LAB55;

LAB39:    xsi_set_current_line(174, ng0);

LAB94:    xsi_set_current_line(175, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4152);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB41:    xsi_set_current_line(181, ng0);

LAB95:    xsi_set_current_line(182, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB43:    xsi_set_current_line(188, ng0);

LAB96:    xsi_set_current_line(189, ng0);
    t3 = (t0 + 3432U);
    t5 = *((char **)t3);
    memset(t25, 0, 8);
    t3 = (t25 + 4);
    t17 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t25) = t8;
    t9 = *((unsigned int *)t17);
    t10 = (t9 >> 1);
    t20 = (t10 & 1);
    *((unsigned int *)t3) = t20;
    t21 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t21, t25, 0, 0, 1, 0LL);
    xsi_set_current_line(190, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    memset(t25, 0, 8);
    t2 = (t25 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t25) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 1);
    t20 = (t10 & 1);
    *((unsigned int *)t2) = t20;
    t17 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t17, t25, 0, 0, 1, 0LL);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB45:    xsi_set_current_line(195, ng0);

LAB97:    xsi_set_current_line(196, ng0);
    t3 = (t0 + 3432U);
    t5 = *((char **)t3);
    memset(t25, 0, 8);
    t3 = (t25 + 4);
    t17 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t25) = t8;
    t9 = *((unsigned int *)t17);
    t10 = (t9 >> 0);
    t20 = (t10 & 1);
    *((unsigned int *)t3) = t20;
    t21 = (t0 + 5432);
    xsi_vlogvar_wait_assign_value(t21, t25, 0, 0, 1, 0LL);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    memset(t25, 0, 8);
    t2 = (t25 + 4);
    t5 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t25) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t20 = (t10 & 1);
    *((unsigned int *)t2) = t20;
    t17 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t17, t25, 0, 0, 1, 0LL);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB47:    xsi_set_current_line(202, ng0);

LAB98:    xsi_set_current_line(203, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3992);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5912);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB49:    xsi_set_current_line(209, ng0);

LAB99:    xsi_set_current_line(210, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(211, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB51:    xsi_set_current_line(214, ng0);

LAB100:    xsi_set_current_line(215, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 3832);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB55;

LAB57:    xsi_set_current_line(97, ng0);

LAB62:    xsi_set_current_line(98, ng0);
    t23 = ((char*)((ng3)));
    t24 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t24, t23, 0, 0, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB61;

LAB59:    xsi_set_current_line(103, ng0);

LAB63:    xsi_set_current_line(104, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4152);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB61;

LAB65:    xsi_set_current_line(113, ng0);

LAB72:    xsi_set_current_line(114, ng0);
    t15 = ((char*)((ng3)));
    t17 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t17, t15, 0, 0, 1, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB71;

LAB67:    xsi_set_current_line(119, ng0);

LAB73:    xsi_set_current_line(120, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4312);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB71;

LAB69:    xsi_set_current_line(125, ng0);

LAB74:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4152);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB71;

LAB76:    xsi_set_current_line(136, ng0);

LAB83:    xsi_set_current_line(137, ng0);
    t17 = ((char*)((ng3)));
    t21 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t21, t17, 0, 0, 1, 0LL);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB82;

LAB78:    xsi_set_current_line(142, ng0);

LAB84:    xsi_set_current_line(143, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4312);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4792);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB82;

LAB80:    xsi_set_current_line(148, ng0);

LAB85:    xsi_set_current_line(149, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4152);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4632);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB82;

LAB87:    xsi_set_current_line(160, ng0);

LAB92:    xsi_set_current_line(161, ng0);
    t21 = ((char*)((ng3)));
    t23 = (t0 + 5272);
    xsi_vlogvar_wait_assign_value(t23, t21, 0, 0, 1, 0LL);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB91;

LAB89:    xsi_set_current_line(166, ng0);

LAB93:    xsi_set_current_line(167, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 4952);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3992);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(169, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6712);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(170, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6552);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB91;

}


extern void work_m_03881313760139139192_2058220583_init()
{
	static char *pe[] = {(void *)Always_49_0};
	xsi_register_didat("work_m_03881313760139139192_2058220583", "isim/MANIAC_tb_isim_beh.exe.sim/work/m_03881313760139139192_2058220583.didat");
	xsi_register_executes(pe);
}
