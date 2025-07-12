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
static const char *ng0 = "/home/sd/Debounce/Debounce.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1585794704_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 1888U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t9 = (t6 != t8);
    if (t9 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1768U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t11 > 0);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1192U);
    t13 = *((char **)t4);
    t14 = *((unsigned char *)t13);
    t4 = (t0 + 3264);
    t15 = (t4 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t1 = (t0 + 1888U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t2;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1768U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 1;
    goto LAB6;

LAB8:    t4 = (t0 + 1768U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t12 = (t11 == 0);
    t3 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1768U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t20 = (t19 + 1);
    t1 = (t0 + 1768U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t20;
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1768U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t1 = (t0 + 1648U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t2 = (t11 > t19);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1768U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    goto LAB15;

}


extern void work_a_1585794704_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1585794704_3212880686_p_0};
	xsi_register_didat("work_a_1585794704_3212880686", "isim/State_Machine_isim_beh.exe.sim/work/a_1585794704_3212880686.didat");
	xsi_register_executes(pe);
}
