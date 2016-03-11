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
static const char *ng0 = "C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/memory.vhd";
extern char *WORK_P_0266299310;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3392787015_3212880686_p_0(char *t0)
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
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 36U);
    t1 = (t2 + t3);
    t4 = ((WORK_P_0266299310) + 5008U);
    t5 = *((char **)t4);
    t6 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    if (t6 != 0)
        goto LAB3;

LAB4:
LAB11:    t20 = xsi_get_transient_memory(4U);
    memset(t20, 0, 4U);
    t21 = t20;
    memset(t21, (unsigned char)2, 4U);
    t22 = (t0 + 6040);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t20, 4U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 5848);
    *((int *)t27) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t11 = (15 - 3);
    t12 = (t11 * 1U);
    t13 = (0 + 0U);
    t14 = (t13 + t12);
    t9 = (t10 + t14);
    t15 = (t0 + 6040);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 4U);
    xsi_driver_first_trans_fast(t15);
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

static void work_a_3392787015_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 16U);
    t1 = (t2 + t3);
    t4 = (t0 + 6104);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 5864);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (15 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + 0U);
    t6 = (t5 + t4);
    t1 = (t2 + t6);
    t7 = (t0 + 6168);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 5880);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_3212880686_p_3(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 36U);
    t1 = (t2 + t3);
    t4 = ((WORK_P_0266299310) + 4408U);
    t5 = *((char **)t4);
    t6 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    if (t6 != 0)
        goto LAB3;

LAB4:
LAB11:    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t17 = (0 + 0U);
    t15 = (t16 + t17);
    t18 = (t0 + 6232);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t15, 16U);
    xsi_driver_first_trans_delta(t18, 0U, 16U, 0LL);

LAB2:    t23 = (t0 + 5896);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t9 = (t0 + 6232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 16U);
    xsi_driver_first_trans_delta(t9, 0U, 16U, 0LL);
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

static void work_a_3392787015_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 16U);
    t1 = (t2 + t3);
    t4 = (t0 + 6296);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_delta(t4, 16U, 16U, 0LL);

LAB2:    t9 = (t0 + 5912);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 32U);
    t1 = (t2 + t3);
    t4 = (t0 + 6360);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_delta(t4, 32U, 4U, 0LL);

LAB2:    t9 = (t0 + 5928);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 + 36U);
    t1 = (t2 + t3);
    t4 = (t0 + 6424);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_delta(t4, 36U, 4U, 0LL);

LAB2:    t9 = (t0 + 5944);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3392787015_3212880686_p_7(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t3 = (t0 + 6488);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 40U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB3;

}


extern void work_a_3392787015_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3392787015_3212880686_p_0,(void *)work_a_3392787015_3212880686_p_1,(void *)work_a_3392787015_3212880686_p_2,(void *)work_a_3392787015_3212880686_p_3,(void *)work_a_3392787015_3212880686_p_4,(void *)work_a_3392787015_3212880686_p_5,(void *)work_a_3392787015_3212880686_p_6,(void *)work_a_3392787015_3212880686_p_7};
	xsi_register_didat("work_a_3392787015_3212880686", "isim/cpu_top_level_tb_isim_beh.exe.sim/work/a_3392787015_3212880686.didat");
	xsi_register_executes(pe);
}
