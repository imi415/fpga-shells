## This file is a general .xdc for Haruka Rev. A
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal

set_property -dict {PACKAGE_PIN N11 IOSTANDARD LVCMOS33} [get_ports CLK50MHZ]
create_clock -period 20.000 -name sys_clk_pin -waveform {0.000 10.000} -add [get_ports CLK50MHZ]
create_clock -period 100.000 -name JTCK -waveform {0.000 50.000} -add [get_ports jtag_tck]

##Switches

set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports sw_0]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports sw_1]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports sw_2]
set_property -dict {PACKAGE_PIN P13 IOSTANDARD LVCMOS33} [get_ports sw_3]

##RGB LEDs

set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports led0_b]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports led0_g]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports led0_r]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports led1_b]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports led1_g]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports led1_r]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports led2_b]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports led2_g]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports led2_r]
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { led3_b }]; #IO_L13P_T2_MRCC_35  Sch=led3_b
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { led3_g }]; #IO_L11N_T1_SRCC_35  Sch=led3_g
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { led3_r }]; #IO_L13N_T2_MRCC_35  Sch=led3_r

##LEDs

set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports led_0]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports led_1]
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports led_2]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports led_3]

##Buttons

set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports btn_0]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports btn_1]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS33} [get_ports btn_2]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports btn_3]

##Pmod Header JA

set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports ja_0]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports ja_1]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports ja_2]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports ja_3]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS33} [get_ports ja_4]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports ja_5]
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports ja_6]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports ja_7]

##Pmod Header JB

#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { jb_0 }]; #IO_L21P_T3_DQS_35  Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { jb_1 }]; #IO_L21N_T3_DQS_35  Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports { jb_2 }]; #IO_L1P_T0_34       Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { jb_3 }]; #IO_L1N_T0_34       Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { jb_4 }]; #IO_L24P_T3_35      Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { jb_5 }]; #IO_L24N_T3_35      Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { jb_6 }]; #IO_L3P_T0_DQS_34   Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { jb_7 }]; #IO_L3N_T0_DQS_34   Sch=jb_n[4]

##Pmod Header JC

set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports jc_0]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports jc_1]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports jc_2]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports jc_3]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports jc_4]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports jc_5]
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports jc_6]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports jc_7]

##Pmod Header JD

#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { jd_0 }]; #IO_L4N_T0_35          Sch=jd_1
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { jd_1 }]; #IO_L3N_T0_DQS_AD5N_35 Sch=jd_2
#set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { jd_2 }]; #IO_L6N_T0_VREF_35     Sch=jd_3
#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { jd_3 }]; #IO_L5N_T0_AD13N_35    Sch=jd_4
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { jd_4 }]; #IO_L4P_T0_35          Sch=jd_7
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { jd_5 }]; #IO_L3P_T0_DQS_AD5P_35 Sch=jd_8
#set_property -dict { PACKAGE_PIN D6    IOSTANDARD LVCMOS33 } [get_ports { jd_6 }]; #IO_L6P_T0_35          Sch=jd_9
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { jd_7 }]; #IO_L5P_T0_AD13P_35    Sch=jd_10

##USB-UART Interface

set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports uart0_rxd_out]
set_property -dict {PACKAGE_PIN P11 IOSTANDARD LVCMOS33} [get_ports uart0_txd_in]

##ChipKit Digital I/O

set_property -dict {PACKAGE_PIN N9 IOSTANDARD LVCMOS33} [get_ports ck_io_0]
set_property -dict {PACKAGE_PIN P9 IOSTANDARD LVCMOS33} [get_ports ck_io_1]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports ck_io_2]
set_property -dict {PACKAGE_PIN R11 IOSTANDARD LVCMOS33} [get_ports ck_io_3]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports ck_io_4]
set_property -dict {PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports ck_io_5]
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports ck_io_6]
set_property -dict {PACKAGE_PIN R8 IOSTANDARD LVCMOS33} [get_ports ck_io_7]
set_property -dict {PACKAGE_PIN T7 IOSTANDARD LVCMOS33} [get_ports ck_io_8]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS33} [get_ports ck_io_9]
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVCMOS33} [get_ports ck_io_10]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports ck_io_11]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS33} [get_ports ck_io_12]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVCMOS33} [get_ports ck_io_13]
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS33} [get_ports ck_io_14]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33} [get_ports ck_io_15]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports ck_io_16]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports ck_io_17]
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS33} [get_ports ck_io_18]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports ck_io_19]

## ChipKit signals
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports ck_rst]

## ChipKit SPI

set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports ck_miso]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports ck_mosi]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports ck_sck]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports ck_ss]

##Quad SPI Flash

set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports qspi_cs]
set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports qspi_dq_0]
set_property -dict {PACKAGE_PIN N12 IOSTANDARD LVCMOS33} [get_ports qspi_dq_1]
set_property -dict {PACKAGE_PIN K12 IOSTANDARD LVCMOS33} [get_ports qspi_dq_2]
set_property -dict {PACKAGE_PIN P10 IOSTANDARD LVCMOS33} [get_ports qspi_dq_3]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports qspi_sck]

##JTAG
set_property -dict {PACKAGE_PIN N13 IOSTANDARD LVCMOS33} [get_ports jtag_tdo]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports jtag_trst]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports jtag_tck]
set_property -dict {PACKAGE_PIN M12 IOSTANDARD LVCMOS33} [get_ports jtag_tdi]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports jtag_tms]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports jtag_srst]

set_clock_groups -asynchronous \
  -group [list \
     [get_clocks -include_generated_clocks -of_objects [get_ports jtag_tck]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT0]]] \
  -group [list \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT1]] \
     [get_clocks -of_objects [get_pins ip_mmcm/inst/mmcm_adv_inst/CLKOUT2]]]
