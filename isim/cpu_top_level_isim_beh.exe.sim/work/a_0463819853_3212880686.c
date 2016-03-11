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
static const char *ng0 = "C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/writeback.vhd";
extern char *WORK_P_0266299310;



static void work_a_0463819853_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3656);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 40U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3560);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0463819853_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 36U);
    t1 = (t2 + t3);
    t4 = ((WORK_P_0266299310) + 4888U);
    t5 = *((char **)t4);
    t6 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    if (t6 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 6584);
    t19 = (t0 + 3720);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 16U);
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 3576);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t11 = (0 + 0U);
    t9 = (t10 + t11);
    t12 = (t0 + 3720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 16U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    t7 = 0;

LAB8:    if (t7 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t4 = (t1 + t7);
    t8 = (t5 + t7);
    if (*((unsigned char *)t4) != *((unsigned char *)t8))
        goto LAB6;

LAB10:    t7 = (t7 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}


extern void work_a_0463819853_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0463819853_3212880686_p_0,(void *)work_a_0463819853_3212880686_p_1};
	xsi_register_didat("work_a_0463819853_3212880686", "isim/cpu_top_level_isim_beh.exe.sim/work/a_0463819853_3212880686.didat");
	xsi_register_executes(pe);
}
