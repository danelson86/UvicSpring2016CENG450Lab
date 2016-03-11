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
static const char *ng0 = "C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/demo_rom.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_2045698577_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0210077876_1566020785_p_0(char *t0)
{
    char t5[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1648U);
    t4 = *((char **)t3);
    t3 = (t0 + 1192U);
    t6 = *((char **)t3);
    t3 = (t0 + 5660U);
    t7 = ieee_p_1242562249_sub_2045698577_1035706684(IEEE_P_1242562249, t5, t6, t3, 6);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t5);
    t9 = (t8 - 0);
    t10 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t8);
    t11 = (16U * t10);
    t12 = (0 + t11);
    t13 = (t4 + t12);
    t14 = (t0 + 3032);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t13, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

}


extern void work_a_0210077876_1566020785_init()
{
	static char *pe[] = {(void *)work_a_0210077876_1566020785_p_0};
	xsi_register_didat("work_a_0210077876_1566020785", "isim/cpu_top_level_tb_isim_beh.exe.sim/work/a_0210077876_1566020785.didat");
	xsi_register_executes(pe);
}
