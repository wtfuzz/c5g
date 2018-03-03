#
# Clocks
#

set_location_assignment PIN_R20 -to ref_clk_pad_i
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ref_clk_pad_i

set_location_assignment PIN_N20 -to sys_clk_pad_i
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sys_clk_pad_i

#
# Reset
#

set_location_assignment PIN_AB24 -to rst_n_pad_i
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n_pad_i

#
# Connected to USB Serial Converter
#
# uart0
#
set_location_assignment PIN_M9 -to uart0_srx_pad_i
set_instance_assignment -name IO_STANDARD "2.5-V" -to uart0_srx_pad_i
set_location_assignment PIN_L9 -to uart0_stx_pad_o
set_instance_assignment -name IO_STANDARD "2.5-V" -to uart0_stx_pad_o

#
# GPIO0 - LEDs
#

# Green
set_location_assignment PIN_L7 -to gpio0_io[0]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[0]
set_location_assignment PIN_K6 -to gpio0_io[1]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[1]
set_location_assignment PIN_D8 -to gpio0_io[2]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[2]
set_location_assignment PIN_E9 -to gpio0_io[3]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[3]
set_location_assignment PIN_A5 -to gpio0_io[4]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[4]
set_location_assignment PIN_B6 -to gpio0_io[5]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[5]
set_location_assignment PIN_H8 -to gpio0_io[6]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[6]
set_location_assignment PIN_H9 -to gpio0_io[7]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[7]

# Red
set_location_assignment PIN_F7 -to gpio0_io[8]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[8]
set_location_assignment PIN_F6 -to gpio0_io[9]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[9]
set_location_assignment PIN_G6 -to gpio0_io[10]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[10]
set_location_assignment PIN_G7 -to gpio0_io[11]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[11]
set_location_assignment PIN_J8 -to gpio0_io[12]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[12]
set_location_assignment PIN_J7 -to gpio0_io[13]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[13]
set_location_assignment PIN_K10 -to gpio0_io[14]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[14]
set_location_assignment PIN_K8 -to gpio0_io[15]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[15]
set_location_assignment PIN_H7 -to gpio0_io[16]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[16]
set_location_assignment PIN_J10 -to gpio0_io[17]
set_instance_assignment -name IO_STANDARD "2.5-V" -to gpio0_io[17]

# Momentary Switches
set_location_assignment PIN_P11 -to gpio0_io[18]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[18]
set_location_assignment PIN_P12 -to gpio0_io[19]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[19]
set_location_assignment PIN_Y15 -to gpio0_io[20]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[20]
set_location_assignment PIN_Y16 -to gpio0_io[21]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[21]

# Slide Switches
set_location_assignment PIN_AC9 -to gpio0_io[22]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[22]
set_location_assignment PIN_AE10 -to gpio0_io[23]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[23]
set_location_assignment PIN_AD13 -to gpio0_io[24]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[24]
set_location_assignment PIN_AC8 -to gpio0_io[25]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[25]
set_location_assignment PIN_W11 -to gpio0_io[26]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[26]
set_location_assignment PIN_AB10 -to gpio0_io[27]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[27]
set_location_assignment PIN_V10 -to gpio0_io[28]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[28]
set_location_assignment PIN_AC10 -to gpio0_io[29]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[29]
set_location_assignment PIN_Y11 -to gpio0_io[30]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[30]
set_location_assignment PIN_AC19 -to gpio0_io[31]
set_instance_assignment -name IO_STANDARD "1.2-V" -to gpio0_io[31]

