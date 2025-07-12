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
static const char *ng0 = "/home/sd/Flip_Flop/FF_JK_Clock.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2806609518_3212880686_p_0(char *t0)
{
    char t8[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    int t13;
    int t14;
    int t15;
    char *t16;
    int t18;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4080);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 1352U);
    t6 = *((char **)t3);
    t7 = *((unsigned char *)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t3 = xsi_base_array_concat(t3, t8, t9, (char)99, t5, (char)99, t7, (char)101);
    t10 = (t0 + 2288U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (1U + 1U);
    memcpy(t10, t3, t12);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t1 = (t0 + 6183);
    t13 = xsi_mem_cmp(t1, t3, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:    t6 = (t0 + 6185);
    t14 = xsi_mem_cmp(t6, t3, 2U);
    if (t14 == 1)
        goto LAB7;

LAB12:    t10 = (t0 + 6187);
    t15 = xsi_mem_cmp(t10, t3, 2U);
    if (t15 == 1)
        goto LAB8;

LAB13:    t16 = (t0 + 6189);
    t18 = xsi_mem_cmp(t16, t3, 2U);
    if (t18 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(37, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(26, ng0);
    goto LAB5;

LAB7:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4256);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 4192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 4256);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 4192);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t5;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t2);
    t1 = (t0 + 4256);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t5;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB15:;
}

static void work_a_2806609518_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4320);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4096);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2806609518_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4384);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4112);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2806609518_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2806609518_3212880686_p_0,(void *)work_a_2806609518_3212880686_p_1,(void *)work_a_2806609518_3212880686_p_2};
	xsi_register_didat("work_a_2806609518_3212880686", "isim/FF_JK_Clock_isim_beh.exe.sim/work/a_2806609518_3212880686.didat");
	xsi_register_executes(pe);
}
