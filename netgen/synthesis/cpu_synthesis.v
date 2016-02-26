////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cpu_synthesis.v
// /___/   /\     Timestamp: Tue Feb 23 08:30:17 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim cpu.ngc cpu_synthesis.v 
// Device	: xc3s1200e-5-fg320
// Input file	: cpu.ngc
// Output file	: C:\Users\David\Documents\UVic\Spring 2016\CENG 450\Project\lab_feb22b\netgen\synthesis\cpu_synthesis.v
// # of Modules	: 1
// Design Name	: cpu
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module cpu (
  CLK, Z_FLAG, RST, N_FLAG, RESULT, EXT_IN, INSTR
);
  input CLK;
  output Z_FLAG;
  input RST;
  output N_FLAG;
  output [15 : 0] RESULT;
  input [15 : 0] EXT_IN;
  input [15 : 0] INSTR;
  wire N0;
  wire N1;
  wire N100;
  wire N105;
  wire N106;
  wire N117;
  wire N123;
  wire N126;
  wire N127;
  wire N135;
  wire N136;
  wire N138;
  wire N139;
  wire N141;
  wire N142;
  wire N144;
  wire N145;
  wire N147;
  wire N149;
  wire N151;
  wire N153;
  wire N155;
  wire N157;
  wire N159;
  wire N161;
  wire N169;
  wire N171;
  wire N173;
  wire N175;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N195;
  wire N199;
  wire N201;
  wire N203;
  wire N205;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N225;
  wire N226;
  wire N227;
  wire N228;
  wire N229;
  wire N230;
  wire N231;
  wire N232;
  wire N233;
  wire N234;
  wire N235;
  wire N236;
  wire N237;
  wire N238;
  wire N239;
  wire N240;
  wire N241;
  wire N242;
  wire N243;
  wire N244;
  wire N245;
  wire N246;
  wire N247;
  wire N248;
  wire N249;
  wire N250;
  wire N251;
  wire N252;
  wire N253;
  wire N254;
  wire N255;
  wire N256;
  wire N257;
  wire N258;
  wire N259;
  wire N260;
  wire N261;
  wire N262;
  wire N263;
  wire N265;
  wire N267;
  wire N271;
  wire N273;
  wire N275;
  wire N279;
  wire N281;
  wire N282;
  wire N283;
  wire N284;
  wire N285;
  wire N286;
  wire N287;
  wire N288;
  wire N289;
  wire N290;
  wire N291;
  wire N292;
  wire N293;
  wire N294;
  wire N295;
  wire N296;
  wire N297;
  wire N298;
  wire N299;
  wire N300;
  wire N301;
  wire N302;
  wire N303;
  wire N304;
  wire N37;
  wire RESULT_0_OBUF_241;
  wire RESULT_10_OBUF_242;
  wire RESULT_11_OBUF_243;
  wire RESULT_12_OBUF_244;
  wire RESULT_13_OBUF_245;
  wire RESULT_14_OBUF_246;
  wire RESULT_15_OBUF_247;
  wire RESULT_1_OBUF_248;
  wire RESULT_2_OBUF_249;
  wire RESULT_3_OBUF_250;
  wire RESULT_4_OBUF_251;
  wire RESULT_5_OBUF_252;
  wire RESULT_6_OBUF_253;
  wire RESULT_7_OBUF_254;
  wire RESULT_8_OBUF_255;
  wire RESULT_9_OBUF_256;
  wire \XLXI_1/Mmux_calc_result_3_f5_289 ;
  wire \XLXI_1/Mmux_calc_result_3_f51 ;
  wire \XLXI_1/Mmux_calc_result_3_f510 ;
  wire \XLXI_1/Mmux_calc_result_3_f511 ;
  wire \XLXI_1/Mmux_calc_result_3_f512 ;
  wire \XLXI_1/Mmux_calc_result_3_f513 ;
  wire \XLXI_1/Mmux_calc_result_3_f514 ;
  wire \XLXI_1/Mmux_calc_result_3_f515 ;
  wire \XLXI_1/Mmux_calc_result_3_f52 ;
  wire \XLXI_1/Mmux_calc_result_3_f53 ;
  wire \XLXI_1/Mmux_calc_result_3_f54 ;
  wire \XLXI_1/Mmux_calc_result_3_f55 ;
  wire \XLXI_1/Mmux_calc_result_3_f56 ;
  wire \XLXI_1/Mmux_calc_result_3_f57 ;
  wire \XLXI_1/Mmux_calc_result_3_f58 ;
  wire \XLXI_1/Mmux_calc_result_3_f59 ;
  wire \XLXI_1/Mmux_calc_result_4_305 ;
  wire \XLXI_1/Mmux_calc_result_41_306 ;
  wire \XLXI_1/Mmux_calc_result_410_307 ;
  wire \XLXI_1/Mmux_calc_result_411_308 ;
  wire \XLXI_1/Mmux_calc_result_412_309 ;
  wire \XLXI_1/Mmux_calc_result_413_310 ;
  wire \XLXI_1/Mmux_calc_result_414_311 ;
  wire \XLXI_1/Mmux_calc_result_415_312 ;
  wire \XLXI_1/Mmux_calc_result_42_313 ;
  wire \XLXI_1/Mmux_calc_result_43_314 ;
  wire \XLXI_1/Mmux_calc_result_44_315 ;
  wire \XLXI_1/Mmux_calc_result_45_316 ;
  wire \XLXI_1/Mmux_calc_result_46_317 ;
  wire \XLXI_1/Mmux_calc_result_47_318 ;
  wire \XLXI_1/Mmux_calc_result_48_319 ;
  wire \XLXI_1/Mmux_calc_result_49_320 ;
  wire \XLXI_1/Mmux_calc_result_4_f5_321 ;
  wire \XLXI_1/Mmux_calc_result_4_f51 ;
  wire \XLXI_1/Mmux_calc_result_4_f510 ;
  wire \XLXI_1/Mmux_calc_result_4_f511 ;
  wire \XLXI_1/Mmux_calc_result_4_f512 ;
  wire \XLXI_1/Mmux_calc_result_4_f513 ;
  wire \XLXI_1/Mmux_calc_result_4_f514 ;
  wire \XLXI_1/Mmux_calc_result_4_f515 ;
  wire \XLXI_1/Mmux_calc_result_4_f52 ;
  wire \XLXI_1/Mmux_calc_result_4_f53 ;
  wire \XLXI_1/Mmux_calc_result_4_f54 ;
  wire \XLXI_1/Mmux_calc_result_4_f55 ;
  wire \XLXI_1/Mmux_calc_result_4_f56 ;
  wire \XLXI_1/Mmux_calc_result_4_f57 ;
  wire \XLXI_1/Mmux_calc_result_4_f58 ;
  wire \XLXI_1/Mmux_calc_result_4_f59 ;
  wire \XLXI_1/Mmux_calc_result_5_337 ;
  wire \XLXI_1/Mmux_calc_result_51_338 ;
  wire \XLXI_1/Mmux_calc_result_510_339 ;
  wire \XLXI_1/Mmux_calc_result_511_340 ;
  wire \XLXI_1/Mmux_calc_result_512_341 ;
  wire \XLXI_1/Mmux_calc_result_513_342 ;
  wire \XLXI_1/Mmux_calc_result_514_343 ;
  wire \XLXI_1/Mmux_calc_result_515_344 ;
  wire \XLXI_1/Mmux_calc_result_516_345 ;
  wire \XLXI_1/Mmux_calc_result_517_346 ;
  wire \XLXI_1/Mmux_calc_result_518_347 ;
  wire \XLXI_1/Mmux_calc_result_519_348 ;
  wire \XLXI_1/Mmux_calc_result_52_349 ;
  wire \XLXI_1/Mmux_calc_result_520_350 ;
  wire \XLXI_1/Mmux_calc_result_521_351 ;
  wire \XLXI_1/Mmux_calc_result_522_352 ;
  wire \XLXI_1/Mmux_calc_result_523_353 ;
  wire \XLXI_1/Mmux_calc_result_524_354 ;
  wire \XLXI_1/Mmux_calc_result_525_355 ;
  wire \XLXI_1/Mmux_calc_result_526_356 ;
  wire \XLXI_1/Mmux_calc_result_527_357 ;
  wire \XLXI_1/Mmux_calc_result_528_358 ;
  wire \XLXI_1/Mmux_calc_result_529_359 ;
  wire \XLXI_1/Mmux_calc_result_53_360 ;
  wire \XLXI_1/Mmux_calc_result_530_361 ;
  wire \XLXI_1/Mmux_calc_result_531_362 ;
  wire \XLXI_1/Mmux_calc_result_54_363 ;
  wire \XLXI_1/Mmux_calc_result_55_364 ;
  wire \XLXI_1/Mmux_calc_result_56_365 ;
  wire \XLXI_1/Mmux_calc_result_57_366 ;
  wire \XLXI_1/Mmux_calc_result_58_367 ;
  wire \XLXI_1/Mmux_calc_result_59_368 ;
  wire \XLXI_1/Mmux_calc_result_6_369 ;
  wire \XLXI_1/Mmux_calc_result_61_370 ;
  wire \XLXI_1/Mmux_calc_result_610_371 ;
  wire \XLXI_1/Mmux_calc_result_611_372 ;
  wire \XLXI_1/Mmux_calc_result_612_373 ;
  wire \XLXI_1/Mmux_calc_result_613_374 ;
  wire \XLXI_1/Mmux_calc_result_614_375 ;
  wire \XLXI_1/Mmux_calc_result_615_376 ;
  wire \XLXI_1/Mmux_calc_result_62_377 ;
  wire \XLXI_1/Mmux_calc_result_63_378 ;
  wire \XLXI_1/Mmux_calc_result_64_379 ;
  wire \XLXI_1/Mmux_calc_result_65_380 ;
  wire \XLXI_1/Mmux_calc_result_66_381 ;
  wire \XLXI_1/Mmux_calc_result_67_382 ;
  wire \XLXI_1/Mmux_calc_result_68_383 ;
  wire \XLXI_1/Mmux_calc_result_69_384 ;
  wire \XLXI_1/Sh10_385 ;
  wire \XLXI_1/Sh11_386 ;
  wire \XLXI_1/Sh12_387 ;
  wire \XLXI_1/Sh13_388 ;
  wire \XLXI_1/Sh14 ;
  wire \XLXI_1/Sh15 ;
  wire \XLXI_1/Sh32 ;
  wire \XLXI_1/Sh33 ;
  wire \XLXI_1/Sh34_393 ;
  wire \XLXI_1/Sh35_394 ;
  wire \XLXI_1/Sh36_395 ;
  wire \XLXI_1/Sh37_396 ;
  wire \XLXI_1/Sh38_397 ;
  wire \XLXI_1/Sh39_398 ;
  wire \XLXI_1/Sh4_399 ;
  wire \XLXI_1/Sh40_400 ;
  wire \XLXI_1/Sh41_401 ;
  wire \XLXI_1/Sh42_402 ;
  wire \XLXI_1/Sh43_403 ;
  wire \XLXI_1/Sh5_404 ;
  wire \XLXI_1/Sh6_405 ;
  wire \XLXI_1/Sh7_406 ;
  wire \XLXI_1/Sh8_407 ;
  wire \XLXI_1/Sh9_408 ;
  wire \XLXI_1/calc_result<15>_inv ;
  wire \XLXI_1/calc_result_mux0000 ;
  wire \XLXI_1/calc_result_or0000 ;
  wire \XLXI_1/calc_result_or000014_444 ;
  wire \XLXI_1/calc_result_or000023_445 ;
  wire \XLXI_1/calc_result_or00004_446 ;
  wire \XLXI_1/calc_result_or00009_447 ;
  wire \XLXI_1/calc_result_shift0002<0>26_448 ;
  wire \XLXI_1/calc_result_shift0002<0>41_449 ;
  wire \XLXI_1/calc_result_shift0002[10] ;
  wire \XLXI_1/calc_result_shift0002[11] ;
  wire \XLXI_1/calc_result_shift0002[14] ;
  wire \XLXI_1/calc_result_shift0002<1>26_453 ;
  wire \XLXI_1/calc_result_shift0002<1>41_454 ;
  wire \XLXI_1/calc_result_shift0002<2>26_455 ;
  wire \XLXI_1/calc_result_shift0002<2>41_456 ;
  wire \XLXI_1/calc_result_shift0002<3>26_457 ;
  wire \XLXI_1/calc_result_shift0002<3>41_458 ;
  wire \XLXI_1/calc_result_shift0002[4] ;
  wire \XLXI_1/calc_result_shift0002[5] ;
  wire \XLXI_1/calc_result_shift0002[6] ;
  wire \XLXI_1/calc_result_shift0002<7>_SW2 ;
  wire \XLXI_1/calc_result_shift0002<7>_SW21_463 ;
  wire \XLXI_1/calc_result_shift0002[8] ;
  wire \XLXI_1/calc_result_shift0002[9] ;
  wire \XLXI_1/calc_result_shift0003[0] ;
  wire \XLXI_1/calc_result_shift0003<12>26_467 ;
  wire \XLXI_1/calc_result_shift0003<12>41_468 ;
  wire \XLXI_1/calc_result_shift0003<13>46_469 ;
  wire \XLXI_1/calc_result_shift0003<14>46_470 ;
  wire \XLXI_1/calc_result_shift0003<15>26_471 ;
  wire \XLXI_1/calc_result_shift0003<15>41_472 ;
  wire \XLXI_1/calc_result_shift0003[2] ;
  wire \XLXI_1/calc_result_shift0003[7] ;
  wire \XLXI_1/calc_result_shift0003<8>_SW2 ;
  wire \XLXI_1/calc_result_shift0003<8>_SW21_476 ;
  wire \XLXI_1/calc_result_shift0003<9>_SW2 ;
  wire \XLXI_1/calc_result_shift0003<9>_SW21_478 ;
  wire \XLXI_1/n_flag_479 ;
  wire \XLXI_1/z_flag_480 ;
  wire \XLXI_1/z_flag_not0001 ;
  wire \XLXI_1/z_flag_not000125_482 ;
  wire \XLXI_1/z_flag_not00013_483 ;
  wire \XLXI_1/z_flag_not000130_484 ;
  wire \XLXI_1/z_flag_not00018_485 ;
  wire \XLXI_2/mux10_3_f5_486 ;
  wire \XLXI_2/mux10_4_487 ;
  wire \XLXI_2/mux10_4_f5_488 ;
  wire \XLXI_2/mux10_5_489 ;
  wire \XLXI_2/mux10_51_490 ;
  wire \XLXI_2/mux10_6_491 ;
  wire \XLXI_2/mux11_3_f5_492 ;
  wire \XLXI_2/mux11_4_493 ;
  wire \XLXI_2/mux11_4_f5_494 ;
  wire \XLXI_2/mux11_5_495 ;
  wire \XLXI_2/mux11_51_496 ;
  wire \XLXI_2/mux11_6_497 ;
  wire \XLXI_2/mux12_3_f5_498 ;
  wire \XLXI_2/mux12_4_499 ;
  wire \XLXI_2/mux12_4_f5_500 ;
  wire \XLXI_2/mux12_5_501 ;
  wire \XLXI_2/mux12_51_502 ;
  wire \XLXI_2/mux12_6_503 ;
  wire \XLXI_2/mux13_3_f5_504 ;
  wire \XLXI_2/mux13_4_505 ;
  wire \XLXI_2/mux13_4_f5_506 ;
  wire \XLXI_2/mux13_5_507 ;
  wire \XLXI_2/mux13_51_508 ;
  wire \XLXI_2/mux13_6_509 ;
  wire \XLXI_2/mux14_3_f5_510 ;
  wire \XLXI_2/mux14_4_511 ;
  wire \XLXI_2/mux14_4_f5_512 ;
  wire \XLXI_2/mux14_5_513 ;
  wire \XLXI_2/mux14_51_514 ;
  wire \XLXI_2/mux14_6_515 ;
  wire \XLXI_2/mux15_3_f5_516 ;
  wire \XLXI_2/mux15_4_517 ;
  wire \XLXI_2/mux15_4_f5_518 ;
  wire \XLXI_2/mux15_5_519 ;
  wire \XLXI_2/mux15_51_520 ;
  wire \XLXI_2/mux15_6_521 ;
  wire \XLXI_2/mux16_3_f5_522 ;
  wire \XLXI_2/mux16_4_523 ;
  wire \XLXI_2/mux16_4_f5_524 ;
  wire \XLXI_2/mux16_5_525 ;
  wire \XLXI_2/mux16_51_526 ;
  wire \XLXI_2/mux16_6_527 ;
  wire \XLXI_2/mux17_3_f5_528 ;
  wire \XLXI_2/mux17_4_529 ;
  wire \XLXI_2/mux17_4_f5_530 ;
  wire \XLXI_2/mux17_5_531 ;
  wire \XLXI_2/mux17_51_532 ;
  wire \XLXI_2/mux17_6_533 ;
  wire \XLXI_2/mux18_3_f5_534 ;
  wire \XLXI_2/mux18_4_535 ;
  wire \XLXI_2/mux18_4_f5_536 ;
  wire \XLXI_2/mux18_5_537 ;
  wire \XLXI_2/mux18_51_538 ;
  wire \XLXI_2/mux18_6_539 ;
  wire \XLXI_2/mux19_3_f5_540 ;
  wire \XLXI_2/mux19_4_541 ;
  wire \XLXI_2/mux19_4_f5_542 ;
  wire \XLXI_2/mux19_5_543 ;
  wire \XLXI_2/mux19_51_544 ;
  wire \XLXI_2/mux19_6_545 ;
  wire \XLXI_2/mux1_3_f5_546 ;
  wire \XLXI_2/mux1_4_547 ;
  wire \XLXI_2/mux1_4_f5_548 ;
  wire \XLXI_2/mux1_5_549 ;
  wire \XLXI_2/mux1_51_550 ;
  wire \XLXI_2/mux1_6_551 ;
  wire \XLXI_2/mux20_3_f5_552 ;
  wire \XLXI_2/mux20_4_553 ;
  wire \XLXI_2/mux20_4_f5_554 ;
  wire \XLXI_2/mux20_5_555 ;
  wire \XLXI_2/mux20_51_556 ;
  wire \XLXI_2/mux20_6_557 ;
  wire \XLXI_2/mux21_3_f5_558 ;
  wire \XLXI_2/mux21_4_559 ;
  wire \XLXI_2/mux21_4_f5_560 ;
  wire \XLXI_2/mux21_5_561 ;
  wire \XLXI_2/mux21_51_562 ;
  wire \XLXI_2/mux21_6_563 ;
  wire \XLXI_2/mux22_3_f5_564 ;
  wire \XLXI_2/mux22_4_565 ;
  wire \XLXI_2/mux22_4_f5_566 ;
  wire \XLXI_2/mux22_5_567 ;
  wire \XLXI_2/mux22_51_568 ;
  wire \XLXI_2/mux22_6_569 ;
  wire \XLXI_2/mux23_3_f5_570 ;
  wire \XLXI_2/mux23_4_571 ;
  wire \XLXI_2/mux23_4_f5_572 ;
  wire \XLXI_2/mux23_5_573 ;
  wire \XLXI_2/mux23_51_574 ;
  wire \XLXI_2/mux23_6_575 ;
  wire \XLXI_2/mux24_3_f5_576 ;
  wire \XLXI_2/mux24_4_577 ;
  wire \XLXI_2/mux24_4_f5_578 ;
  wire \XLXI_2/mux24_5_579 ;
  wire \XLXI_2/mux24_51_580 ;
  wire \XLXI_2/mux24_6_581 ;
  wire \XLXI_2/mux25_3_f5_582 ;
  wire \XLXI_2/mux25_4_583 ;
  wire \XLXI_2/mux25_4_f5_584 ;
  wire \XLXI_2/mux25_5_585 ;
  wire \XLXI_2/mux25_51_586 ;
  wire \XLXI_2/mux25_6_587 ;
  wire \XLXI_2/mux26_3_f5_588 ;
  wire \XLXI_2/mux26_4_589 ;
  wire \XLXI_2/mux26_4_f5_590 ;
  wire \XLXI_2/mux26_5_591 ;
  wire \XLXI_2/mux26_51_592 ;
  wire \XLXI_2/mux26_6_593 ;
  wire \XLXI_2/mux27_3_f5_594 ;
  wire \XLXI_2/mux27_4_595 ;
  wire \XLXI_2/mux27_4_f5_596 ;
  wire \XLXI_2/mux27_5_597 ;
  wire \XLXI_2/mux27_51_598 ;
  wire \XLXI_2/mux27_6_599 ;
  wire \XLXI_2/mux28_3_f5_600 ;
  wire \XLXI_2/mux28_4_601 ;
  wire \XLXI_2/mux28_4_f5_602 ;
  wire \XLXI_2/mux28_5_603 ;
  wire \XLXI_2/mux28_51_604 ;
  wire \XLXI_2/mux28_6_605 ;
  wire \XLXI_2/mux29_3_f5_606 ;
  wire \XLXI_2/mux29_4_607 ;
  wire \XLXI_2/mux29_4_f5_608 ;
  wire \XLXI_2/mux29_5_609 ;
  wire \XLXI_2/mux29_51_610 ;
  wire \XLXI_2/mux29_6_611 ;
  wire \XLXI_2/mux2_3_f5_612 ;
  wire \XLXI_2/mux2_4_613 ;
  wire \XLXI_2/mux2_4_f5_614 ;
  wire \XLXI_2/mux2_5_615 ;
  wire \XLXI_2/mux2_51_616 ;
  wire \XLXI_2/mux2_6_617 ;
  wire \XLXI_2/mux30_3_f5_618 ;
  wire \XLXI_2/mux30_4_619 ;
  wire \XLXI_2/mux30_4_f5_620 ;
  wire \XLXI_2/mux30_5_621 ;
  wire \XLXI_2/mux30_51_622 ;
  wire \XLXI_2/mux30_6_623 ;
  wire \XLXI_2/mux31_3_f5_624 ;
  wire \XLXI_2/mux31_4_625 ;
  wire \XLXI_2/mux31_4_f5_626 ;
  wire \XLXI_2/mux31_5_627 ;
  wire \XLXI_2/mux31_51_628 ;
  wire \XLXI_2/mux31_6_629 ;
  wire \XLXI_2/mux3_3_f5_630 ;
  wire \XLXI_2/mux3_4_631 ;
  wire \XLXI_2/mux3_4_f5_632 ;
  wire \XLXI_2/mux3_5_633 ;
  wire \XLXI_2/mux3_51_634 ;
  wire \XLXI_2/mux3_6_635 ;
  wire \XLXI_2/mux4_3_f5_636 ;
  wire \XLXI_2/mux4_4_637 ;
  wire \XLXI_2/mux4_4_f5_638 ;
  wire \XLXI_2/mux4_5_639 ;
  wire \XLXI_2/mux4_51_640 ;
  wire \XLXI_2/mux4_6_641 ;
  wire \XLXI_2/mux5_3_f5_642 ;
  wire \XLXI_2/mux5_4_643 ;
  wire \XLXI_2/mux5_4_f5_644 ;
  wire \XLXI_2/mux5_5_645 ;
  wire \XLXI_2/mux5_51_646 ;
  wire \XLXI_2/mux5_6_647 ;
  wire \XLXI_2/mux6_3_f5_648 ;
  wire \XLXI_2/mux6_4_649 ;
  wire \XLXI_2/mux6_4_f5_650 ;
  wire \XLXI_2/mux6_5_651 ;
  wire \XLXI_2/mux6_51_652 ;
  wire \XLXI_2/mux6_6_653 ;
  wire \XLXI_2/mux7_3_f5_654 ;
  wire \XLXI_2/mux7_4_655 ;
  wire \XLXI_2/mux7_4_f5_656 ;
  wire \XLXI_2/mux7_5_657 ;
  wire \XLXI_2/mux7_51_658 ;
  wire \XLXI_2/mux7_6_659 ;
  wire \XLXI_2/mux8_3_f5_660 ;
  wire \XLXI_2/mux8_4_661 ;
  wire \XLXI_2/mux8_4_f5_662 ;
  wire \XLXI_2/mux8_5_663 ;
  wire \XLXI_2/mux8_51_664 ;
  wire \XLXI_2/mux8_6_665 ;
  wire \XLXI_2/mux9_3_f5_666 ;
  wire \XLXI_2/mux9_4_667 ;
  wire \XLXI_2/mux9_4_f5_668 ;
  wire \XLXI_2/mux9_5_669 ;
  wire \XLXI_2/mux9_51_670 ;
  wire \XLXI_2/mux9_6_671 ;
  wire \XLXI_2/mux_3_f5_672 ;
  wire \XLXI_2/mux_4_673 ;
  wire \XLXI_2/mux_4_f5_674 ;
  wire \XLXI_2/mux_5_675 ;
  wire \XLXI_2/mux_51_676 ;
  wire \XLXI_2/mux_6_677 ;
  wire \XLXI_2/reg_file_0_0_678 ;
  wire \XLXI_2/reg_file_0_1_679 ;
  wire \XLXI_2/reg_file_0_10_680 ;
  wire \XLXI_2/reg_file_0_11_681 ;
  wire \XLXI_2/reg_file_0_12_682 ;
  wire \XLXI_2/reg_file_0_13_683 ;
  wire \XLXI_2/reg_file_0_14_684 ;
  wire \XLXI_2/reg_file_0_15_685 ;
  wire \XLXI_2/reg_file_0_2_686 ;
  wire \XLXI_2/reg_file_0_3_687 ;
  wire \XLXI_2/reg_file_0_4_688 ;
  wire \XLXI_2/reg_file_0_5_689 ;
  wire \XLXI_2/reg_file_0_6_690 ;
  wire \XLXI_2/reg_file_0_7_691 ;
  wire \XLXI_2/reg_file_0_8_692 ;
  wire \XLXI_2/reg_file_0_9_693 ;
  wire \XLXI_2/reg_file_0_not0001 ;
  wire \XLXI_2/reg_file_1_0_695 ;
  wire \XLXI_2/reg_file_1_1_696 ;
  wire \XLXI_2/reg_file_1_10_697 ;
  wire \XLXI_2/reg_file_1_11_698 ;
  wire \XLXI_2/reg_file_1_12_699 ;
  wire \XLXI_2/reg_file_1_13_700 ;
  wire \XLXI_2/reg_file_1_14_701 ;
  wire \XLXI_2/reg_file_1_15_702 ;
  wire \XLXI_2/reg_file_1_2_703 ;
  wire \XLXI_2/reg_file_1_3_704 ;
  wire \XLXI_2/reg_file_1_4_705 ;
  wire \XLXI_2/reg_file_1_5_706 ;
  wire \XLXI_2/reg_file_1_6_707 ;
  wire \XLXI_2/reg_file_1_7_708 ;
  wire \XLXI_2/reg_file_1_8_709 ;
  wire \XLXI_2/reg_file_1_9_710 ;
  wire \XLXI_2/reg_file_1_not0001 ;
  wire \XLXI_2/reg_file_2_0_712 ;
  wire \XLXI_2/reg_file_2_1_713 ;
  wire \XLXI_2/reg_file_2_10_714 ;
  wire \XLXI_2/reg_file_2_11_715 ;
  wire \XLXI_2/reg_file_2_12_716 ;
  wire \XLXI_2/reg_file_2_13_717 ;
  wire \XLXI_2/reg_file_2_14_718 ;
  wire \XLXI_2/reg_file_2_15_719 ;
  wire \XLXI_2/reg_file_2_2_720 ;
  wire \XLXI_2/reg_file_2_3_721 ;
  wire \XLXI_2/reg_file_2_4_722 ;
  wire \XLXI_2/reg_file_2_5_723 ;
  wire \XLXI_2/reg_file_2_6_724 ;
  wire \XLXI_2/reg_file_2_7_725 ;
  wire \XLXI_2/reg_file_2_8_726 ;
  wire \XLXI_2/reg_file_2_9_727 ;
  wire \XLXI_2/reg_file_2_not0001 ;
  wire \XLXI_2/reg_file_3_0_729 ;
  wire \XLXI_2/reg_file_3_1_730 ;
  wire \XLXI_2/reg_file_3_10_731 ;
  wire \XLXI_2/reg_file_3_11_732 ;
  wire \XLXI_2/reg_file_3_12_733 ;
  wire \XLXI_2/reg_file_3_13_734 ;
  wire \XLXI_2/reg_file_3_14_735 ;
  wire \XLXI_2/reg_file_3_15_736 ;
  wire \XLXI_2/reg_file_3_2_737 ;
  wire \XLXI_2/reg_file_3_3_738 ;
  wire \XLXI_2/reg_file_3_4_739 ;
  wire \XLXI_2/reg_file_3_5_740 ;
  wire \XLXI_2/reg_file_3_6_741 ;
  wire \XLXI_2/reg_file_3_7_742 ;
  wire \XLXI_2/reg_file_3_8_743 ;
  wire \XLXI_2/reg_file_3_9_744 ;
  wire \XLXI_2/reg_file_3_not0001 ;
  wire \XLXI_2/reg_file_4_0_746 ;
  wire \XLXI_2/reg_file_4_1_747 ;
  wire \XLXI_2/reg_file_4_10_748 ;
  wire \XLXI_2/reg_file_4_11_749 ;
  wire \XLXI_2/reg_file_4_12_750 ;
  wire \XLXI_2/reg_file_4_13_751 ;
  wire \XLXI_2/reg_file_4_14_752 ;
  wire \XLXI_2/reg_file_4_15_753 ;
  wire \XLXI_2/reg_file_4_2_754 ;
  wire \XLXI_2/reg_file_4_3_755 ;
  wire \XLXI_2/reg_file_4_4_756 ;
  wire \XLXI_2/reg_file_4_5_757 ;
  wire \XLXI_2/reg_file_4_6_758 ;
  wire \XLXI_2/reg_file_4_7_759 ;
  wire \XLXI_2/reg_file_4_8_760 ;
  wire \XLXI_2/reg_file_4_9_761 ;
  wire \XLXI_2/reg_file_4_not0001 ;
  wire \XLXI_2/reg_file_5_0_763 ;
  wire \XLXI_2/reg_file_5_1_764 ;
  wire \XLXI_2/reg_file_5_10_765 ;
  wire \XLXI_2/reg_file_5_11_766 ;
  wire \XLXI_2/reg_file_5_12_767 ;
  wire \XLXI_2/reg_file_5_13_768 ;
  wire \XLXI_2/reg_file_5_14_769 ;
  wire \XLXI_2/reg_file_5_15_770 ;
  wire \XLXI_2/reg_file_5_2_771 ;
  wire \XLXI_2/reg_file_5_3_772 ;
  wire \XLXI_2/reg_file_5_4_773 ;
  wire \XLXI_2/reg_file_5_5_774 ;
  wire \XLXI_2/reg_file_5_6_775 ;
  wire \XLXI_2/reg_file_5_7_776 ;
  wire \XLXI_2/reg_file_5_8_777 ;
  wire \XLXI_2/reg_file_5_9_778 ;
  wire \XLXI_2/reg_file_5_not0001 ;
  wire \XLXI_2/reg_file_6_0_780 ;
  wire \XLXI_2/reg_file_6_1_781 ;
  wire \XLXI_2/reg_file_6_10_782 ;
  wire \XLXI_2/reg_file_6_11_783 ;
  wire \XLXI_2/reg_file_6_12_784 ;
  wire \XLXI_2/reg_file_6_13_785 ;
  wire \XLXI_2/reg_file_6_14_786 ;
  wire \XLXI_2/reg_file_6_15_787 ;
  wire \XLXI_2/reg_file_6_2_788 ;
  wire \XLXI_2/reg_file_6_3_789 ;
  wire \XLXI_2/reg_file_6_4_790 ;
  wire \XLXI_2/reg_file_6_5_791 ;
  wire \XLXI_2/reg_file_6_6_792 ;
  wire \XLXI_2/reg_file_6_7_793 ;
  wire \XLXI_2/reg_file_6_8_794 ;
  wire \XLXI_2/reg_file_6_9_795 ;
  wire \XLXI_2/reg_file_6_not0001 ;
  wire \XLXI_2/reg_file_7_0_797 ;
  wire \XLXI_2/reg_file_7_1_798 ;
  wire \XLXI_2/reg_file_7_10_799 ;
  wire \XLXI_2/reg_file_7_11_800 ;
  wire \XLXI_2/reg_file_7_12_801 ;
  wire \XLXI_2/reg_file_7_13_802 ;
  wire \XLXI_2/reg_file_7_14_803 ;
  wire \XLXI_2/reg_file_7_15_804 ;
  wire \XLXI_2/reg_file_7_2_805 ;
  wire \XLXI_2/reg_file_7_3_806 ;
  wire \XLXI_2/reg_file_7_4_807 ;
  wire \XLXI_2/reg_file_7_5_808 ;
  wire \XLXI_2/reg_file_7_6_809 ;
  wire \XLXI_2/reg_file_7_7_810 ;
  wire \XLXI_2/reg_file_7_8_811 ;
  wire \XLXI_2/reg_file_7_9_812 ;
  wire \XLXI_2/reg_file_7_not0001 ;
  wire \XLXI_4/ImmData_or0000_814 ;
  wire \XLXI_4/RegRead1_or0000 ;
  wire \XLXI_4/RegRead1_or0001 ;
  wire \XLXI_4/RegRead2_or0000_817 ;
  wire XLXN_215;
  wire XLXN_2151;
  wire XLXN_216;
  wire XLXN_8;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<17>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<16>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<15>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<14>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<13>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<12>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<11>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<10>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<9>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<8>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<7>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<6>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<5>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<4>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<3>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<2>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<1>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<0>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<35>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<34>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<33>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<32>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<31>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<30>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<29>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<28>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<27>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<26>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<25>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<24>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<23>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<22>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<21>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<20>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<19>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<18>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<17>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_P<16>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<17>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<16>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<15>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<14>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<13>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<12>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<11>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<10>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<9>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<8>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<7>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<6>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<5>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<4>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<3>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<2>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<1>_UNCONNECTED ;
  wire \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<0>_UNCONNECTED ;
  wire [14 : 0] \XLXI_1/Maddsub_calc_result_addsub0000_cy ;
  wire [15 : 0] \XLXI_1/Maddsub_calc_result_addsub0000_lut ;
  wire [15 : 0] \XLXI_1/calc_result_addsub0000 ;
  wire [15 : 0] \XLXI_1/calc_result_mult0001 ;
  wire [3 : 0] \XLXI_5/muxout ;
  wire [15 : 0] XLXN_103;
  wire [1 : 1] XLXN_104;
  wire [15 : 0] XLXN_206;
  wire [15 : 0] XLXN_207;
  wire [2 : 0] XLXN_23;
  wire [2 : 1] XLXN_24;
  wire [2 : 0] XLXN_49;
  wire [15 : 0] XLXN_87;
  wire [15 : 0] XLXN_97;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  XLXI_29 (
    .I(CLK),
    .O(XLXN_2151)
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  XLXI_30 (
    .I(RST),
    .O(XLXN_216)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5  (
    .I0(\XLXI_1/Mmux_calc_result_5_337 ),
    .I1(\XLXI_1/Mmux_calc_result_4_305 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f5_289 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_51  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [0]),
    .I2(\XLXI_1/calc_result_mult0001 [0]),
    .O(\XLXI_1/Mmux_calc_result_51_338 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_6  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[0]),
    .I2(XLXN_103[0]),
    .O(\XLXI_1/Mmux_calc_result_6_369 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5  (
    .I0(\XLXI_1/Mmux_calc_result_6_369 ),
    .I1(\XLXI_1/Mmux_calc_result_51_338 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f5_321 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6  (
    .I0(\XLXI_1/Mmux_calc_result_4_f5_321 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f5_289 ),
    .S(XLXN_49[2]),
    .O(RESULT_0_OBUF_241)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_0  (
    .I0(\XLXI_1/Mmux_calc_result_52_349 ),
    .I1(\XLXI_1/Mmux_calc_result_41_306 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f51 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_53  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [10]),
    .I2(\XLXI_1/calc_result_mult0001 [10]),
    .O(\XLXI_1/Mmux_calc_result_53_360 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_61  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[10]),
    .I2(XLXN_103[10]),
    .O(\XLXI_1/Mmux_calc_result_61_370 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_0  (
    .I0(\XLXI_1/Mmux_calc_result_61_370 ),
    .I1(\XLXI_1/Mmux_calc_result_53_360 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f51 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_0  (
    .I0(\XLXI_1/Mmux_calc_result_4_f51 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f51 ),
    .S(XLXN_49[2]),
    .O(RESULT_10_OBUF_242)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_1  (
    .I0(\XLXI_1/Mmux_calc_result_54_363 ),
    .I1(\XLXI_1/Mmux_calc_result_42_313 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f52 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_55  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [11]),
    .I2(\XLXI_1/calc_result_mult0001 [11]),
    .O(\XLXI_1/Mmux_calc_result_55_364 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_62  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[11]),
    .O(\XLXI_1/Mmux_calc_result_62_377 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_1  (
    .I0(\XLXI_1/Mmux_calc_result_62_377 ),
    .I1(\XLXI_1/Mmux_calc_result_55_364 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f52 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_1  (
    .I0(\XLXI_1/Mmux_calc_result_4_f52 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f52 ),
    .S(XLXN_49[2]),
    .O(RESULT_11_OBUF_243)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_2  (
    .I0(\XLXI_1/Mmux_calc_result_56_365 ),
    .I1(\XLXI_1/Mmux_calc_result_43_314 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f53 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_57  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [12]),
    .I2(\XLXI_1/calc_result_mult0001 [12]),
    .O(\XLXI_1/Mmux_calc_result_57_366 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_63  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[12]),
    .I2(XLXN_103[12]),
    .O(\XLXI_1/Mmux_calc_result_63_378 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_2  (
    .I0(\XLXI_1/Mmux_calc_result_63_378 ),
    .I1(\XLXI_1/Mmux_calc_result_57_366 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f53 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_2  (
    .I0(\XLXI_1/Mmux_calc_result_4_f53 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f53 ),
    .S(XLXN_49[2]),
    .O(RESULT_12_OBUF_244)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_3  (
    .I0(\XLXI_1/Mmux_calc_result_58_367 ),
    .I1(\XLXI_1/Mmux_calc_result_44_315 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f54 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_59  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [13]),
    .I2(\XLXI_1/calc_result_mult0001 [13]),
    .O(\XLXI_1/Mmux_calc_result_59_368 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_64  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[13]),
    .I2(XLXN_103[13]),
    .O(\XLXI_1/Mmux_calc_result_64_379 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_3  (
    .I0(\XLXI_1/Mmux_calc_result_64_379 ),
    .I1(\XLXI_1/Mmux_calc_result_59_368 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f54 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_3  (
    .I0(\XLXI_1/Mmux_calc_result_4_f54 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f54 ),
    .S(XLXN_49[2]),
    .O(RESULT_13_OBUF_245)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_4  (
    .I0(\XLXI_1/Mmux_calc_result_510_339 ),
    .I1(\XLXI_1/Mmux_calc_result_45_316 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f55 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_511  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [14]),
    .I2(\XLXI_1/calc_result_mult0001 [14]),
    .O(\XLXI_1/Mmux_calc_result_511_340 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_65  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[14]),
    .I2(XLXN_103[14]),
    .O(\XLXI_1/Mmux_calc_result_65_380 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_4  (
    .I0(\XLXI_1/Mmux_calc_result_65_380 ),
    .I1(\XLXI_1/Mmux_calc_result_511_340 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f55 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_4  (
    .I0(\XLXI_1/Mmux_calc_result_4_f55 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f55 ),
    .S(XLXN_49[2]),
    .O(RESULT_14_OBUF_246)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_5  (
    .I0(\XLXI_1/Mmux_calc_result_512_341 ),
    .I1(\XLXI_1/Mmux_calc_result_46_317 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f56 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_513  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [15]),
    .I2(\XLXI_1/calc_result_mult0001 [15]),
    .O(\XLXI_1/Mmux_calc_result_513_342 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_66  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[15]),
    .I2(XLXN_103[15]),
    .O(\XLXI_1/Mmux_calc_result_66_381 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_5  (
    .I0(\XLXI_1/Mmux_calc_result_66_381 ),
    .I1(\XLXI_1/Mmux_calc_result_513_342 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f56 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_5  (
    .I0(\XLXI_1/Mmux_calc_result_4_f56 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f56 ),
    .S(XLXN_49[2]),
    .O(RESULT_15_OBUF_247)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_6  (
    .I0(\XLXI_1/Mmux_calc_result_514_343 ),
    .I1(\XLXI_1/Mmux_calc_result_47_318 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f57 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_515  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [1]),
    .I2(\XLXI_1/calc_result_mult0001 [1]),
    .O(\XLXI_1/Mmux_calc_result_515_344 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_67  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[1]),
    .I2(XLXN_103[1]),
    .O(\XLXI_1/Mmux_calc_result_67_382 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_6  (
    .I0(\XLXI_1/Mmux_calc_result_67_382 ),
    .I1(\XLXI_1/Mmux_calc_result_515_344 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f57 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_6  (
    .I0(\XLXI_1/Mmux_calc_result_4_f57 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f57 ),
    .S(XLXN_49[2]),
    .O(RESULT_1_OBUF_248)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_7  (
    .I0(\XLXI_1/Mmux_calc_result_516_345 ),
    .I1(\XLXI_1/Mmux_calc_result_48_319 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f58 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_517  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [2]),
    .I2(\XLXI_1/calc_result_mult0001 [2]),
    .O(\XLXI_1/Mmux_calc_result_517_346 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_68  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[2]),
    .I2(XLXN_103[2]),
    .O(\XLXI_1/Mmux_calc_result_68_383 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_7  (
    .I0(\XLXI_1/Mmux_calc_result_68_383 ),
    .I1(\XLXI_1/Mmux_calc_result_517_346 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f58 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_7  (
    .I0(\XLXI_1/Mmux_calc_result_4_f58 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f58 ),
    .S(XLXN_49[2]),
    .O(RESULT_2_OBUF_249)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_8  (
    .I0(\XLXI_1/Mmux_calc_result_518_347 ),
    .I1(\XLXI_1/Mmux_calc_result_49_320 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f59 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_519  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [3]),
    .I2(\XLXI_1/calc_result_mult0001 [3]),
    .O(\XLXI_1/Mmux_calc_result_519_348 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_69  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[3]),
    .O(\XLXI_1/Mmux_calc_result_69_384 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_8  (
    .I0(\XLXI_1/Mmux_calc_result_69_384 ),
    .I1(\XLXI_1/Mmux_calc_result_519_348 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f59 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_8  (
    .I0(\XLXI_1/Mmux_calc_result_4_f59 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f59 ),
    .S(XLXN_49[2]),
    .O(RESULT_3_OBUF_250)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_9  (
    .I0(\XLXI_1/Mmux_calc_result_520_350 ),
    .I1(\XLXI_1/Mmux_calc_result_410_307 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f510 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_521  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [4]),
    .I2(\XLXI_1/calc_result_mult0001 [4]),
    .O(\XLXI_1/Mmux_calc_result_521_351 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_610  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[4]),
    .O(\XLXI_1/Mmux_calc_result_610_371 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_9  (
    .I0(\XLXI_1/Mmux_calc_result_610_371 ),
    .I1(\XLXI_1/Mmux_calc_result_521_351 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f510 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_9  (
    .I0(\XLXI_1/Mmux_calc_result_4_f510 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f510 ),
    .S(XLXN_49[2]),
    .O(RESULT_4_OBUF_251)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_10  (
    .I0(\XLXI_1/Mmux_calc_result_522_352 ),
    .I1(\XLXI_1/Mmux_calc_result_411_308 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f511 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_523  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [5]),
    .I2(\XLXI_1/calc_result_mult0001 [5]),
    .O(\XLXI_1/Mmux_calc_result_523_353 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_611  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[5]),
    .O(\XLXI_1/Mmux_calc_result_611_372 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_10  (
    .I0(\XLXI_1/Mmux_calc_result_611_372 ),
    .I1(\XLXI_1/Mmux_calc_result_523_353 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f511 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_10  (
    .I0(\XLXI_1/Mmux_calc_result_4_f511 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f511 ),
    .S(XLXN_49[2]),
    .O(RESULT_5_OBUF_252)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_11  (
    .I0(\XLXI_1/Mmux_calc_result_524_354 ),
    .I1(\XLXI_1/Mmux_calc_result_412_309 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f512 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_525  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [6]),
    .I2(\XLXI_1/calc_result_mult0001 [6]),
    .O(\XLXI_1/Mmux_calc_result_525_355 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_612  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[6]),
    .I2(XLXN_103[6]),
    .O(\XLXI_1/Mmux_calc_result_612_373 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_11  (
    .I0(\XLXI_1/Mmux_calc_result_612_373 ),
    .I1(\XLXI_1/Mmux_calc_result_525_355 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f512 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_11  (
    .I0(\XLXI_1/Mmux_calc_result_4_f512 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f512 ),
    .S(XLXN_49[2]),
    .O(RESULT_6_OBUF_253)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_12  (
    .I0(\XLXI_1/Mmux_calc_result_526_356 ),
    .I1(\XLXI_1/Mmux_calc_result_413_310 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f513 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_527  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [7]),
    .I2(\XLXI_1/calc_result_mult0001 [7]),
    .O(\XLXI_1/Mmux_calc_result_527_357 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_613  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[7]),
    .O(\XLXI_1/Mmux_calc_result_613_374 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_12  (
    .I0(\XLXI_1/Mmux_calc_result_613_374 ),
    .I1(\XLXI_1/Mmux_calc_result_527_357 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f513 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_12  (
    .I0(\XLXI_1/Mmux_calc_result_4_f513 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f513 ),
    .S(XLXN_49[2]),
    .O(RESULT_7_OBUF_254)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_13  (
    .I0(\XLXI_1/Mmux_calc_result_528_358 ),
    .I1(\XLXI_1/Mmux_calc_result_414_311 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f514 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_529  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [8]),
    .I2(\XLXI_1/calc_result_mult0001 [8]),
    .O(\XLXI_1/Mmux_calc_result_529_359 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_614  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[8]),
    .I2(XLXN_103[8]),
    .O(\XLXI_1/Mmux_calc_result_614_375 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_13  (
    .I0(\XLXI_1/Mmux_calc_result_614_375 ),
    .I1(\XLXI_1/Mmux_calc_result_529_359 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f514 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_13  (
    .I0(\XLXI_1/Mmux_calc_result_4_f514 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f514 ),
    .S(XLXN_49[2]),
    .O(RESULT_8_OBUF_255)
  );
  MUXF5   \XLXI_1/Mmux_calc_result_3_f5_14  (
    .I0(\XLXI_1/Mmux_calc_result_530_361 ),
    .I1(\XLXI_1/Mmux_calc_result_415_312 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_3_f515 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/Mmux_calc_result_531  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_addsub0000 [9]),
    .I2(\XLXI_1/calc_result_mult0001 [9]),
    .O(\XLXI_1/Mmux_calc_result_531_362 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Mmux_calc_result_615  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[9]),
    .O(\XLXI_1/Mmux_calc_result_615_376 )
  );
  MUXF5   \XLXI_1/Mmux_calc_result_4_f5_14  (
    .I0(\XLXI_1/Mmux_calc_result_615_376 ),
    .I1(\XLXI_1/Mmux_calc_result_531_362 ),
    .S(XLXN_49[1]),
    .O(\XLXI_1/Mmux_calc_result_4_f515 )
  );
  MUXF6   \XLXI_1/Mmux_calc_result_2_f6_14  (
    .I0(\XLXI_1/Mmux_calc_result_4_f515 ),
    .I1(\XLXI_1/Mmux_calc_result_3_f515 ),
    .S(XLXN_49[2]),
    .O(RESULT_9_OBUF_256)
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<15>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [14]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [15]),
    .O(\XLXI_1/calc_result_addsub0000 [15])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<15>  (
    .I0(XLXN_87[15]),
    .I1(XLXN_103[15]),
    .I2(\XLXI_1/calc_result_mux0000 ),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [15])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<14>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [13]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [14]),
    .O(\XLXI_1/calc_result_addsub0000 [14])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<14>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [13]),
    .DI(XLXN_87[14]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [14]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [14])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<14>  (
    .I0(XLXN_87[14]),
    .I1(XLXN_103[14]),
    .I2(\XLXI_1/calc_result_mux0000 ),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [14])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<13>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [12]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [13]),
    .O(\XLXI_1/calc_result_addsub0000 [13])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<13>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [12]),
    .DI(XLXN_87[13]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [13]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [13])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<13>  (
    .I0(XLXN_87[13]),
    .I1(XLXN_103[13]),
    .I2(\XLXI_1/calc_result_mux0000 ),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [13])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<12>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [11]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [12]),
    .O(\XLXI_1/calc_result_addsub0000 [12])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<12>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [11]),
    .DI(XLXN_87[12]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [12]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [12])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<12>  (
    .I0(XLXN_87[12]),
    .I1(XLXN_103[12]),
    .I2(\XLXI_1/calc_result_mux0000 ),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [12])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<11>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [10]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [11]),
    .O(\XLXI_1/calc_result_addsub0000 [11])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<11>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [10]),
    .DI(XLXN_87[11]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [11]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [11])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<11>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[11]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [11])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<10>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [9]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [10]),
    .O(\XLXI_1/calc_result_addsub0000 [10])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<10>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [9]),
    .DI(XLXN_87[10]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [10]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [10])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<10>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[10]),
    .I2(XLXN_103[10]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [10])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<9>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [8]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [9]),
    .O(\XLXI_1/calc_result_addsub0000 [9])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<9>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [8]),
    .DI(XLXN_87[9]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [9]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [9])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<9>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[9]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [9])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<8>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [7]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [8]),
    .O(\XLXI_1/calc_result_addsub0000 [8])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<8>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [7]),
    .DI(XLXN_87[8]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [8]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<8>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[8]),
    .I2(XLXN_103[8]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [8])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<7>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [6]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [7]),
    .O(\XLXI_1/calc_result_addsub0000 [7])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<7>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [6]),
    .DI(XLXN_87[7]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [7]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [7])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<7>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[7]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [7])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<6>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [5]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [6]),
    .O(\XLXI_1/calc_result_addsub0000 [6])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<6>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [5]),
    .DI(XLXN_87[6]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [6]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<6>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[6]),
    .I2(XLXN_103[6]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [6])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<5>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [4]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [5]),
    .O(\XLXI_1/calc_result_addsub0000 [5])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<5>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [4]),
    .DI(XLXN_87[5]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [5]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<5>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[5]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [5])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<4>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [3]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [4]),
    .O(\XLXI_1/calc_result_addsub0000 [4])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<4>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [3]),
    .DI(XLXN_87[4]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [4]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<4>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[4]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [4])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<3>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [2]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [3]),
    .O(\XLXI_1/calc_result_addsub0000 [3])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<3>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [2]),
    .DI(XLXN_87[3]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [3]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<3>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[3]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [3])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<2>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [1]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [2]),
    .O(\XLXI_1/calc_result_addsub0000 [2])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<2>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [1]),
    .DI(XLXN_87[2]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [2]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<2>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[2]),
    .I2(XLXN_103[2]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [2])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<1>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [0]),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [1]),
    .O(\XLXI_1/calc_result_addsub0000 [1])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<1>  (
    .CI(\XLXI_1/Maddsub_calc_result_addsub0000_cy [0]),
    .DI(XLXN_87[1]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [1]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<1>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[1]),
    .I2(XLXN_103[1]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [1])
  );
  XORCY   \XLXI_1/Maddsub_calc_result_addsub0000_xor<0>  (
    .CI(\XLXI_1/calc_result_mux0000 ),
    .LI(\XLXI_1/Maddsub_calc_result_addsub0000_lut [0]),
    .O(\XLXI_1/calc_result_addsub0000 [0])
  );
  MUXCY   \XLXI_1/Maddsub_calc_result_addsub0000_cy<0>  (
    .CI(\XLXI_1/calc_result_mux0000 ),
    .DI(XLXN_87[0]),
    .S(\XLXI_1/Maddsub_calc_result_addsub0000_lut [0]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \XLXI_1/Maddsub_calc_result_addsub0000_lut<0>  (
    .I0(\XLXI_1/calc_result_mux0000 ),
    .I1(XLXN_87[0]),
    .I2(XLXN_103[0]),
    .O(\XLXI_1/Maddsub_calc_result_addsub0000_lut [0])
  );
  MULT18X18SIO #(
    .B_INPUT ( "DIRECT" ),
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 0 ))
  \XLXI_1/Mmult_calc_result_mult0001  (
    .CEA(N0),
    .CEB(N0),
    .CEP(N0),
    .CLK(N0),
    .RSTA(N0),
    .RSTB(N0),
    .RSTP(N0),
    .A({XLXN_87[15], XLXN_87[15], XLXN_87[15], XLXN_87[14], XLXN_87[13], XLXN_87[12], XLXN_87[11], XLXN_87[10], XLXN_87[9], XLXN_87[8], XLXN_87[7], 
XLXN_87[6], XLXN_87[5], XLXN_87[4], XLXN_87[3], XLXN_87[2], XLXN_87[1], XLXN_87[0]}),
    .B({XLXN_103[15], XLXN_103[15], XLXN_103[15], XLXN_103[14], XLXN_103[13], XLXN_103[12], XLXN_103[11], XLXN_103[10], XLXN_103[9], XLXN_103[8], 
XLXN_103[7], XLXN_103[6], XLXN_103[5], XLXN_103[4], \XLXI_5/muxout [3], \XLXI_5/muxout [2], \XLXI_5/muxout [1], \XLXI_5/muxout [0]}),
    .BCIN({\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<17>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<16>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<15>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<14>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<13>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<12>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<11>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<10>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<9>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<8>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<7>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<6>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<5>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<4>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<3>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<2>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<1>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCIN<0>_UNCONNECTED }),
    .P({\NLW_XLXI_1/Mmult_calc_result_mult0001_P<35>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<34>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<33>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<32>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<31>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<30>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<29>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<28>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<27>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<26>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<25>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<24>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<23>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<22>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<21>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<20>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<19>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<18>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_P<17>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_P<16>_UNCONNECTED , 
\XLXI_1/calc_result_mult0001 [15], \XLXI_1/calc_result_mult0001 [14], \XLXI_1/calc_result_mult0001 [13], \XLXI_1/calc_result_mult0001 [12], 
\XLXI_1/calc_result_mult0001 [11], \XLXI_1/calc_result_mult0001 [10], \XLXI_1/calc_result_mult0001 [9], \XLXI_1/calc_result_mult0001 [8], 
\XLXI_1/calc_result_mult0001 [7], \XLXI_1/calc_result_mult0001 [6], \XLXI_1/calc_result_mult0001 [5], \XLXI_1/calc_result_mult0001 [4], 
\XLXI_1/calc_result_mult0001 [3], \XLXI_1/calc_result_mult0001 [2], \XLXI_1/calc_result_mult0001 [1], \XLXI_1/calc_result_mult0001 [0]}),
    .BCOUT({\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<17>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<16>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<15>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<14>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<13>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<12>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<11>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<10>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<9>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<8>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<7>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<6>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<5>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<4>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<3>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<2>_UNCONNECTED , 
\NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<1>_UNCONNECTED , \NLW_XLXI_1/Mmult_calc_result_mult0001_BCOUT<0>_UNCONNECTED })
  );
  FDR   \XLXI_1/n_flag  (
    .C(XLXN_215),
    .D(N1),
    .R(\XLXI_1/calc_result<15>_inv ),
    .Q(\XLXI_1/n_flag_479 )
  );
  FDR   \XLXI_1/z_flag  (
    .C(XLXN_215),
    .D(N1),
    .R(\XLXI_1/z_flag_not0001 ),
    .Q(\XLXI_1/z_flag_480 )
  );
  MUXF5   \XLXI_2/mux31_3_f5  (
    .I0(\XLXI_2/mux31_5_627 ),
    .I1(\XLXI_2/mux31_4_625 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux31_3_f5_624 )
  );
  MUXF5   \XLXI_2/mux31_4_f5  (
    .I0(\XLXI_2/mux31_6_629 ),
    .I1(\XLXI_2/mux31_51_628 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux31_4_f5_626 )
  );
  MUXF6   \XLXI_2/mux31_2_f6  (
    .I0(\XLXI_2/mux31_4_f5_626 ),
    .I1(\XLXI_2/mux31_3_f5_624 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[9])
  );
  MUXF5   \XLXI_2/mux30_3_f5  (
    .I0(\XLXI_2/mux30_5_621 ),
    .I1(\XLXI_2/mux30_4_619 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux30_3_f5_618 )
  );
  MUXF5   \XLXI_2/mux30_4_f5  (
    .I0(\XLXI_2/mux30_6_623 ),
    .I1(\XLXI_2/mux30_51_622 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux30_4_f5_620 )
  );
  MUXF6   \XLXI_2/mux30_2_f6  (
    .I0(\XLXI_2/mux30_4_f5_620 ),
    .I1(\XLXI_2/mux30_3_f5_618 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[8])
  );
  MUXF5   \XLXI_2/mux29_3_f5  (
    .I0(\XLXI_2/mux29_5_609 ),
    .I1(\XLXI_2/mux29_4_607 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux29_3_f5_606 )
  );
  MUXF5   \XLXI_2/mux29_4_f5  (
    .I0(\XLXI_2/mux29_6_611 ),
    .I1(\XLXI_2/mux29_51_610 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux29_4_f5_608 )
  );
  MUXF6   \XLXI_2/mux29_2_f6  (
    .I0(\XLXI_2/mux29_4_f5_608 ),
    .I1(\XLXI_2/mux29_3_f5_606 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[7])
  );
  MUXF5   \XLXI_2/mux28_3_f5  (
    .I0(\XLXI_2/mux28_5_603 ),
    .I1(\XLXI_2/mux28_4_601 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux28_3_f5_600 )
  );
  MUXF5   \XLXI_2/mux28_4_f5  (
    .I0(\XLXI_2/mux28_6_605 ),
    .I1(\XLXI_2/mux28_51_604 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux28_4_f5_602 )
  );
  MUXF6   \XLXI_2/mux28_2_f6  (
    .I0(\XLXI_2/mux28_4_f5_602 ),
    .I1(\XLXI_2/mux28_3_f5_600 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[6])
  );
  MUXF5   \XLXI_2/mux27_3_f5  (
    .I0(\XLXI_2/mux27_5_597 ),
    .I1(\XLXI_2/mux27_4_595 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux27_3_f5_594 )
  );
  MUXF5   \XLXI_2/mux27_4_f5  (
    .I0(\XLXI_2/mux27_6_599 ),
    .I1(\XLXI_2/mux27_51_598 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux27_4_f5_596 )
  );
  MUXF6   \XLXI_2/mux27_2_f6  (
    .I0(\XLXI_2/mux27_4_f5_596 ),
    .I1(\XLXI_2/mux27_3_f5_594 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[5])
  );
  MUXF5   \XLXI_2/mux26_3_f5  (
    .I0(\XLXI_2/mux26_5_591 ),
    .I1(\XLXI_2/mux26_4_589 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux26_3_f5_588 )
  );
  MUXF5   \XLXI_2/mux26_4_f5  (
    .I0(\XLXI_2/mux26_6_593 ),
    .I1(\XLXI_2/mux26_51_592 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux26_4_f5_590 )
  );
  MUXF6   \XLXI_2/mux26_2_f6  (
    .I0(\XLXI_2/mux26_4_f5_590 ),
    .I1(\XLXI_2/mux26_3_f5_588 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[4])
  );
  MUXF5   \XLXI_2/mux25_3_f5  (
    .I0(\XLXI_2/mux25_5_585 ),
    .I1(\XLXI_2/mux25_4_583 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux25_3_f5_582 )
  );
  MUXF5   \XLXI_2/mux25_4_f5  (
    .I0(\XLXI_2/mux25_6_587 ),
    .I1(\XLXI_2/mux25_51_586 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux25_4_f5_584 )
  );
  MUXF6   \XLXI_2/mux25_2_f6  (
    .I0(\XLXI_2/mux25_4_f5_584 ),
    .I1(\XLXI_2/mux25_3_f5_582 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[3])
  );
  MUXF5   \XLXI_2/mux24_3_f5  (
    .I0(\XLXI_2/mux24_5_579 ),
    .I1(\XLXI_2/mux24_4_577 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux24_3_f5_576 )
  );
  MUXF5   \XLXI_2/mux24_4_f5  (
    .I0(\XLXI_2/mux24_6_581 ),
    .I1(\XLXI_2/mux24_51_580 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux24_4_f5_578 )
  );
  MUXF6   \XLXI_2/mux24_2_f6  (
    .I0(\XLXI_2/mux24_4_f5_578 ),
    .I1(\XLXI_2/mux24_3_f5_576 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[2])
  );
  MUXF5   \XLXI_2/mux23_3_f5  (
    .I0(\XLXI_2/mux23_5_573 ),
    .I1(\XLXI_2/mux23_4_571 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux23_3_f5_570 )
  );
  MUXF5   \XLXI_2/mux23_4_f5  (
    .I0(\XLXI_2/mux23_6_575 ),
    .I1(\XLXI_2/mux23_51_574 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux23_4_f5_572 )
  );
  MUXF6   \XLXI_2/mux23_2_f6  (
    .I0(\XLXI_2/mux23_4_f5_572 ),
    .I1(\XLXI_2/mux23_3_f5_570 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[1])
  );
  MUXF5   \XLXI_2/mux22_3_f5  (
    .I0(\XLXI_2/mux22_5_567 ),
    .I1(\XLXI_2/mux22_4_565 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux22_3_f5_564 )
  );
  MUXF5   \XLXI_2/mux22_4_f5  (
    .I0(\XLXI_2/mux22_6_569 ),
    .I1(\XLXI_2/mux22_51_568 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux22_4_f5_566 )
  );
  MUXF6   \XLXI_2/mux22_2_f6  (
    .I0(\XLXI_2/mux22_4_f5_566 ),
    .I1(\XLXI_2/mux22_3_f5_564 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[15])
  );
  MUXF5   \XLXI_2/mux21_3_f5  (
    .I0(\XLXI_2/mux21_5_561 ),
    .I1(\XLXI_2/mux21_4_559 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux21_3_f5_558 )
  );
  MUXF5   \XLXI_2/mux21_4_f5  (
    .I0(\XLXI_2/mux21_6_563 ),
    .I1(\XLXI_2/mux21_51_562 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux21_4_f5_560 )
  );
  MUXF6   \XLXI_2/mux21_2_f6  (
    .I0(\XLXI_2/mux21_4_f5_560 ),
    .I1(\XLXI_2/mux21_3_f5_558 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[14])
  );
  MUXF5   \XLXI_2/mux20_3_f5  (
    .I0(\XLXI_2/mux20_5_555 ),
    .I1(\XLXI_2/mux20_4_553 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux20_3_f5_552 )
  );
  MUXF5   \XLXI_2/mux20_4_f5  (
    .I0(\XLXI_2/mux20_6_557 ),
    .I1(\XLXI_2/mux20_51_556 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux20_4_f5_554 )
  );
  MUXF6   \XLXI_2/mux20_2_f6  (
    .I0(\XLXI_2/mux20_4_f5_554 ),
    .I1(\XLXI_2/mux20_3_f5_552 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[13])
  );
  MUXF5   \XLXI_2/mux19_3_f5  (
    .I0(\XLXI_2/mux19_5_543 ),
    .I1(\XLXI_2/mux19_4_541 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux19_3_f5_540 )
  );
  MUXF5   \XLXI_2/mux19_4_f5  (
    .I0(\XLXI_2/mux19_6_545 ),
    .I1(\XLXI_2/mux19_51_544 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux19_4_f5_542 )
  );
  MUXF6   \XLXI_2/mux19_2_f6  (
    .I0(\XLXI_2/mux19_4_f5_542 ),
    .I1(\XLXI_2/mux19_3_f5_540 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[12])
  );
  MUXF5   \XLXI_2/mux18_3_f5  (
    .I0(\XLXI_2/mux18_5_537 ),
    .I1(\XLXI_2/mux18_4_535 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux18_3_f5_534 )
  );
  MUXF5   \XLXI_2/mux18_4_f5  (
    .I0(\XLXI_2/mux18_6_539 ),
    .I1(\XLXI_2/mux18_51_538 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux18_4_f5_536 )
  );
  MUXF6   \XLXI_2/mux18_2_f6  (
    .I0(\XLXI_2/mux18_4_f5_536 ),
    .I1(\XLXI_2/mux18_3_f5_534 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[11])
  );
  MUXF5   \XLXI_2/mux17_3_f5  (
    .I0(\XLXI_2/mux17_5_531 ),
    .I1(\XLXI_2/mux17_4_529 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux17_3_f5_528 )
  );
  MUXF5   \XLXI_2/mux17_4_f5  (
    .I0(\XLXI_2/mux17_6_533 ),
    .I1(\XLXI_2/mux17_51_532 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux17_4_f5_530 )
  );
  MUXF6   \XLXI_2/mux17_2_f6  (
    .I0(\XLXI_2/mux17_4_f5_530 ),
    .I1(\XLXI_2/mux17_3_f5_528 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[10])
  );
  MUXF5   \XLXI_2/mux16_3_f5  (
    .I0(\XLXI_2/mux16_5_525 ),
    .I1(\XLXI_2/mux16_4_523 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux16_3_f5_522 )
  );
  MUXF5   \XLXI_2/mux16_4_f5  (
    .I0(\XLXI_2/mux16_6_527 ),
    .I1(\XLXI_2/mux16_51_526 ),
    .S(XLXN_24[1]),
    .O(\XLXI_2/mux16_4_f5_524 )
  );
  MUXF6   \XLXI_2/mux16_2_f6  (
    .I0(\XLXI_2/mux16_4_f5_524 ),
    .I1(\XLXI_2/mux16_3_f5_522 ),
    .S(XLXN_24[2]),
    .O(XLXN_97[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux15_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_9_795 ),
    .I2(\XLXI_2/reg_file_7_9_812 ),
    .O(\XLXI_2/mux15_4_517 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux15_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_9_761 ),
    .I2(\XLXI_2/reg_file_5_9_778 ),
    .O(\XLXI_2/mux15_5_519 )
  );
  MUXF5   \XLXI_2/mux15_3_f5  (
    .I0(\XLXI_2/mux15_5_519 ),
    .I1(\XLXI_2/mux15_4_517 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux15_3_f5_516 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux15_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_9_727 ),
    .I2(\XLXI_2/reg_file_3_9_744 ),
    .O(\XLXI_2/mux15_51_520 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux15_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_9_693 ),
    .I2(\XLXI_2/reg_file_1_9_710 ),
    .O(\XLXI_2/mux15_6_521 )
  );
  MUXF5   \XLXI_2/mux15_4_f5  (
    .I0(\XLXI_2/mux15_6_521 ),
    .I1(\XLXI_2/mux15_51_520 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux15_4_f5_518 )
  );
  MUXF6   \XLXI_2/mux15_2_f6  (
    .I0(\XLXI_2/mux15_4_f5_518 ),
    .I1(\XLXI_2/mux15_3_f5_516 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux14_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_8_794 ),
    .I2(\XLXI_2/reg_file_7_8_811 ),
    .O(\XLXI_2/mux14_4_511 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux14_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_8_760 ),
    .I2(\XLXI_2/reg_file_5_8_777 ),
    .O(\XLXI_2/mux14_5_513 )
  );
  MUXF5   \XLXI_2/mux14_3_f5  (
    .I0(\XLXI_2/mux14_5_513 ),
    .I1(\XLXI_2/mux14_4_511 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux14_3_f5_510 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux14_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_8_726 ),
    .I2(\XLXI_2/reg_file_3_8_743 ),
    .O(\XLXI_2/mux14_51_514 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux14_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_8_692 ),
    .I2(\XLXI_2/reg_file_1_8_709 ),
    .O(\XLXI_2/mux14_6_515 )
  );
  MUXF5   \XLXI_2/mux14_4_f5  (
    .I0(\XLXI_2/mux14_6_515 ),
    .I1(\XLXI_2/mux14_51_514 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux14_4_f5_512 )
  );
  MUXF6   \XLXI_2/mux14_2_f6  (
    .I0(\XLXI_2/mux14_4_f5_512 ),
    .I1(\XLXI_2/mux14_3_f5_510 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux13_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_7_793 ),
    .I2(\XLXI_2/reg_file_7_7_810 ),
    .O(\XLXI_2/mux13_4_505 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux13_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_7_759 ),
    .I2(\XLXI_2/reg_file_5_7_776 ),
    .O(\XLXI_2/mux13_5_507 )
  );
  MUXF5   \XLXI_2/mux13_3_f5  (
    .I0(\XLXI_2/mux13_5_507 ),
    .I1(\XLXI_2/mux13_4_505 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux13_3_f5_504 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux13_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_7_725 ),
    .I2(\XLXI_2/reg_file_3_7_742 ),
    .O(\XLXI_2/mux13_51_508 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux13_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_7_691 ),
    .I2(\XLXI_2/reg_file_1_7_708 ),
    .O(\XLXI_2/mux13_6_509 )
  );
  MUXF5   \XLXI_2/mux13_4_f5  (
    .I0(\XLXI_2/mux13_6_509 ),
    .I1(\XLXI_2/mux13_51_508 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux13_4_f5_506 )
  );
  MUXF6   \XLXI_2/mux13_2_f6  (
    .I0(\XLXI_2/mux13_4_f5_506 ),
    .I1(\XLXI_2/mux13_3_f5_504 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux12_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_6_792 ),
    .I2(\XLXI_2/reg_file_7_6_809 ),
    .O(\XLXI_2/mux12_4_499 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux12_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_6_758 ),
    .I2(\XLXI_2/reg_file_5_6_775 ),
    .O(\XLXI_2/mux12_5_501 )
  );
  MUXF5   \XLXI_2/mux12_3_f5  (
    .I0(\XLXI_2/mux12_5_501 ),
    .I1(\XLXI_2/mux12_4_499 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux12_3_f5_498 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux12_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_6_724 ),
    .I2(\XLXI_2/reg_file_3_6_741 ),
    .O(\XLXI_2/mux12_51_502 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux12_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_6_690 ),
    .I2(\XLXI_2/reg_file_1_6_707 ),
    .O(\XLXI_2/mux12_6_503 )
  );
  MUXF5   \XLXI_2/mux12_4_f5  (
    .I0(\XLXI_2/mux12_6_503 ),
    .I1(\XLXI_2/mux12_51_502 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux12_4_f5_500 )
  );
  MUXF6   \XLXI_2/mux12_2_f6  (
    .I0(\XLXI_2/mux12_4_f5_500 ),
    .I1(\XLXI_2/mux12_3_f5_498 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux11_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_5_791 ),
    .I2(\XLXI_2/reg_file_7_5_808 ),
    .O(\XLXI_2/mux11_4_493 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux11_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_5_757 ),
    .I2(\XLXI_2/reg_file_5_5_774 ),
    .O(\XLXI_2/mux11_5_495 )
  );
  MUXF5   \XLXI_2/mux11_3_f5  (
    .I0(\XLXI_2/mux11_5_495 ),
    .I1(\XLXI_2/mux11_4_493 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux11_3_f5_492 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux11_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_5_723 ),
    .I2(\XLXI_2/reg_file_3_5_740 ),
    .O(\XLXI_2/mux11_51_496 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux11_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_5_689 ),
    .I2(\XLXI_2/reg_file_1_5_706 ),
    .O(\XLXI_2/mux11_6_497 )
  );
  MUXF5   \XLXI_2/mux11_4_f5  (
    .I0(\XLXI_2/mux11_6_497 ),
    .I1(\XLXI_2/mux11_51_496 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux11_4_f5_494 )
  );
  MUXF6   \XLXI_2/mux11_2_f6  (
    .I0(\XLXI_2/mux11_4_f5_494 ),
    .I1(\XLXI_2/mux11_3_f5_492 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux10_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_4_790 ),
    .I2(\XLXI_2/reg_file_7_4_807 ),
    .O(\XLXI_2/mux10_4_487 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux10_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_4_756 ),
    .I2(\XLXI_2/reg_file_5_4_773 ),
    .O(\XLXI_2/mux10_5_489 )
  );
  MUXF5   \XLXI_2/mux10_3_f5  (
    .I0(\XLXI_2/mux10_5_489 ),
    .I1(\XLXI_2/mux10_4_487 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux10_3_f5_486 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux10_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_4_722 ),
    .I2(\XLXI_2/reg_file_3_4_739 ),
    .O(\XLXI_2/mux10_51_490 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux10_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_4_688 ),
    .I2(\XLXI_2/reg_file_1_4_705 ),
    .O(\XLXI_2/mux10_6_491 )
  );
  MUXF5   \XLXI_2/mux10_4_f5  (
    .I0(\XLXI_2/mux10_6_491 ),
    .I1(\XLXI_2/mux10_51_490 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux10_4_f5_488 )
  );
  MUXF6   \XLXI_2/mux10_2_f6  (
    .I0(\XLXI_2/mux10_4_f5_488 ),
    .I1(\XLXI_2/mux10_3_f5_486 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux9_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_3_789 ),
    .I2(\XLXI_2/reg_file_7_3_806 ),
    .O(\XLXI_2/mux9_4_667 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux9_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_3_755 ),
    .I2(\XLXI_2/reg_file_5_3_772 ),
    .O(\XLXI_2/mux9_5_669 )
  );
  MUXF5   \XLXI_2/mux9_3_f5  (
    .I0(\XLXI_2/mux9_5_669 ),
    .I1(\XLXI_2/mux9_4_667 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux9_3_f5_666 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux9_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_3_721 ),
    .I2(\XLXI_2/reg_file_3_3_738 ),
    .O(\XLXI_2/mux9_51_670 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux9_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_3_687 ),
    .I2(\XLXI_2/reg_file_1_3_704 ),
    .O(\XLXI_2/mux9_6_671 )
  );
  MUXF5   \XLXI_2/mux9_4_f5  (
    .I0(\XLXI_2/mux9_6_671 ),
    .I1(\XLXI_2/mux9_51_670 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux9_4_f5_668 )
  );
  MUXF6   \XLXI_2/mux9_2_f6  (
    .I0(\XLXI_2/mux9_4_f5_668 ),
    .I1(\XLXI_2/mux9_3_f5_666 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux8_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_2_788 ),
    .I2(\XLXI_2/reg_file_7_2_805 ),
    .O(\XLXI_2/mux8_4_661 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux8_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_2_754 ),
    .I2(\XLXI_2/reg_file_5_2_771 ),
    .O(\XLXI_2/mux8_5_663 )
  );
  MUXF5   \XLXI_2/mux8_3_f5  (
    .I0(\XLXI_2/mux8_5_663 ),
    .I1(\XLXI_2/mux8_4_661 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux8_3_f5_660 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux8_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_2_720 ),
    .I2(\XLXI_2/reg_file_3_2_737 ),
    .O(\XLXI_2/mux8_51_664 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux8_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_2_686 ),
    .I2(\XLXI_2/reg_file_1_2_703 ),
    .O(\XLXI_2/mux8_6_665 )
  );
  MUXF5   \XLXI_2/mux8_4_f5  (
    .I0(\XLXI_2/mux8_6_665 ),
    .I1(\XLXI_2/mux8_51_664 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux8_4_f5_662 )
  );
  MUXF6   \XLXI_2/mux8_2_f6  (
    .I0(\XLXI_2/mux8_4_f5_662 ),
    .I1(\XLXI_2/mux8_3_f5_660 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux7_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_1_781 ),
    .I2(\XLXI_2/reg_file_7_1_798 ),
    .O(\XLXI_2/mux7_4_655 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux7_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_1_747 ),
    .I2(\XLXI_2/reg_file_5_1_764 ),
    .O(\XLXI_2/mux7_5_657 )
  );
  MUXF5   \XLXI_2/mux7_3_f5  (
    .I0(\XLXI_2/mux7_5_657 ),
    .I1(\XLXI_2/mux7_4_655 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux7_3_f5_654 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux7_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_1_713 ),
    .I2(\XLXI_2/reg_file_3_1_730 ),
    .O(\XLXI_2/mux7_51_658 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux7_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_1_679 ),
    .I2(\XLXI_2/reg_file_1_1_696 ),
    .O(\XLXI_2/mux7_6_659 )
  );
  MUXF5   \XLXI_2/mux7_4_f5  (
    .I0(\XLXI_2/mux7_6_659 ),
    .I1(\XLXI_2/mux7_51_658 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux7_4_f5_656 )
  );
  MUXF6   \XLXI_2/mux7_2_f6  (
    .I0(\XLXI_2/mux7_4_f5_656 ),
    .I1(\XLXI_2/mux7_3_f5_654 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux6_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_15_787 ),
    .I2(\XLXI_2/reg_file_7_15_804 ),
    .O(\XLXI_2/mux6_4_649 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux6_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_15_753 ),
    .I2(\XLXI_2/reg_file_5_15_770 ),
    .O(\XLXI_2/mux6_5_651 )
  );
  MUXF5   \XLXI_2/mux6_3_f5  (
    .I0(\XLXI_2/mux6_5_651 ),
    .I1(\XLXI_2/mux6_4_649 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux6_3_f5_648 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux6_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_15_719 ),
    .I2(\XLXI_2/reg_file_3_15_736 ),
    .O(\XLXI_2/mux6_51_652 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux6_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_15_685 ),
    .I2(\XLXI_2/reg_file_1_15_702 ),
    .O(\XLXI_2/mux6_6_653 )
  );
  MUXF5   \XLXI_2/mux6_4_f5  (
    .I0(\XLXI_2/mux6_6_653 ),
    .I1(\XLXI_2/mux6_51_652 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux6_4_f5_650 )
  );
  MUXF6   \XLXI_2/mux6_2_f6  (
    .I0(\XLXI_2/mux6_4_f5_650 ),
    .I1(\XLXI_2/mux6_3_f5_648 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux5_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_14_786 ),
    .I2(\XLXI_2/reg_file_7_14_803 ),
    .O(\XLXI_2/mux5_4_643 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux5_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_14_752 ),
    .I2(\XLXI_2/reg_file_5_14_769 ),
    .O(\XLXI_2/mux5_5_645 )
  );
  MUXF5   \XLXI_2/mux5_3_f5  (
    .I0(\XLXI_2/mux5_5_645 ),
    .I1(\XLXI_2/mux5_4_643 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux5_3_f5_642 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux5_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_14_718 ),
    .I2(\XLXI_2/reg_file_3_14_735 ),
    .O(\XLXI_2/mux5_51_646 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux5_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_14_684 ),
    .I2(\XLXI_2/reg_file_1_14_701 ),
    .O(\XLXI_2/mux5_6_647 )
  );
  MUXF5   \XLXI_2/mux5_4_f5  (
    .I0(\XLXI_2/mux5_6_647 ),
    .I1(\XLXI_2/mux5_51_646 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux5_4_f5_644 )
  );
  MUXF6   \XLXI_2/mux5_2_f6  (
    .I0(\XLXI_2/mux5_4_f5_644 ),
    .I1(\XLXI_2/mux5_3_f5_642 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux4_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_13_785 ),
    .I2(\XLXI_2/reg_file_7_13_802 ),
    .O(\XLXI_2/mux4_4_637 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux4_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_13_751 ),
    .I2(\XLXI_2/reg_file_5_13_768 ),
    .O(\XLXI_2/mux4_5_639 )
  );
  MUXF5   \XLXI_2/mux4_3_f5  (
    .I0(\XLXI_2/mux4_5_639 ),
    .I1(\XLXI_2/mux4_4_637 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux4_3_f5_636 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux4_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_13_717 ),
    .I2(\XLXI_2/reg_file_3_13_734 ),
    .O(\XLXI_2/mux4_51_640 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux4_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_13_683 ),
    .I2(\XLXI_2/reg_file_1_13_700 ),
    .O(\XLXI_2/mux4_6_641 )
  );
  MUXF5   \XLXI_2/mux4_4_f5  (
    .I0(\XLXI_2/mux4_6_641 ),
    .I1(\XLXI_2/mux4_51_640 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux4_4_f5_638 )
  );
  MUXF6   \XLXI_2/mux4_2_f6  (
    .I0(\XLXI_2/mux4_4_f5_638 ),
    .I1(\XLXI_2/mux4_3_f5_636 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux3_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_12_784 ),
    .I2(\XLXI_2/reg_file_7_12_801 ),
    .O(\XLXI_2/mux3_4_631 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux3_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_12_750 ),
    .I2(\XLXI_2/reg_file_5_12_767 ),
    .O(\XLXI_2/mux3_5_633 )
  );
  MUXF5   \XLXI_2/mux3_3_f5  (
    .I0(\XLXI_2/mux3_5_633 ),
    .I1(\XLXI_2/mux3_4_631 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux3_3_f5_630 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux3_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_12_716 ),
    .I2(\XLXI_2/reg_file_3_12_733 ),
    .O(\XLXI_2/mux3_51_634 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux3_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_12_682 ),
    .I2(\XLXI_2/reg_file_1_12_699 ),
    .O(\XLXI_2/mux3_6_635 )
  );
  MUXF5   \XLXI_2/mux3_4_f5  (
    .I0(\XLXI_2/mux3_6_635 ),
    .I1(\XLXI_2/mux3_51_634 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux3_4_f5_632 )
  );
  MUXF6   \XLXI_2/mux3_2_f6  (
    .I0(\XLXI_2/mux3_4_f5_632 ),
    .I1(\XLXI_2/mux3_3_f5_630 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux2_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_11_783 ),
    .I2(\XLXI_2/reg_file_7_11_800 ),
    .O(\XLXI_2/mux2_4_613 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux2_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_11_749 ),
    .I2(\XLXI_2/reg_file_5_11_766 ),
    .O(\XLXI_2/mux2_5_615 )
  );
  MUXF5   \XLXI_2/mux2_3_f5  (
    .I0(\XLXI_2/mux2_5_615 ),
    .I1(\XLXI_2/mux2_4_613 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux2_3_f5_612 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux2_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_11_715 ),
    .I2(\XLXI_2/reg_file_3_11_732 ),
    .O(\XLXI_2/mux2_51_616 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux2_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_11_681 ),
    .I2(\XLXI_2/reg_file_1_11_698 ),
    .O(\XLXI_2/mux2_6_617 )
  );
  MUXF5   \XLXI_2/mux2_4_f5  (
    .I0(\XLXI_2/mux2_6_617 ),
    .I1(\XLXI_2/mux2_51_616 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux2_4_f5_614 )
  );
  MUXF6   \XLXI_2/mux2_2_f6  (
    .I0(\XLXI_2/mux2_4_f5_614 ),
    .I1(\XLXI_2/mux2_3_f5_612 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux1_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_10_782 ),
    .I2(\XLXI_2/reg_file_7_10_799 ),
    .O(\XLXI_2/mux1_4_547 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux1_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_10_748 ),
    .I2(\XLXI_2/reg_file_5_10_765 ),
    .O(\XLXI_2/mux1_5_549 )
  );
  MUXF5   \XLXI_2/mux1_3_f5  (
    .I0(\XLXI_2/mux1_5_549 ),
    .I1(\XLXI_2/mux1_4_547 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux1_3_f5_546 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux1_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_10_714 ),
    .I2(\XLXI_2/reg_file_3_10_731 ),
    .O(\XLXI_2/mux1_51_550 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux1_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_10_680 ),
    .I2(\XLXI_2/reg_file_1_10_697 ),
    .O(\XLXI_2/mux1_6_551 )
  );
  MUXF5   \XLXI_2/mux1_4_f5  (
    .I0(\XLXI_2/mux1_6_551 ),
    .I1(\XLXI_2/mux1_51_550 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux1_4_f5_548 )
  );
  MUXF6   \XLXI_2/mux1_2_f6  (
    .I0(\XLXI_2/mux1_4_f5_548 ),
    .I1(\XLXI_2/mux1_3_f5_546 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux_4  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_6_0_780 ),
    .I2(\XLXI_2/reg_file_7_0_797 ),
    .O(\XLXI_2/mux_4_673 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux_5  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_4_0_746 ),
    .I2(\XLXI_2/reg_file_5_0_763 ),
    .O(\XLXI_2/mux_5_675 )
  );
  MUXF5   \XLXI_2/mux_3_f5  (
    .I0(\XLXI_2/mux_5_675 ),
    .I1(\XLXI_2/mux_4_673 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux_3_f5_672 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux_51  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_2_0_712 ),
    .I2(\XLXI_2/reg_file_3_0_729 ),
    .O(\XLXI_2/mux_51_676 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_2/mux_6  (
    .I0(XLXN_23[0]),
    .I1(\XLXI_2/reg_file_0_0_678 ),
    .I2(\XLXI_2/reg_file_1_0_695 ),
    .O(\XLXI_2/mux_6_677 )
  );
  MUXF5   \XLXI_2/mux_4_f5  (
    .I0(\XLXI_2/mux_6_677 ),
    .I1(\XLXI_2/mux_51_676 ),
    .S(XLXN_23[1]),
    .O(\XLXI_2/mux_4_f5_674 )
  );
  MUXF6   \XLXI_2/mux_2_f6  (
    .I0(\XLXI_2/mux_4_f5_674 ),
    .I1(\XLXI_2/mux_3_f5_672 ),
    .S(XLXN_23[2]),
    .O(XLXN_87[0])
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_15_787 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_14_786 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_13_785 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_12_784 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_11_783 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_10_782 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_9_795 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_8_794 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_7_793 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_6_792 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_5_791 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_4_790 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_3_789 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_6_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_2_788 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_6_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_1_781 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_6_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_6_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_6_0_780 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_15_770 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_14_769 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_13_768 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_12_767 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_11_766 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_10_765 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_9_778 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_8_777 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_7_776 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_6_775 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_5_774 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_4_773 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_3_772 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_2_771 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_5_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_1_764 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_5_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_5_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_5_0_763 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_15_804 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_14_803 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_13_802 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_12_801 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_11_800 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_10_799 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_9_812 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_8_811 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_7_810 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_6_809 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_5_808 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_4_807 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_3_806 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_7_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_2_805 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_1_798 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_7_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_7_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_7_0_797 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_15_753 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_14_752 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_13_751 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_12_750 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_11_749 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_10_748 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_9_761 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_8_760 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_7_759 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_6_758 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_5_757 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_4_756 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_3_755 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_2_754 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_4_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_1_747 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_4_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_4_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_4_0_746 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_3_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_15_736 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_3_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_14_735 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_3_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_13_734 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_3_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_12_733 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_11_732 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_10_731 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_9_744 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_8_743 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_7_742 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_6_741 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_5_740 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_4_739 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_3_738 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_2_737 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_1_730 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_3_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_3_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_3_0_729 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_15_702 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_14_701 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_13_700 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_12_699 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_11_698 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_10_697 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_9_710 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_8_709 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_1_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_7_708 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_1_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_6_707 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_1_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_5_706 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_1_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_4_705 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_3_704 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_2_703 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_1_696 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_1_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_1_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_1_0_695 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_15_685 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_14_684 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_13_683 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_12_682 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_11_681 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_10_680 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_9_693 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_8_692 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_7_691 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_6_690 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_5_689 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_0_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_4_688 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_0_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_3_687 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_0_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_2_686 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_0_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_1_679 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_0_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_0_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_0_0_678 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_15  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_15_OBUF_247),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_15_719 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_14  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_14_OBUF_246),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_14_718 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_13  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_13_OBUF_245),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_13_717 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_12  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_12_OBUF_244),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_12_716 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_2_11  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_11_OBUF_243),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_11_715 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_2_10  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_10_OBUF_242),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_10_714 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_2_9  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_9_OBUF_256),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_9_727 )
  );
  FDRE_1 #(
    .INIT ( 1'b1 ))
  \XLXI_2/reg_file_2_8  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_8_OBUF_255),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_8_726 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_7  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_7_OBUF_254),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_7_725 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_6  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_6_OBUF_253),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_6_724 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_5  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_5_OBUF_252),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_5_723 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_4  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_4_OBUF_251),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_4_722 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_3  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_3_OBUF_250),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_3_721 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_2  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_2_OBUF_249),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_2_720 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_1  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_1_OBUF_248),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_1_713 )
  );
  FDRE_1 #(
    .INIT ( 1'b0 ))
  \XLXI_2/reg_file_2_0  (
    .C(XLXN_215),
    .CE(\XLXI_2/reg_file_2_not0001 ),
    .D(RESULT_0_OBUF_241),
    .R(XLXN_216),
    .Q(\XLXI_2/reg_file_2_0_712 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \XLXI_1/calc_result_mux00002  (
    .I0(XLXN_49[1]),
    .I1(XLXN_49[0]),
    .I2(XLXN_49[2]),
    .O(\XLXI_1/calc_result_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0514 ))
  \XLXI_4/RegRead1_or00001  (
    .I0(XLXN_206[14]),
    .I1(XLXN_206[9]),
    .I2(XLXN_206[11]),
    .I3(XLXN_206[10]),
    .O(\XLXI_4/RegRead1_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0A18 ))
  \XLXI_4/RegRead1_or00011  (
    .I0(XLXN_206[11]),
    .I1(XLXN_206[9]),
    .I2(XLXN_206[14]),
    .I3(XLXN_206[10]),
    .O(\XLXI_4/RegRead1_or0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \XLXI_4/RegRead2<2>1  (
    .I0(\XLXI_4/RegRead2_or0000_817 ),
    .I1(XLXN_206[2]),
    .O(XLXN_24[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \XLXI_4/RegRead2<1>1  (
    .I0(\XLXI_4/RegRead2_or0000_817 ),
    .I1(XLXN_206[1]),
    .O(XLXN_24[1])
  );
  LUT4 #(
    .INIT ( 16'h0514 ))
  \XLXI_4/RegRead2_or0000  (
    .I0(N265),
    .I1(XLXN_206[9]),
    .I2(XLXN_206[11]),
    .I3(XLXN_206[10]),
    .O(\XLXI_4/RegRead2_or0000_817 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \XLXI_1/calc_result_shift0002<14>1  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh14 ),
    .I3(\XLXI_1/calc_result_or0000 ),
    .O(\XLXI_1/calc_result_shift0002[14] )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \XLXI_1/calc_result_shift0003<0>1  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh32 ),
    .I3(\XLXI_1/calc_result_or000023_445 ),
    .O(\XLXI_1/calc_result_shift0003[0] )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/calc_result_or00004  (
    .I0(XLXN_103[14]),
    .I1(XLXN_103[15]),
    .I2(XLXN_103[4]),
    .I3(XLXN_103[5]),
    .O(\XLXI_1/calc_result_or00004_446 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/calc_result_or00009  (
    .I0(XLXN_103[6]),
    .I1(XLXN_103[7]),
    .I2(XLXN_103[8]),
    .I3(XLXN_103[9]),
    .O(\XLXI_1/calc_result_or00009_447 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/calc_result_or000014  (
    .I0(XLXN_103[10]),
    .I1(XLXN_103[11]),
    .I2(XLXN_103[12]),
    .I3(XLXN_103[13]),
    .O(\XLXI_1/calc_result_or000014_444 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \XLXI_1/calc_result_shift0003<2>1  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh34_393 ),
    .I3(N297),
    .O(\XLXI_1/calc_result_shift0003[2] )
  );
  LUT4 #(
    .INIT ( 16'h00E4 ))
  \XLXI_1/calc_result_shift0003<7>  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh39_398 ),
    .I2(\XLXI_1/Sh35_394 ),
    .I3(N37),
    .O(\XLXI_1/calc_result_shift0003[7] )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \XLXI_1/calc_result_shift0002<9>  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh13_388 ),
    .I2(\XLXI_1/Sh9_408 ),
    .I3(N303),
    .O(\XLXI_1/calc_result_shift0002[9] )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \XLXI_1/calc_result_shift0002<8>  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh12_387 ),
    .I2(\XLXI_1/Sh8_407 ),
    .I3(N37),
    .O(\XLXI_1/calc_result_shift0002[8] )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \XLXI_1/calc_result_shift0002<11>  (
    .I0(XLXN_103[2]),
    .I1(N300),
    .I2(\XLXI_1/Sh11_386 ),
    .I3(N37),
    .O(\XLXI_1/calc_result_shift0002[11] )
  );
  LUT4 #(
    .INIT ( 16'h00D8 ))
  \XLXI_1/calc_result_shift0002<10>  (
    .I0(XLXN_103[2]),
    .I1(N301),
    .I2(\XLXI_1/Sh10_385 ),
    .I3(N37),
    .O(\XLXI_1/calc_result_shift0002[10] )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \XLXI_1/calc_result_shift0003<15>26  (
    .I0(XLXN_87[12]),
    .I1(XLXN_87[14]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0003<15>26_471 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \XLXI_1/calc_result_shift0003<15>41  (
    .I0(XLXN_87[13]),
    .I1(XLXN_87[15]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0003<15>41_472 )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \XLXI_1/calc_result_shift0003<12>26  (
    .I0(XLXN_87[9]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0003<12>26_467 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \XLXI_1/calc_result_shift0003<12>41  (
    .I0(XLXN_87[10]),
    .I1(XLXN_87[12]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0003<12>41_468 )
  );
  LUT4 #(
    .INIT ( 16'h038B ))
  \XLXI_1/Sh13  (
    .I0(XLXN_87[15]),
    .I1(XLXN_103[1]),
    .I2(N100),
    .I3(N302),
    .O(\XLXI_1/Sh13_388 )
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \XLXI_1/calc_result_shift0002<4>  (
    .I0(N304),
    .I1(\XLXI_1/Sh8_407 ),
    .I2(N106),
    .I3(N105),
    .O(\XLXI_1/calc_result_shift0002[4] )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh6_SW0  (
    .I0(XLXN_87[7]),
    .I1(XLXN_87[6]),
    .I2(\XLXI_5/muxout [0]),
    .O(N117)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh4_SW0  (
    .I0(XLXN_87[5]),
    .I1(XLXN_87[4]),
    .I2(\XLXI_5/muxout [0]),
    .O(N123)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh12_SW0  (
    .I0(XLXN_87[13]),
    .I1(XLXN_87[12]),
    .I2(\XLXI_5/muxout [0]),
    .O(N126)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh12_SW1  (
    .I0(XLXN_87[15]),
    .I1(XLXN_87[14]),
    .I2(\XLXI_5/muxout [0]),
    .O(N127)
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \XLXI_1/calc_result_shift0002<3>26  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<3>26_457 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \XLXI_1/calc_result_shift0002<3>41  (
    .I0(XLXN_87[5]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<3>41_458 )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \XLXI_1/calc_result_shift0002<2>26  (
    .I0(XLXN_87[5]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<2>26_455 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \XLXI_1/calc_result_shift0002<2>41  (
    .I0(XLXN_87[2]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<2>41_456 )
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \XLXI_1/calc_result_shift0002<1>26  (
    .I0(XLXN_87[2]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<1>26_453 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \XLXI_1/calc_result_shift0002<1>41  (
    .I0(XLXN_87[1]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<1>41_454 )
  );
  LUT4 #(
    .INIT ( 16'hCA00 ))
  \XLXI_1/calc_result_shift0002<0>26  (
    .I0(XLXN_87[1]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<0>26_448 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \XLXI_1/calc_result_shift0002<0>41  (
    .I0(XLXN_87[0]),
    .I1(XLXN_87[2]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .O(\XLXI_1/calc_result_shift0002<0>41_449 )
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \XLXI_5/muxout<3>_SW0  (
    .I0(\XLXI_4/ImmData_or0000_814 ),
    .I1(XLXN_104[1]),
    .I2(XLXN_206[3]),
    .I3(XLXN_207[3]),
    .O(N135)
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \XLXI_5/muxout<3>_SW1  (
    .I0(XLXN_104[1]),
    .I1(XLXN_206[3]),
    .I2(\XLXI_4/ImmData_or0000_814 ),
    .I3(XLXN_207[3]),
    .O(N136)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<3>  (
    .I0(N136),
    .I1(N135),
    .I2(XLXN_97[3]),
    .O(XLXN_103[3])
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \XLXI_5/muxout<2>_SW0  (
    .I0(\XLXI_4/ImmData_or0000_814 ),
    .I1(XLXN_104[1]),
    .I2(XLXN_206[2]),
    .I3(XLXN_207[2]),
    .O(N138)
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \XLXI_5/muxout<2>_SW1  (
    .I0(XLXN_104[1]),
    .I1(XLXN_206[2]),
    .I2(\XLXI_4/ImmData_or0000_814 ),
    .I3(XLXN_207[2]),
    .O(N139)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<2>  (
    .I0(N139),
    .I1(N138),
    .I2(XLXN_97[2]),
    .O(XLXN_103[2])
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \XLXI_5/muxout<1>_SW0  (
    .I0(\XLXI_4/ImmData_or0000_814 ),
    .I1(XLXN_104[1]),
    .I2(XLXN_206[1]),
    .I3(XLXN_207[1]),
    .O(N141)
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \XLXI_5/muxout<1>_SW1  (
    .I0(XLXN_104[1]),
    .I1(XLXN_206[1]),
    .I2(\XLXI_4/ImmData_or0000_814 ),
    .I3(XLXN_207[1]),
    .O(N142)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<1>  (
    .I0(N142),
    .I1(N141),
    .I2(XLXN_97[1]),
    .O(XLXN_103[1])
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \XLXI_5/muxout<0>_SW0  (
    .I0(\XLXI_4/ImmData_or0000_814 ),
    .I1(XLXN_104[1]),
    .I2(XLXN_206[0]),
    .I3(XLXN_207[0]),
    .O(N144)
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \XLXI_5/muxout<0>_SW1  (
    .I0(XLXN_104[1]),
    .I1(XLXN_206[0]),
    .I2(\XLXI_4/ImmData_or0000_814 ),
    .I3(XLXN_207[0]),
    .O(N145)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \XLXI_1/z_flag_not00013  (
    .I0(RESULT_3_OBUF_250),
    .I1(RESULT_2_OBUF_249),
    .I2(RESULT_6_OBUF_253),
    .O(\XLXI_1/z_flag_not00013_483 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/z_flag_not000130  (
    .I0(RESULT_9_OBUF_256),
    .I1(RESULT_10_OBUF_242),
    .I2(RESULT_11_OBUF_243),
    .I3(RESULT_12_OBUF_244),
    .O(\XLXI_1/z_flag_not000130_484 )
  );
  OBUF   Z_FLAG_OBUF (
    .I(\XLXI_1/z_flag_480 ),
    .O(Z_FLAG)
  );
  OBUF   N_FLAG_OBUF (
    .I(\XLXI_1/n_flag_479 ),
    .O(N_FLAG)
  );
  OBUF   RESULT_15_OBUF (
    .I(RESULT_15_OBUF_247),
    .O(RESULT[15])
  );
  OBUF   RESULT_14_OBUF (
    .I(RESULT_14_OBUF_246),
    .O(RESULT[14])
  );
  OBUF   RESULT_13_OBUF (
    .I(RESULT_13_OBUF_245),
    .O(RESULT[13])
  );
  OBUF   RESULT_12_OBUF (
    .I(RESULT_12_OBUF_244),
    .O(RESULT[12])
  );
  OBUF   RESULT_11_OBUF (
    .I(RESULT_11_OBUF_243),
    .O(RESULT[11])
  );
  OBUF   RESULT_10_OBUF (
    .I(RESULT_10_OBUF_242),
    .O(RESULT[10])
  );
  OBUF   RESULT_9_OBUF (
    .I(RESULT_9_OBUF_256),
    .O(RESULT[9])
  );
  OBUF   RESULT_8_OBUF (
    .I(RESULT_8_OBUF_255),
    .O(RESULT[8])
  );
  OBUF   RESULT_7_OBUF (
    .I(RESULT_7_OBUF_254),
    .O(RESULT[7])
  );
  OBUF   RESULT_6_OBUF (
    .I(RESULT_6_OBUF_253),
    .O(RESULT[6])
  );
  OBUF   RESULT_5_OBUF (
    .I(RESULT_5_OBUF_252),
    .O(RESULT[5])
  );
  OBUF   RESULT_4_OBUF (
    .I(RESULT_4_OBUF_251),
    .O(RESULT[4])
  );
  OBUF   RESULT_3_OBUF (
    .I(RESULT_3_OBUF_250),
    .O(RESULT[3])
  );
  OBUF   RESULT_2_OBUF (
    .I(RESULT_2_OBUF_249),
    .O(RESULT[2])
  );
  OBUF   RESULT_1_OBUF (
    .I(RESULT_1_OBUF_248),
    .O(RESULT[1])
  );
  OBUF   RESULT_0_OBUF (
    .I(RESULT_0_OBUF_241),
    .O(RESULT[0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \XLXI_1/z_flag_not000117_SW0  (
    .I0(RESULT_13_OBUF_245),
    .I1(RESULT_14_OBUF_246),
    .I2(\XLXI_1/z_flag_not00018_485 ),
    .O(N147)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/z_flag_not000138  (
    .I0(\XLXI_1/z_flag_not00013_483 ),
    .I1(\XLXI_1/z_flag_not000130_484 ),
    .I2(\XLXI_1/z_flag_not000125_482 ),
    .I3(N147),
    .O(\XLXI_1/z_flag_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/calc_result_shift0003<4>_SW0  (
    .I0(XLXN_103[2]),
    .I1(N298),
    .I2(\XLXI_1/Sh36_395 ),
    .O(N149)
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \XLXI_1/Mmux_calc_result_410  (
    .I0(N37),
    .I1(XLXN_49[0]),
    .I2(N149),
    .I3(\XLXI_1/calc_result_shift0002[4] ),
    .O(\XLXI_1/Mmux_calc_result_410_307 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/calc_result_shift0003<5>_SW0  (
    .I0(XLXN_103[2]),
    .I1(N299),
    .I2(\XLXI_1/Sh37_396 ),
    .O(N151)
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \XLXI_1/Mmux_calc_result_411  (
    .I0(N37),
    .I1(XLXN_49[0]),
    .I2(N151),
    .I3(\XLXI_1/calc_result_shift0002[5] ),
    .O(\XLXI_1/Mmux_calc_result_411_308 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/calc_result_shift0003<6>_SW0  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh38_397 ),
    .I2(\XLXI_1/Sh34_393 ),
    .O(N153)
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \XLXI_1/Mmux_calc_result_412  (
    .I0(N37),
    .I1(XLXN_49[0]),
    .I2(N153),
    .I3(\XLXI_1/calc_result_shift0002[6] ),
    .O(\XLXI_1/Mmux_calc_result_412_309 )
  );
  LUT4 #(
    .INIT ( 16'hAB01 ))
  \XLXI_1/Mmux_calc_result_4  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(N155),
    .I3(\XLXI_1/calc_result_shift0003[0] ),
    .O(\XLXI_1/Mmux_calc_result_4_305 )
  );
  LUT4 #(
    .INIT ( 16'hAB01 ))
  \XLXI_1/Mmux_calc_result_48  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(N159),
    .I3(\XLXI_1/calc_result_shift0003[2] ),
    .O(\XLXI_1/Mmux_calc_result_48_319 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_522  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[5]),
    .I3(\XLXI_1/calc_result_addsub0000 [5]),
    .O(\XLXI_1/Mmux_calc_result_522_352 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_520  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[4]),
    .I3(\XLXI_1/calc_result_addsub0000 [4]),
    .O(\XLXI_1/Mmux_calc_result_520_350 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_514  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[1]),
    .I2(XLXN_103[1]),
    .I3(\XLXI_1/calc_result_addsub0000 [1]),
    .O(\XLXI_1/Mmux_calc_result_514_343 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_512  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[15]),
    .I2(XLXN_103[15]),
    .I3(\XLXI_1/calc_result_addsub0000 [15]),
    .O(\XLXI_1/Mmux_calc_result_512_341 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_510  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[14]),
    .I2(XLXN_103[14]),
    .I3(\XLXI_1/calc_result_addsub0000 [14]),
    .O(\XLXI_1/Mmux_calc_result_510_339 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_58  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[13]),
    .I2(XLXN_103[13]),
    .I3(\XLXI_1/calc_result_addsub0000 [13]),
    .O(\XLXI_1/Mmux_calc_result_58_367 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_56  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[12]),
    .I2(XLXN_103[12]),
    .I3(\XLXI_1/calc_result_addsub0000 [12]),
    .O(\XLXI_1/Mmux_calc_result_56_365 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_54  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[11]),
    .I3(\XLXI_1/calc_result_addsub0000 [11]),
    .O(\XLXI_1/Mmux_calc_result_54_363 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_52  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[10]),
    .I2(XLXN_103[10]),
    .I3(\XLXI_1/calc_result_addsub0000 [10]),
    .O(\XLXI_1/Mmux_calc_result_52_349 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_530  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[9]),
    .I3(\XLXI_1/calc_result_addsub0000 [9]),
    .O(\XLXI_1/Mmux_calc_result_530_361 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_528  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[8]),
    .I2(XLXN_103[8]),
    .I3(\XLXI_1/calc_result_addsub0000 [8]),
    .O(\XLXI_1/Mmux_calc_result_528_358 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_526  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[7]),
    .I3(\XLXI_1/calc_result_addsub0000 [7]),
    .O(\XLXI_1/Mmux_calc_result_526_356 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_524  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[6]),
    .I2(XLXN_103[6]),
    .I3(\XLXI_1/calc_result_addsub0000 [6]),
    .O(\XLXI_1/Mmux_calc_result_524_354 )
  );
  LUT4 #(
    .INIT ( 16'h3704 ))
  \XLXI_1/Mmux_calc_result_41  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_49[0]),
    .I2(N169),
    .I3(\XLXI_1/calc_result_shift0002[10] ),
    .O(\XLXI_1/Mmux_calc_result_41_306 )
  );
  LUT4 #(
    .INIT ( 16'h3704 ))
  \XLXI_1/Mmux_calc_result_42  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_49[0]),
    .I2(N171),
    .I3(\XLXI_1/calc_result_shift0002[11] ),
    .O(\XLXI_1/Mmux_calc_result_42_313 )
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \XLXI_1/Mmux_calc_result_45  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_49[0]),
    .I2(N177),
    .I3(\XLXI_1/calc_result_shift0002[14] ),
    .O(\XLXI_1/Mmux_calc_result_45_316 )
  );
  LUT4 #(
    .INIT ( 16'hA0B1 ))
  \XLXI_1/Mmux_calc_result_413  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(\XLXI_1/calc_result_shift0003[7] ),
    .I3(N181),
    .O(\XLXI_1/Mmux_calc_result_413_310 )
  );
  LUT4 #(
    .INIT ( 16'h5072 ))
  \XLXI_1/Mmux_calc_result_414  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(\XLXI_1/calc_result_shift0002[8] ),
    .I3(N183),
    .O(\XLXI_1/Mmux_calc_result_414_311 )
  );
  LUT4 #(
    .INIT ( 16'h5072 ))
  \XLXI_1/Mmux_calc_result_415  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(\XLXI_1/calc_result_shift0002[9] ),
    .I3(N185),
    .O(\XLXI_1/Mmux_calc_result_415_312 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \XLXI_1/calc_result_shift0003<3>1_SW0  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh35_394 ),
    .O(N195)
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \XLXI_1/Mmux_calc_result_49  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_49[0]),
    .I2(N195),
    .I3(N161),
    .O(\XLXI_1/Mmux_calc_result_49_320 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \XLXI_1/calc_result_shift0003<1>1_SW0  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh33 ),
    .O(N199)
  );
  LUT4 #(
    .INIT ( 16'h0415 ))
  \XLXI_1/Mmux_calc_result_47  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_49[0]),
    .I2(N199),
    .I3(N157),
    .O(\XLXI_1/Mmux_calc_result_47_318 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \XLXI_1/calc_result_shift0002<13>1_SW0  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh13_388 ),
    .O(N201)
  );
  LUT4 #(
    .INIT ( 16'h2301 ))
  \XLXI_1/Mmux_calc_result_44  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(N201),
    .I3(N175),
    .O(\XLXI_1/Mmux_calc_result_44_315 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \XLXI_1/calc_result_shift0002<12>1_SW0  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh12_387 ),
    .O(N203)
  );
  LUT4 #(
    .INIT ( 16'h2301 ))
  \XLXI_1/Mmux_calc_result_43  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(N203),
    .I3(N173),
    .O(\XLXI_1/Mmux_calc_result_43_314 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \XLXI_1/calc_result_shift0002<15>1_SW0  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[3]),
    .I2(\XLXI_1/Sh15 ),
    .O(N205)
  );
  LUT4 #(
    .INIT ( 16'h2301 ))
  \XLXI_1/Mmux_calc_result_46  (
    .I0(XLXN_49[0]),
    .I1(\XLXI_1/calc_result_or0000 ),
    .I2(N205),
    .I3(N179),
    .O(\XLXI_1/Mmux_calc_result_46_317 )
  );
  MUXF5   \XLXI_1/calc_result_shift0002<0>119_SW0  (
    .I0(N207),
    .I1(N208),
    .S(XLXN_103[2]),
    .O(N155)
  );
  LUT4 #(
    .INIT ( 16'h01AB ))
  \XLXI_1/calc_result_shift0002<0>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0002<0>26_448 ),
    .I2(\XLXI_1/calc_result_shift0002<0>41_449 ),
    .I3(\XLXI_1/Sh8_407 ),
    .O(N207)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \XLXI_1/calc_result_shift0002<0>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh4_399 ),
    .I2(\XLXI_1/Sh12_387 ),
    .O(N208)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<1>119_SW0  (
    .I0(N209),
    .I1(N210),
    .S(XLXN_103[2]),
    .O(N157)
  );
  LUT4 #(
    .INIT ( 16'h01AB ))
  \XLXI_1/calc_result_shift0002<1>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0002<1>26_453 ),
    .I2(\XLXI_1/calc_result_shift0002<1>41_454 ),
    .I3(\XLXI_1/Sh9_408 ),
    .O(N209)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0002<1>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh13_388 ),
    .I2(\XLXI_1/Sh5_404 ),
    .O(N210)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<4>_SW0  (
    .I0(N211),
    .I1(N212),
    .S(XLXN_103[3]),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'hABEF ))
  \XLXI_1/calc_result_shift0002<4>_SW0_F  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[1]),
    .I2(N123),
    .I3(N117),
    .O(N211)
  );
  LUT4 #(
    .INIT ( 16'hAEBF ))
  \XLXI_1/calc_result_shift0002<4>_SW0_G  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[1]),
    .I2(N127),
    .I3(N126),
    .O(N212)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<4>_SW1  (
    .I0(N213),
    .I1(N214),
    .S(XLXN_103[3]),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h0145 ))
  \XLXI_1/calc_result_shift0002<4>_SW1_F  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[1]),
    .I2(N123),
    .I3(N117),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'hAEBF ))
  \XLXI_1/calc_result_shift0002<4>_SW1_G  (
    .I0(XLXN_103[2]),
    .I1(XLXN_103[1]),
    .I2(N127),
    .I3(N126),
    .O(N214)
  );
  MUXF5   \XLXI_1/Sh5  (
    .I0(N215),
    .I1(N216),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh5_404 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh5_F  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[0]),
    .O(N215)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh5_G  (
    .I0(XLXN_87[8]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[0]),
    .O(N216)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<2>119_SW0  (
    .I0(N217),
    .I1(N218),
    .S(XLXN_103[2]),
    .O(N159)
  );
  LUT4 #(
    .INIT ( 16'h01AB ))
  \XLXI_1/calc_result_shift0002<2>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0002<2>26_455 ),
    .I2(\XLXI_1/calc_result_shift0002<2>41_456 ),
    .I3(\XLXI_1/Sh10_385 ),
    .O(N217)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0002<2>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh14 ),
    .I2(\XLXI_1/Sh6_405 ),
    .O(N218)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<3>119_SW0  (
    .I0(N219),
    .I1(N220),
    .S(XLXN_103[2]),
    .O(N161)
  );
  LUT4 #(
    .INIT ( 16'h01AB ))
  \XLXI_1/calc_result_shift0002<3>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0002<3>26_457 ),
    .I2(\XLXI_1/calc_result_shift0002<3>41_458 ),
    .I3(\XLXI_1/Sh11_386 ),
    .O(N219)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0002<3>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh15 ),
    .I2(\XLXI_1/Sh7_406 ),
    .O(N220)
  );
  MUXF5   \XLXI_1/Sh13_SW0  (
    .I0(N221),
    .I1(N222),
    .S(XLXN_97[0]),
    .O(N100)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/Sh13_SW0_F  (
    .I0(N144),
    .I1(XLXN_87[14]),
    .I2(XLXN_87[13]),
    .O(N221)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/Sh13_SW0_G  (
    .I0(N145),
    .I1(XLXN_87[14]),
    .I2(XLXN_87[13]),
    .O(N222)
  );
  MUXF5   \XLXI_1/Sh43  (
    .I0(N223),
    .I1(N224),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh43_403 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh43_F  (
    .I0(XLXN_87[10]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[0]),
    .O(N223)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh43_G  (
    .I0(XLXN_87[8]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[0]),
    .O(N224)
  );
  MUXF5   \XLXI_1/Sh42  (
    .I0(N225),
    .I1(N226),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh42_402 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh42_F  (
    .I0(XLXN_87[9]),
    .I1(XLXN_87[10]),
    .I2(XLXN_103[0]),
    .O(N225)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh42_G  (
    .I0(XLXN_87[7]),
    .I1(XLXN_87[8]),
    .I2(XLXN_103[0]),
    .O(N226)
  );
  MUXF5   \XLXI_1/Sh36  (
    .I0(N227),
    .I1(N228),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh36_395 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh36_F  (
    .I0(XLXN_87[3]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[0]),
    .O(N227)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh36_G  (
    .I0(XLXN_87[1]),
    .I1(XLXN_87[2]),
    .I2(XLXN_103[0]),
    .O(N228)
  );
  MUXF5   \XLXI_1/Sh35  (
    .I0(N229),
    .I1(N230),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh35_394 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh35_F  (
    .I0(XLXN_87[2]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[0]),
    .O(N229)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh35_G  (
    .I0(XLXN_87[0]),
    .I1(XLXN_87[1]),
    .I2(XLXN_103[0]),
    .O(N230)
  );
  MUXF5   \XLXI_1/Sh7  (
    .I0(N231),
    .I1(N232),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh7_406 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh7_F  (
    .I0(XLXN_87[8]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[0]),
    .O(N231)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh7_G  (
    .I0(XLXN_87[10]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[0]),
    .O(N232)
  );
  MUXF5   \XLXI_1/Sh11  (
    .I0(N233),
    .I1(N234),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh11_386 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh11_F  (
    .I0(XLXN_87[12]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[0]),
    .O(N233)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh11_G  (
    .I0(XLXN_87[14]),
    .I1(XLXN_87[13]),
    .I2(XLXN_103[0]),
    .O(N234)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<15>119_SW0  (
    .I0(N235),
    .I1(N236),
    .S(XLXN_103[2]),
    .O(N179)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \XLXI_1/calc_result_shift0003<15>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0003<15>26_471 ),
    .I2(\XLXI_1/calc_result_shift0003<15>41_472 ),
    .I3(\XLXI_1/Sh39_398 ),
    .O(N235)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/calc_result_shift0003<15>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh43_403 ),
    .I2(\XLXI_1/Sh35_394 ),
    .O(N236)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<14>116_SW0  (
    .I0(N237),
    .I1(N238),
    .S(XLXN_103[2]),
    .O(N177)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/calc_result_shift0003<14>116_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0003<14>46_470 ),
    .I2(\XLXI_1/Sh38_397 ),
    .O(N237)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/calc_result_shift0003<14>116_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh42_402 ),
    .I2(\XLXI_1/Sh34_393 ),
    .O(N238)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<13>116_SW0  (
    .I0(N239),
    .I1(N240),
    .S(XLXN_103[2]),
    .O(N175)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/calc_result_shift0003<13>116_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0003<13>46_469 ),
    .I2(\XLXI_1/Sh37_396 ),
    .O(N239)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/calc_result_shift0003<13>116_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh33 ),
    .I2(\XLXI_1/Sh41_401 ),
    .O(N240)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<12>119_SW0  (
    .I0(N241),
    .I1(N242),
    .S(XLXN_103[2]),
    .O(N173)
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \XLXI_1/calc_result_shift0003<12>119_SW0_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_shift0003<12>26_467 ),
    .I2(\XLXI_1/calc_result_shift0003<12>41_468 ),
    .I3(\XLXI_1/Sh36_395 ),
    .O(N241)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \XLXI_1/calc_result_shift0003<12>119_SW0_G  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh32 ),
    .I2(\XLXI_1/Sh40_400 ),
    .O(N242)
  );
  MUXF5   \XLXI_1/Sh9  (
    .I0(N243),
    .I1(N244),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh9_408 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh9_F  (
    .I0(XLXN_87[10]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[0]),
    .O(N243)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh9_G  (
    .I0(XLXN_87[12]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[0]),
    .O(N244)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<14>46  (
    .I0(N245),
    .I1(N246),
    .S(XLXN_103[1]),
    .O(\XLXI_1/calc_result_shift0003<14>46_470 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/calc_result_shift0003<14>46_F  (
    .I0(XLXN_87[13]),
    .I1(XLXN_87[14]),
    .I2(XLXN_103[0]),
    .O(N245)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/calc_result_shift0003<14>46_G  (
    .I0(XLXN_87[11]),
    .I1(XLXN_87[12]),
    .I2(XLXN_103[0]),
    .O(N246)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<13>46  (
    .I0(N247),
    .I1(N248),
    .S(XLXN_103[1]),
    .O(\XLXI_1/calc_result_shift0003<13>46_469 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/calc_result_shift0003<13>46_F  (
    .I0(XLXN_87[12]),
    .I1(XLXN_87[13]),
    .I2(XLXN_103[0]),
    .O(N247)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/calc_result_shift0003<13>46_G  (
    .I0(XLXN_87[10]),
    .I1(XLXN_87[11]),
    .I2(XLXN_103[0]),
    .O(N248)
  );
  MUXF5   \XLXI_1/Sh38  (
    .I0(N249),
    .I1(N250),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh38_397 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \XLXI_1/Sh38_F  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[0]),
    .O(N249)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh38_G  (
    .I0(XLXN_87[3]),
    .I1(XLXN_87[4]),
    .I2(XLXN_103[0]),
    .O(N250)
  );
  MUXF5   \XLXI_1/Sh37  (
    .I0(N251),
    .I1(N252),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh37_396 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh37_F  (
    .I0(XLXN_87[4]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[0]),
    .O(N251)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh37_G  (
    .I0(XLXN_87[2]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[0]),
    .O(N252)
  );
  MUXF5   \XLXI_1/Sh41  (
    .I0(N253),
    .I1(N254),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh41_401 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh41_F  (
    .I0(XLXN_87[8]),
    .I1(XLXN_87[9]),
    .I2(XLXN_103[0]),
    .O(N253)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh41_G  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[0]),
    .O(N254)
  );
  MUXF5   \XLXI_1/Sh40  (
    .I0(N255),
    .I1(N256),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh40_400 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh40_F  (
    .I0(XLXN_87[7]),
    .I1(XLXN_87[8]),
    .I2(XLXN_103[0]),
    .O(N255)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \XLXI_1/Sh40_G  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[0]),
    .O(N256)
  );
  MUXF5   \XLXI_1/Sh39  (
    .I0(N257),
    .I1(N258),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh39_398 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh39_F  (
    .I0(XLXN_87[6]),
    .I1(XLXN_87[7]),
    .I2(XLXN_103[0]),
    .O(N257)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_1/Sh39_G  (
    .I0(XLXN_87[4]),
    .I1(XLXN_87[5]),
    .I2(XLXN_103[0]),
    .O(N258)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<10>_SW2  (
    .I0(N259),
    .I1(N260),
    .S(XLXN_103[2]),
    .O(N169)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \XLXI_1/calc_result_shift0003<10>_SW2_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh42_402 ),
    .I2(\XLXI_1/Sh34_393 ),
    .O(N259)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \XLXI_1/calc_result_shift0003<10>_SW2_G  (
    .I0(XLXN_97[3]),
    .I1(N135),
    .I2(N136),
    .I3(\XLXI_1/Sh38_397 ),
    .O(N260)
  );
  MUXF5   \XLXI_1/calc_result_shift0003<11>_SW2  (
    .I0(N261),
    .I1(N262),
    .S(XLXN_103[2]),
    .O(N171)
  );
  LUT3 #(
    .INIT ( 8'h1B ))
  \XLXI_1/calc_result_shift0003<11>_SW2_F  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/Sh43_403 ),
    .I2(\XLXI_1/Sh35_394 ),
    .O(N261)
  );
  LUT4 #(
    .INIT ( 16'hE4FF ))
  \XLXI_1/calc_result_shift0003<11>_SW2_G  (
    .I0(XLXN_97[3]),
    .I1(N135),
    .I2(N136),
    .I3(\XLXI_1/Sh39_398 ),
    .O(N262)
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_5  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[0]),
    .I2(XLXN_103[0]),
    .I3(\XLXI_1/calc_result_addsub0000 [0]),
    .O(\XLXI_1/Mmux_calc_result_5_337 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_518  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[3]),
    .I2(XLXN_103[3]),
    .I3(\XLXI_1/calc_result_addsub0000 [3]),
    .O(\XLXI_1/Mmux_calc_result_518_347 )
  );
  LUT4 #(
    .INIT ( 16'h7F2A ))
  \XLXI_1/Mmux_calc_result_516  (
    .I0(XLXN_49[0]),
    .I1(XLXN_87[2]),
    .I2(XLXN_103[2]),
    .I3(\XLXI_1/calc_result_addsub0000 [2]),
    .O(\XLXI_1/Mmux_calc_result_516_345 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_2/reg_file_7_not00011  (
    .I0(XLXN_8),
    .I1(XLXN_206[6]),
    .I2(XLXN_206[7]),
    .I3(XLXN_206[8]),
    .O(\XLXI_2/reg_file_7_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \XLXI_2/reg_file_6_not00011  (
    .I0(XLXN_8),
    .I1(XLXN_206[6]),
    .I2(XLXN_206[7]),
    .I3(XLXN_206[8]),
    .O(\XLXI_2/reg_file_6_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \XLXI_2/reg_file_5_not00011  (
    .I0(XLXN_206[6]),
    .I1(XLXN_206[7]),
    .I2(XLXN_8),
    .I3(XLXN_206[8]),
    .O(\XLXI_2/reg_file_5_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \XLXI_2/reg_file_4_not00011  (
    .I0(XLXN_8),
    .I1(XLXN_206[6]),
    .I2(XLXN_206[7]),
    .I3(XLXN_206[8]),
    .O(\XLXI_2/reg_file_4_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \XLXI_2/reg_file_3_not00011  (
    .I0(XLXN_206[6]),
    .I1(XLXN_206[8]),
    .I2(XLXN_206[7]),
    .I3(XLXN_8),
    .O(\XLXI_2/reg_file_3_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \XLXI_2/reg_file_2_not00011  (
    .I0(XLXN_206[7]),
    .I1(XLXN_206[6]),
    .I2(XLXN_206[8]),
    .I3(XLXN_8),
    .O(\XLXI_2/reg_file_2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \XLXI_2/reg_file_1_not00011  (
    .I0(XLXN_8),
    .I1(XLXN_206[7]),
    .I2(XLXN_206[8]),
    .I3(XLXN_206[6]),
    .O(\XLXI_2/reg_file_1_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \XLXI_2/reg_file_0_not00011  (
    .I0(XLXN_8),
    .I1(XLXN_206[6]),
    .I2(XLXN_206[7]),
    .I3(XLXN_206[8]),
    .O(\XLXI_2/reg_file_0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hEA8B ))
  \XLXI_4/RegWrite_or0000_SW1  (
    .I0(XLXN_206[14]),
    .I1(XLXN_206[11]),
    .I2(XLXN_206[9]),
    .I3(XLXN_206[10]),
    .O(N263)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_4/RegWrite_or0000  (
    .I0(XLXN_206[12]),
    .I1(XLXN_206[13]),
    .I2(XLXN_206[15]),
    .I3(N263),
    .O(XLXN_8)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_4/ALUMode<2>_SW1  (
    .I0(XLXN_206[12]),
    .I1(XLXN_206[13]),
    .I2(XLXN_206[14]),
    .I3(XLXN_206[15]),
    .O(N265)
  );
  LUT4 #(
    .INIT ( 16'h0702 ))
  \XLXI_4/ALUMode<2>  (
    .I0(XLXN_206[10]),
    .I1(XLXN_206[9]),
    .I2(N265),
    .I3(XLXN_206[11]),
    .O(XLXN_49[2])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \XLXI_4/ALUMode<0>_SW1  (
    .I0(XLXN_206[10]),
    .I1(XLXN_206[12]),
    .I2(XLXN_206[13]),
    .I3(XLXN_206[15]),
    .O(N267)
  );
  LUT4 #(
    .INIT ( 16'h0702 ))
  \XLXI_4/ALUMode<0>  (
    .I0(XLXN_206[11]),
    .I1(XLXN_206[14]),
    .I2(N267),
    .I3(XLXN_206[9]),
    .O(XLXN_49[0])
  );
  LUT4 #(
    .INIT ( 16'h060C ))
  \XLXI_4/ALUMode<1>  (
    .I0(XLXN_206[11]),
    .I1(XLXN_206[9]),
    .I2(N265),
    .I3(XLXN_206[10]),
    .O(XLXN_49[1])
  );
  LUT4 #(
    .INIT ( 16'h153F ))
  \XLXI_4/RegRead1<2>_SW1  (
    .I0(\XLXI_4/RegRead1_or0000 ),
    .I1(\XLXI_4/RegRead1_or0001 ),
    .I2(XLXN_206[8]),
    .I3(XLXN_206[5]),
    .O(N271)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_4/RegRead1<2>  (
    .I0(XLXN_206[12]),
    .I1(XLXN_206[13]),
    .I2(XLXN_206[15]),
    .I3(N271),
    .O(XLXN_23[2])
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \XLXI_4/ALUIN2Src<1>_SW1  (
    .I0(XLXN_206[15]),
    .I1(XLXN_206[14]),
    .I2(XLXN_206[9]),
    .I3(XLXN_206[13]),
    .O(N273)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_4/ALUIN2Src<1>  (
    .I0(XLXN_206[10]),
    .I1(XLXN_206[11]),
    .I2(XLXN_206[12]),
    .I3(N273),
    .O(XLXN_104[1])
  );
  LUT4 #(
    .INIT ( 16'h153F ))
  \XLXI_4/RegRead1<1>_SW1  (
    .I0(\XLXI_4/RegRead1_or0000 ),
    .I1(\XLXI_4/RegRead1_or0001 ),
    .I2(XLXN_206[7]),
    .I3(XLXN_206[4]),
    .O(N275)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_4/RegRead1<1>  (
    .I0(XLXN_206[12]),
    .I1(XLXN_206[13]),
    .I2(XLXN_206[15]),
    .I3(N275),
    .O(XLXN_23[1])
  );
  LUT4 #(
    .INIT ( 16'h0028 ))
  \XLXI_4/ImmData_or0000  (
    .I0(XLXN_206[11]),
    .I1(XLXN_206[10]),
    .I2(XLXN_206[9]),
    .I3(N265),
    .O(\XLXI_4/ImmData_or0000_814 )
  );
  LUT4 #(
    .INIT ( 16'h153F ))
  \XLXI_4/RegRead1<0>_SW1  (
    .I0(\XLXI_4/RegRead1_or0000 ),
    .I1(\XLXI_4/RegRead1_or0001 ),
    .I2(XLXN_206[6]),
    .I3(XLXN_206[3]),
    .O(N279)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \XLXI_4/RegRead1<0>  (
    .I0(XLXN_206[12]),
    .I1(XLXN_206[13]),
    .I2(XLXN_206[15]),
    .I3(N279),
    .O(XLXN_23[0])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<15>1  (
    .I0(XLXN_207[15]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[15]),
    .O(XLXN_103[15])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<14>1  (
    .I0(XLXN_207[14]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[14]),
    .O(XLXN_103[14])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<13>1  (
    .I0(XLXN_207[13]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[13]),
    .O(XLXN_103[13])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<9>1  (
    .I0(XLXN_207[9]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[9]),
    .O(XLXN_103[9])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<8>1  (
    .I0(XLXN_207[8]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[8]),
    .O(XLXN_103[8])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<7>1  (
    .I0(XLXN_207[7]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[7]),
    .O(XLXN_103[7])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<6>1  (
    .I0(XLXN_207[6]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[6]),
    .O(XLXN_103[6])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<5>1  (
    .I0(XLXN_207[5]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[5]),
    .O(XLXN_103[5])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<4>1  (
    .I0(XLXN_207[4]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[4]),
    .O(XLXN_103[4])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<12>1  (
    .I0(XLXN_207[12]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[12]),
    .O(XLXN_103[12])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<11>1  (
    .I0(XLXN_207[11]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[11]),
    .O(XLXN_103[11])
  );
  LUT4 #(
    .INIT ( 16'hA3A0 ))
  \XLXI_5/muxout<10>1  (
    .I0(XLXN_207[10]),
    .I1(\XLXI_4/ImmData_or0000_814 ),
    .I2(XLXN_104[1]),
    .I3(XLXN_97[10]),
    .O(XLXN_103[10])
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux16_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_0_797 ),
    .I3(\XLXI_2/reg_file_6_0_780 ),
    .O(\XLXI_2/mux16_4_523 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux16_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_0_763 ),
    .I3(\XLXI_2/reg_file_4_0_746 ),
    .O(\XLXI_2/mux16_5_525 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux16_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_0_729 ),
    .I3(\XLXI_2/reg_file_2_0_712 ),
    .O(\XLXI_2/mux16_51_526 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux16_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_0_695 ),
    .I3(\XLXI_2/reg_file_0_0_678 ),
    .O(\XLXI_2/mux16_6_527 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux25_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_3_806 ),
    .I3(\XLXI_2/reg_file_6_3_789 ),
    .O(\XLXI_2/mux25_4_583 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux25_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_3_772 ),
    .I3(\XLXI_2/reg_file_4_3_755 ),
    .O(\XLXI_2/mux25_5_585 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux25_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_3_738 ),
    .I3(\XLXI_2/reg_file_2_3_721 ),
    .O(\XLXI_2/mux25_51_586 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux25_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_3_704 ),
    .I3(\XLXI_2/reg_file_0_3_687 ),
    .O(\XLXI_2/mux25_6_587 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux23_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_1_798 ),
    .I3(\XLXI_2/reg_file_6_1_781 ),
    .O(\XLXI_2/mux23_4_571 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux23_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_1_764 ),
    .I3(\XLXI_2/reg_file_4_1_747 ),
    .O(\XLXI_2/mux23_5_573 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux23_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_1_730 ),
    .I3(\XLXI_2/reg_file_2_1_713 ),
    .O(\XLXI_2/mux23_51_574 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux23_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_1_696 ),
    .I3(\XLXI_2/reg_file_0_1_679 ),
    .O(\XLXI_2/mux23_6_575 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux24_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_2_805 ),
    .I3(\XLXI_2/reg_file_6_2_788 ),
    .O(\XLXI_2/mux24_4_577 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux24_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_2_771 ),
    .I3(\XLXI_2/reg_file_4_2_754 ),
    .O(\XLXI_2/mux24_5_579 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux24_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_2_737 ),
    .I3(\XLXI_2/reg_file_2_2_720 ),
    .O(\XLXI_2/mux24_51_580 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux24_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_2_703 ),
    .I3(\XLXI_2/reg_file_0_2_686 ),
    .O(\XLXI_2/mux24_6_581 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux21_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_14_803 ),
    .I3(\XLXI_2/reg_file_6_14_786 ),
    .O(\XLXI_2/mux21_4_559 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux21_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_14_769 ),
    .I3(\XLXI_2/reg_file_4_14_752 ),
    .O(\XLXI_2/mux21_5_561 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux21_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_14_735 ),
    .I3(\XLXI_2/reg_file_2_14_718 ),
    .O(\XLXI_2/mux21_51_562 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux21_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_14_701 ),
    .I3(\XLXI_2/reg_file_0_14_684 ),
    .O(\XLXI_2/mux21_6_563 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux22_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_15_804 ),
    .I3(\XLXI_2/reg_file_6_15_787 ),
    .O(\XLXI_2/mux22_4_565 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux22_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_15_770 ),
    .I3(\XLXI_2/reg_file_4_15_753 ),
    .O(\XLXI_2/mux22_5_567 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux22_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_15_736 ),
    .I3(\XLXI_2/reg_file_2_15_719 ),
    .O(\XLXI_2/mux22_51_568 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux22_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_15_702 ),
    .I3(\XLXI_2/reg_file_0_15_685 ),
    .O(\XLXI_2/mux22_6_569 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux28_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_6_809 ),
    .I3(\XLXI_2/reg_file_6_6_792 ),
    .O(\XLXI_2/mux28_4_601 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux28_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_6_775 ),
    .I3(\XLXI_2/reg_file_4_6_758 ),
    .O(\XLXI_2/mux28_5_603 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux28_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_6_741 ),
    .I3(\XLXI_2/reg_file_2_6_724 ),
    .O(\XLXI_2/mux28_51_604 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux28_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_6_707 ),
    .I3(\XLXI_2/reg_file_0_6_690 ),
    .O(\XLXI_2/mux28_6_605 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux26_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_4_807 ),
    .I3(\XLXI_2/reg_file_6_4_790 ),
    .O(\XLXI_2/mux26_4_589 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux26_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_4_773 ),
    .I3(\XLXI_2/reg_file_4_4_756 ),
    .O(\XLXI_2/mux26_5_591 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux26_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_4_739 ),
    .I3(\XLXI_2/reg_file_2_4_722 ),
    .O(\XLXI_2/mux26_51_592 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux26_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_4_705 ),
    .I3(\XLXI_2/reg_file_0_4_688 ),
    .O(\XLXI_2/mux26_6_593 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux17_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_10_799 ),
    .I3(\XLXI_2/reg_file_6_10_782 ),
    .O(\XLXI_2/mux17_4_529 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux17_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_10_765 ),
    .I3(\XLXI_2/reg_file_4_10_748 ),
    .O(\XLXI_2/mux17_5_531 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux17_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_10_731 ),
    .I3(\XLXI_2/reg_file_2_10_714 ),
    .O(\XLXI_2/mux17_51_532 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux17_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_10_697 ),
    .I3(\XLXI_2/reg_file_0_10_680 ),
    .O(\XLXI_2/mux17_6_533 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux27_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_5_808 ),
    .I3(\XLXI_2/reg_file_6_5_791 ),
    .O(\XLXI_2/mux27_4_595 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux27_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_5_774 ),
    .I3(\XLXI_2/reg_file_4_5_757 ),
    .O(\XLXI_2/mux27_5_597 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux27_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_5_740 ),
    .I3(\XLXI_2/reg_file_2_5_723 ),
    .O(\XLXI_2/mux27_51_598 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux27_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_5_706 ),
    .I3(\XLXI_2/reg_file_0_5_689 ),
    .O(\XLXI_2/mux27_6_599 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux29_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_7_810 ),
    .I3(\XLXI_2/reg_file_6_7_793 ),
    .O(\XLXI_2/mux29_4_607 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux29_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_7_776 ),
    .I3(\XLXI_2/reg_file_4_7_759 ),
    .O(\XLXI_2/mux29_5_609 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux29_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_7_742 ),
    .I3(\XLXI_2/reg_file_2_7_725 ),
    .O(\XLXI_2/mux29_51_610 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux29_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_7_708 ),
    .I3(\XLXI_2/reg_file_0_7_691 ),
    .O(\XLXI_2/mux29_6_611 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux30_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_8_811 ),
    .I3(\XLXI_2/reg_file_6_8_794 ),
    .O(\XLXI_2/mux30_4_619 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux30_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_8_777 ),
    .I3(\XLXI_2/reg_file_4_8_760 ),
    .O(\XLXI_2/mux30_5_621 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux30_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_8_743 ),
    .I3(\XLXI_2/reg_file_2_8_726 ),
    .O(\XLXI_2/mux30_51_622 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux30_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_8_709 ),
    .I3(\XLXI_2/reg_file_0_8_692 ),
    .O(\XLXI_2/mux30_6_623 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux18_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_11_800 ),
    .I3(\XLXI_2/reg_file_6_11_783 ),
    .O(\XLXI_2/mux18_4_535 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux18_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_11_766 ),
    .I3(\XLXI_2/reg_file_4_11_749 ),
    .O(\XLXI_2/mux18_5_537 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux18_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_11_732 ),
    .I3(\XLXI_2/reg_file_2_11_715 ),
    .O(\XLXI_2/mux18_51_538 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux18_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_11_698 ),
    .I3(\XLXI_2/reg_file_0_11_681 ),
    .O(\XLXI_2/mux18_6_539 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux31_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_9_812 ),
    .I3(\XLXI_2/reg_file_6_9_795 ),
    .O(\XLXI_2/mux31_4_625 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux31_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_9_778 ),
    .I3(\XLXI_2/reg_file_4_9_761 ),
    .O(\XLXI_2/mux31_5_627 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux31_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_9_744 ),
    .I3(\XLXI_2/reg_file_2_9_727 ),
    .O(\XLXI_2/mux31_51_628 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux31_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_9_710 ),
    .I3(\XLXI_2/reg_file_0_9_693 ),
    .O(\XLXI_2/mux31_6_629 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux19_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_12_801 ),
    .I3(\XLXI_2/reg_file_6_12_784 ),
    .O(\XLXI_2/mux19_4_541 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux19_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_12_767 ),
    .I3(\XLXI_2/reg_file_4_12_750 ),
    .O(\XLXI_2/mux19_5_543 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux19_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_12_733 ),
    .I3(\XLXI_2/reg_file_2_12_716 ),
    .O(\XLXI_2/mux19_51_544 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux19_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_12_699 ),
    .I3(\XLXI_2/reg_file_0_12_682 ),
    .O(\XLXI_2/mux19_6_545 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux20_4  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_7_13_802 ),
    .I3(\XLXI_2/reg_file_6_13_785 ),
    .O(\XLXI_2/mux20_4_553 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux20_5  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_5_13_768 ),
    .I3(\XLXI_2/reg_file_4_13_751 ),
    .O(\XLXI_2/mux20_5_555 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux20_51  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_3_13_734 ),
    .I3(\XLXI_2/reg_file_2_13_717 ),
    .O(\XLXI_2/mux20_51_556 )
  );
  LUT4 #(
    .INIT ( 16'hF780 ))
  \XLXI_2/mux20_6  (
    .I0(XLXN_206[0]),
    .I1(\XLXI_4/RegRead2_or0000_817 ),
    .I2(\XLXI_2/reg_file_1_13_700 ),
    .I3(\XLXI_2/reg_file_0_13_683 ),
    .O(\XLXI_2/mux20_6_557 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<1>_1  (
    .I0(N142),
    .I1(N141),
    .I2(XLXN_97[1]),
    .O(\XLXI_5/muxout [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<2>_1  (
    .I0(N139),
    .I1(N138),
    .I2(XLXN_97[2]),
    .O(\XLXI_5/muxout [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<3>_1  (
    .I0(N136),
    .I1(N135),
    .I2(XLXN_97[3]),
    .O(\XLXI_5/muxout [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<0>_1  (
    .I0(N145),
    .I1(N144),
    .I2(XLXN_97[0]),
    .O(\XLXI_5/muxout [0])
  );
  BUFG   XLXN_215_BUFG (
    .I(XLXN_2151),
    .O(XLXN_215)
  );
  INV   \XLXI_1/calc_result<15>_inv1_INV_0  (
    .I(RESULT_15_OBUF_247),
    .O(\XLXI_1/calc_result<15>_inv )
  );
  MUXF5   \XLXI_1/calc_result_shift0002<5>  (
    .I0(N281),
    .I1(N282),
    .S(XLXN_103[3]),
    .O(\XLXI_1/calc_result_shift0002[5] )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \XLXI_1/calc_result_shift0002<5>_F  (
    .I0(\XLXI_1/calc_result_or000023_445 ),
    .I1(XLXN_103[2]),
    .I2(\XLXI_1/Sh5_404 ),
    .I3(\XLXI_1/Sh9_408 ),
    .O(N281)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \XLXI_1/calc_result_shift0002<5>_G  (
    .I0(\XLXI_1/calc_result_or000023_445 ),
    .I1(XLXN_103[2]),
    .I2(\XLXI_1/Sh13_388 ),
    .O(N282)
  );
  MUXF5   \XLXI_1/Sh34  (
    .I0(N283),
    .I1(N284),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh34_393 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh34_F  (
    .I0(XLXN_103[0]),
    .I1(XLXN_87[2]),
    .I2(XLXN_87[1]),
    .O(N283)
  );
  LUT4 #(
    .INIT ( 16'h028A ))
  \XLXI_1/Sh34_G  (
    .I0(XLXN_87[0]),
    .I1(XLXN_97[0]),
    .I2(N144),
    .I3(N145),
    .O(N284)
  );
  MUXF5   \XLXI_1/calc_result_shift0002<6>  (
    .I0(N285),
    .I1(N286),
    .S(XLXN_103[3]),
    .O(\XLXI_1/calc_result_shift0002[6] )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \XLXI_1/calc_result_shift0002<6>_F  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_103[2]),
    .I2(\XLXI_1/Sh6_405 ),
    .I3(\XLXI_1/Sh10_385 ),
    .O(N285)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \XLXI_1/calc_result_shift0002<6>_G  (
    .I0(\XLXI_1/calc_result_or0000 ),
    .I1(XLXN_103[2]),
    .I2(\XLXI_1/Sh14 ),
    .O(N286)
  );
  MUXF5   \XLXI_1/Sh12  (
    .I0(N287),
    .I1(N288),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh12_387 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh12_F  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[12]),
    .I2(XLXN_87[13]),
    .O(N287)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh12_G  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[14]),
    .I2(XLXN_87[15]),
    .O(N288)
  );
  MUXF5   \XLXI_1/Sh4  (
    .I0(N289),
    .I1(N290),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh4_399 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh4_F  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[4]),
    .I2(XLXN_87[5]),
    .O(N289)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh4_G  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[6]),
    .I2(XLXN_87[7]),
    .O(N290)
  );
  MUXF5   \XLXI_1/Sh8  (
    .I0(N291),
    .I1(N292),
    .S(XLXN_103[1]),
    .O(\XLXI_1/Sh8_407 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh8_F  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[8]),
    .I2(XLXN_87[9]),
    .O(N291)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh8_G  (
    .I0(\XLXI_5/muxout [0]),
    .I1(XLXN_87[10]),
    .I2(XLXN_87[11]),
    .O(N292)
  );
  MUXF5   \XLXI_1/Sh10  (
    .I0(N293),
    .I1(N294),
    .S(\XLXI_5/muxout [0]),
    .O(\XLXI_1/Sh10_385 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh10_F  (
    .I0(XLXN_103[1]),
    .I1(XLXN_87[10]),
    .I2(XLXN_87[12]),
    .O(N293)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh10_G  (
    .I0(XLXN_103[1]),
    .I1(XLXN_87[11]),
    .I2(XLXN_87[13]),
    .O(N294)
  );
  MUXF5   \XLXI_1/Sh6  (
    .I0(N295),
    .I1(N296),
    .S(\XLXI_5/muxout [0]),
    .O(\XLXI_1/Sh6_405 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh6_F  (
    .I0(XLXN_103[1]),
    .I1(XLXN_87[6]),
    .I2(XLXN_87[8]),
    .O(N295)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \XLXI_1/Sh6_G  (
    .I0(XLXN_103[1]),
    .I1(XLXN_87[7]),
    .I2(XLXN_87[9]),
    .O(N296)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_1/calc_result_shift0003<9>_SW21  (
    .I0(\XLXI_1/Sh33 ),
    .I1(XLXN_103[2]),
    .O(\XLXI_1/calc_result_shift0003<9>_SW2 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0003<9>_SW22  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh37_396 ),
    .I2(\XLXI_1/Sh41_401 ),
    .O(\XLXI_1/calc_result_shift0003<9>_SW21_478 )
  );
  MUXF5   \XLXI_1/calc_result_shift0003<9>_SW2_f5  (
    .I0(\XLXI_1/calc_result_shift0003<9>_SW21_478 ),
    .I1(\XLXI_1/calc_result_shift0003<9>_SW2 ),
    .S(XLXN_103[3]),
    .O(N185)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_1/calc_result_shift0002<7>_SW21  (
    .I0(\XLXI_1/Sh15 ),
    .I1(XLXN_103[2]),
    .O(\XLXI_1/calc_result_shift0002<7>_SW2 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0002<7>_SW22  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh11_386 ),
    .I2(\XLXI_1/Sh7_406 ),
    .O(\XLXI_1/calc_result_shift0002<7>_SW21_463 )
  );
  MUXF5   \XLXI_1/calc_result_shift0002<7>_SW2_f5  (
    .I0(\XLXI_1/calc_result_shift0002<7>_SW21_463 ),
    .I1(\XLXI_1/calc_result_shift0002<7>_SW2 ),
    .S(XLXN_103[3]),
    .O(N181)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \XLXI_1/calc_result_shift0003<8>_SW21  (
    .I0(\XLXI_1/Sh32 ),
    .I1(XLXN_103[2]),
    .O(\XLXI_1/calc_result_shift0003<8>_SW2 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \XLXI_1/calc_result_shift0003<8>_SW22  (
    .I0(XLXN_103[2]),
    .I1(\XLXI_1/Sh36_395 ),
    .I2(\XLXI_1/Sh40_400 ),
    .O(\XLXI_1/calc_result_shift0003<8>_SW21_476 )
  );
  MUXF5   \XLXI_1/calc_result_shift0003<8>_SW2_f5  (
    .I0(\XLXI_1/calc_result_shift0003<8>_SW21_476 ),
    .I1(\XLXI_1/calc_result_shift0003<8>_SW2 ),
    .S(XLXN_103[3]),
    .O(N183)
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \XLXI_1/calc_result_or000023  (
    .I0(\XLXI_1/calc_result_or00004_446 ),
    .I1(\XLXI_1/calc_result_or00009_447 ),
    .I2(\XLXI_1/calc_result_or000014_444 ),
    .LO(N297),
    .O(\XLXI_1/calc_result_or0000 )
  );
  LUT3_D #(
    .INIT ( 8'h02 ))
  \XLXI_1/Sh321  (
    .I0(XLXN_87[0]),
    .I1(XLXN_103[1]),
    .I2(XLXN_103[0]),
    .LO(N298),
    .O(\XLXI_1/Sh32 )
  );
  LUT4_D #(
    .INIT ( 16'h0A0C ))
  \XLXI_1/Sh331  (
    .I0(XLXN_87[0]),
    .I1(XLXN_87[1]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .LO(N299),
    .O(\XLXI_1/Sh33 )
  );
  LUT3_D #(
    .INIT ( 8'h02 ))
  \XLXI_1/Sh151  (
    .I0(XLXN_87[15]),
    .I1(XLXN_103[1]),
    .I2(XLXN_103[0]),
    .LO(N300),
    .O(\XLXI_1/Sh15 )
  );
  LUT4_D #(
    .INIT ( 16'h0A0C ))
  \XLXI_1/Sh141  (
    .I0(XLXN_87[15]),
    .I1(XLXN_87[14]),
    .I2(XLXN_103[1]),
    .I3(XLXN_103[0]),
    .LO(N301),
    .O(\XLXI_1/Sh14 )
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  \XLXI_5/muxout<0>  (
    .I0(N145),
    .I1(N144),
    .I2(XLXN_97[0]),
    .LO(N302),
    .O(XLXN_103[0])
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/z_flag_not00018  (
    .I0(RESULT_4_OBUF_251),
    .I1(RESULT_5_OBUF_252),
    .I2(RESULT_0_OBUF_241),
    .I3(RESULT_1_OBUF_248),
    .LO(\XLXI_1/z_flag_not00018_485 )
  );
  LUT3_L #(
    .INIT ( 8'hFE ))
  \XLXI_1/z_flag_not000125  (
    .I0(RESULT_7_OBUF_254),
    .I1(RESULT_8_OBUF_255),
    .I2(RESULT_15_OBUF_247),
    .LO(\XLXI_1/z_flag_not000125_482 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \XLXI_1/calc_result_shift0003<7>_SW0  (
    .I0(XLXN_103[3]),
    .I1(\XLXI_1/calc_result_or000014_444 ),
    .I2(\XLXI_1/calc_result_or00009_447 ),
    .I3(\XLXI_1/calc_result_or00004_446 ),
    .LO(N303),
    .O(N37)
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \XLXI_1/calc_result_or000023_1  (
    .I0(\XLXI_1/calc_result_or00004_446 ),
    .I1(\XLXI_1/calc_result_or00009_447 ),
    .I2(\XLXI_1/calc_result_or000014_444 ),
    .LO(N304),
    .O(\XLXI_1/calc_result_or000023_445 )
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_45  (
    .I(INSTR[0]),
    .O(XLXN_206[0])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_44  (
    .I(INSTR[1]),
    .O(XLXN_206[1])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_43  (
    .I(INSTR[2]),
    .O(XLXN_206[2])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_42  (
    .I(INSTR[3]),
    .O(XLXN_206[3])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_41  (
    .I(INSTR[7]),
    .O(XLXN_206[7])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_40  (
    .I(INSTR[6]),
    .O(XLXN_206[6])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_39  (
    .I(INSTR[5]),
    .O(XLXN_206[5])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_38  (
    .I(INSTR[4]),
    .O(XLXN_206[4])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_37  (
    .I(INSTR[12]),
    .O(XLXN_206[12])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_36  (
    .I(INSTR[13]),
    .O(XLXN_206[13])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_35  (
    .I(INSTR[14]),
    .O(XLXN_206[14])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_34  (
    .I(INSTR[15]),
    .O(XLXN_206[15])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_33  (
    .I(INSTR[11]),
    .O(XLXN_206[11])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_32  (
    .I(INSTR[10]),
    .O(XLXN_206[10])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_31  (
    .I(INSTR[9]),
    .O(XLXN_206[9])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_41/I_36_30  (
    .I(INSTR[8]),
    .O(XLXN_206[8])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_45  (
    .I(EXT_IN[0]),
    .O(XLXN_207[0])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_44  (
    .I(EXT_IN[1]),
    .O(XLXN_207[1])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_43  (
    .I(EXT_IN[2]),
    .O(XLXN_207[2])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_42  (
    .I(EXT_IN[3]),
    .O(XLXN_207[3])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_41  (
    .I(EXT_IN[7]),
    .O(XLXN_207[7])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_40  (
    .I(EXT_IN[6]),
    .O(XLXN_207[6])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_39  (
    .I(EXT_IN[5]),
    .O(XLXN_207[5])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_38  (
    .I(EXT_IN[4]),
    .O(XLXN_207[4])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_37  (
    .I(EXT_IN[12]),
    .O(XLXN_207[12])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_36  (
    .I(EXT_IN[13]),
    .O(XLXN_207[13])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_35  (
    .I(EXT_IN[14]),
    .O(XLXN_207[14])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_34  (
    .I(EXT_IN[15]),
    .O(XLXN_207[15])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_33  (
    .I(EXT_IN[11]),
    .O(XLXN_207[11])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_32  (
    .I(EXT_IN[10]),
    .O(XLXN_207[10])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_31  (
    .I(EXT_IN[9]),
    .O(XLXN_207[9])
  );
  IBUF #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \XLXI_42/I_36_30  (
    .I(EXT_IN[8]),
    .O(XLXN_207[8])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