#
# SRAM
#
set_location_assignment PIN_B25 -to sram_a_o[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[0]
set_location_assignment PIN_B26 -to sram_a_o[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[1]
set_location_assignment PIN_H19 -to sram_a_o[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[2]
set_location_assignment PIN_H20 -to sram_a_o[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[3]
set_location_assignment PIN_D25 -to sram_a_o[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[4]
set_location_assignment PIN_C25 -to sram_a_o[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[5]
set_location_assignment PIN_J20 -to sram_a_o[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[6]
set_location_assignment PIN_J21 -to sram_a_o[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[7]
set_location_assignment PIN_D22 -to sram_a_o[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[8]
set_location_assignment PIN_E23 -to sram_a_o[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[9]
set_location_assignment PIN_G20 -to sram_a_o[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[10]
set_location_assignment PIN_F21 -to sram_a_o[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[11]
set_location_assignment PIN_E21 -to sram_a_o[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[12]
set_location_assignment PIN_F22 -to sram_a_o[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[13]
set_location_assignment PIN_J25 -to sram_a_o[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[14]
set_location_assignment PIN_J26 -to sram_a_o[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[15]
set_location_assignment PIN_N24 -to sram_a_o[16]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[16]
set_location_assignment PIN_M24 -to sram_a_o[17]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_a_o[17]

set_location_assignment PIN_E24 -to sram_d_io[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[0]
set_location_assignment PIN_E25 -to sram_d_io[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[1]
set_location_assignment PIN_K24 -to sram_d_io[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[2]
set_location_assignment PIN_K23 -to sram_d_io[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[3]
set_location_assignment PIN_F24 -to sram_d_io[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[4]
set_location_assignment PIN_G24 -to sram_d_io[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[5]
set_location_assignment PIN_L23 -to sram_d_io[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[6]
set_location_assignment PIN_L24 -to sram_d_io[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[7]
set_location_assignment PIN_H23 -to sram_d_io[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[8]
set_location_assignment PIN_H24 -to sram_d_io[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[9]
set_location_assignment PIN_H22 -to sram_d_io[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[10]
set_location_assignment PIN_J23 -to sram_d_io[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[11]
set_location_assignment PIN_F23 -to sram_d_io[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[12]
set_location_assignment PIN_G22 -to sram_d_io[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[13]
set_location_assignment PIN_L22 -to sram_d_io[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[14]
set_location_assignment PIN_K21 -to sram_d_io[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_d_io[15]

set_location_assignment PIN_N23 -to sram_ce_o
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_ce_o
set_location_assignment PIN_M22 -to sram_oe_o
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_oe_o
set_location_assignment PIN_G25 -to sram_we_o
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_we_o
set_location_assignment PIN_H25 -to sram_lb_o
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_lb_o
set_location_assignment PIN_M25 -to sram_ub_o
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sram_ub_o

#
# LPDDR2
#

set_location_assignment PIN_AE6 -to DDR2LP_CA[0]
set_location_assignment PIN_AF6 -to DDR2LP_CA[1]
set_location_assignment PIN_AF7 -to DDR2LP_CA[2]
set_location_assignment PIN_AF8 -to DDR2LP_CA[3]
set_location_assignment PIN_U10 -to DDR2LP_CA[4]
set_location_assignment PIN_U11 -to DDR2LP_CA[5]
set_location_assignment PIN_AE9 -to DDR2LP_CA[6]
set_location_assignment PIN_AF9 -to DDR2LP_CA[7]
set_location_assignment PIN_AB12 -to DDR2LP_CA[8]
set_location_assignment PIN_AB11 -to DDR2LP_CA[9]
set_location_assignment PIN_AF14 -to DDR2LP_CKE[0]
set_location_assignment PIN_AE13 -to DDR2LP_CKE[1]
set_location_assignment PIN_P10 -to DDR2LP_CK_n
set_location_assignment PIN_N10 -to DDR2LP_CK_p
set_location_assignment PIN_R11 -to DDR2LP_CS_n[0]
set_location_assignment PIN_T11 -to DDR2LP_CS_n[1]
set_location_assignment PIN_AF11 -to DDR2LP_DM[0]
set_location_assignment PIN_AE18 -to DDR2LP_DM[1]
set_location_assignment PIN_AE20 -to DDR2LP_DM[2]
set_location_assignment PIN_AE24 -to DDR2LP_DM[3]
set_location_assignment PIN_AA14 -to DDR2LP_DQ[0]
set_location_assignment PIN_Y14 -to DDR2LP_DQ[1]
set_location_assignment PIN_AD11 -to DDR2LP_DQ[2]
set_location_assignment PIN_AD12 -to DDR2LP_DQ[3]
set_location_assignment PIN_Y13 -to DDR2LP_DQ[4]
set_location_assignment PIN_W12 -to DDR2LP_DQ[5]
set_location_assignment PIN_AD10 -to DDR2LP_DQ[6]
set_location_assignment PIN_AF12 -to DDR2LP_DQ[7]
set_location_assignment PIN_AC15 -to DDR2LP_DQ[8]
set_location_assignment PIN_AB15 -to DDR2LP_DQ[9]
set_location_assignment PIN_AC14 -to DDR2LP_DQ[10]
set_location_assignment PIN_AF13 -to DDR2LP_DQ[11]
set_location_assignment PIN_AB16 -to DDR2LP_DQ[12]
set_location_assignment PIN_AA16 -to DDR2LP_DQ[13]
set_location_assignment PIN_AE14 -to DDR2LP_DQ[14]
set_location_assignment PIN_AF18 -to DDR2LP_DQ[15]
set_location_assignment PIN_AD16 -to DDR2LP_DQ[16]
set_location_assignment PIN_AD17 -to DDR2LP_DQ[17]
set_location_assignment PIN_AC18 -to DDR2LP_DQ[18]
set_location_assignment PIN_AF19 -to DDR2LP_DQ[19]
set_location_assignment PIN_AC17 -to DDR2LP_DQ[20]
set_location_assignment PIN_AB17 -to DDR2LP_DQ[21]
set_location_assignment PIN_AF21 -to DDR2LP_DQ[22]
set_location_assignment PIN_AE21 -to DDR2LP_DQ[23]
set_location_assignment PIN_AE15 -to DDR2LP_DQ[24]
set_location_assignment PIN_AE16 -to DDR2LP_DQ[25]
set_location_assignment PIN_AC20 -to DDR2LP_DQ[26]
set_location_assignment PIN_AD21 -to DDR2LP_DQ[27]
set_location_assignment PIN_AF16 -to DDR2LP_DQ[28]
set_location_assignment PIN_AF17 -to DDR2LP_DQ[29]
set_location_assignment PIN_AD23 -to DDR2LP_DQ[30]
set_location_assignment PIN_AF23 -to DDR2LP_DQ[31]
set_location_assignment PIN_W13 -to DDR2LP_DQS_n[0]
set_location_assignment PIN_V14 -to DDR2LP_DQS_n[1]
set_location_assignment PIN_W15 -to DDR2LP_DQS_n[2]
set_location_assignment PIN_W17 -to DDR2LP_DQS_n[3]
set_location_assignment PIN_V13 -to DDR2LP_DQS_p[0]
set_location_assignment PIN_U14 -to DDR2LP_DQS_p[1]
set_location_assignment PIN_V15 -to DDR2LP_DQS_p[2]
set_location_assignment PIN_W16 -to DDR2LP_DQS_p[3]
set_location_assignment PIN_AE11 -to DDR2LP_OCT_RZQ

set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[0]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[1]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[2]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[3]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[4]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[5]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[6]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[7]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[8]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CA[9]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CKE[0]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CKE[1]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CS_n[0]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_CS_n[1]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DM[0]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DM[1]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DM[2]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DM[3]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[0]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[1]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[2]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[3]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[4]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[5]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[6]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[7]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[8]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[9]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[10]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[11]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[12]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[13]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[14]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[15]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[16]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[17]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[18]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[19]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[20]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[21]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[22]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[23]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[24]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[25]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[26]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[27]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[28]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[29]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[30]
set_instance_assignment -name IO_STANDARD "1.2-V HSUL" -to DDR2LP_DQ[31]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_n[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_n[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_n[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_n[3]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_p[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_p[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_p[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_DQS_p[3]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_CK_p
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V HSUL" -to DDR2LP_CK_n
set_instance_assignment -name IO_STANDARD "1.2 V" -to DDR2LP_OCT_RZQ

set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[1]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[2]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[3]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[4]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[5]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[6]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[7]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[8]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[9]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[10]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[11]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[12]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[13]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[14]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[15]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[16]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[17]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[18]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[19]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[20]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[21]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[22]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[23]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[24]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[25]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[26]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[27]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[28]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[29]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[30]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQ[31]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_p[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_p[1]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_p[2]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_p[3]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_n[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_n[1]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_n[2]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DQS_n[3]
set_instance_assignment -name D5_DELAY 3 -to DDR2LP_CK_p
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CK_p
set_instance_assignment -name D5_DELAY 3 -to DDR2LP_CK_n
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CK_n
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[1]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[2]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[3]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[4]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[5]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[6]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[7]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[8]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CA[9]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CKE[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_CS_n[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DM[0]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DM[1]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DM[2]
set_instance_assignment -name OUTPUT_TERMINATION "SERIES 34 OHM WITH CALIBRATION" -to DDR2LP_DM[3]

set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[1] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[2] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[3] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[4] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[5] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[6] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[7] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[8] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[9] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[10] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[11] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[12] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[13] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[14] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[15] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[16] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[17] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[18] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[19] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[20] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[21] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[22] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[23] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[24] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[25] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[26] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[27] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[28] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[29] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[30] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQ[31] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DM[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DM[1] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DM[2] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DM[3] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_p[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_p[1] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_p[2] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_p[3] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_n[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_n[1] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_n[2] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_DQS_n[3] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[1] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[2] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[3] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[4] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[5] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[6] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[7] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[8] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CA[9] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CKE[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CS_n[0] -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CK_p -tag __fpga_lpddr2_p0
set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to DDR2LP_CK_n -tag __fpga_lpddr2_p0


set_global_assignment -name USE_DLL_FREQUENCY_FOR_DQS_DELAY_CHAIN ON
