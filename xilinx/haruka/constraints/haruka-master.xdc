## This file is a general .xdc for Haruka Rev. A
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal

set_property -dict { PACKAGE_PIN N11    IOSTANDARD LVCMOS33 } [get_ports { CLK50MHZ }]; #IO_L13P_T2_MRCC_14 Sch=clk[50]
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports { CLK50MHZ }];
create_clock -add -name JTCK        -period 100   -waveform {0 50} [get_ports { jtag_tck }];

##Switches

set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L10N_T1_D15_14  Sch=sw[0]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L10P_T1_D14_14  Sch=sw[1]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L12N_T1_MRCC_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN P13   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L11N_T1_SRCC_14 Sch=sw[3]

##RGB LEDs

set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L15N_T2_DQS_35   Sch=led0_b
set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L15P_T2_DQS_35   Sch=led0_g
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L14P_T2_SRCC_35  Sch=led0_r
set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L10N_T1_AD15N_35 Sch=led1_b
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L10P_T1_AD15P_35 Sch=led1_g
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L11P_T1_SRCC_35  Sch=led1_r
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { led2_b }]; #IO_L17P_T2_35       Sch=led2_b
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { led2_g }]; #IO_L14N_T2_SRCC_35  Sch=led2_g
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { led2_r }]; #IO_L17N_T2_35       Sch=led2_r
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { led3_b }]; #IO_L13P_T2_MRCC_35  Sch=led3_b
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { led3_g }]; #IO_L11N_T1_SRCC_35  Sch=led3_g
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { led3_r }]; #IO_L13N_T2_MRCC_35  Sch=led3_r

##LEDs

set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L8P_T1_AD14P_35    Sch=led[4]
set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L8N_T1_AD14N_35    Sch=led[5]
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L9P_T1_DQS_AD7P_35 Sch=led[6]
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L9N_T1_DQS_AD7N_35 Sch=led[7]

##Buttons

set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L12P_T1_MRCC_35 Sch=btn[0]
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L12N_T1_MRCC_35 Sch=btn[1]
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L7P_T1_AD6P_35  Sch=btn[2]
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L7N_T1_AD6N_35  Sch=btn[3]

##Pmod Header JA

set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L16N_T2_35      Sch=ja[1]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L19N_T3_VREF_35 Sch=ja[2]
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L2N_T0_AD12N_35 Sch=ja[3]
set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L1N_T0_AD4N_35  Sch=ja[4]
set_property -dict { PACKAGE_PIN G5    IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L16P_T2_35      Sch=ja[7]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L19P_T3_35      Sch=ja[8]
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L2P_T0_AD12P_35 Sch=ja[9]
set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L1P_T0_AD4P_35  Sch=ja[10]

##Pmod Header JB

#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L21P_T3_DQS_35  Sch=jb_p[1]
#set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L21N_T3_DQS_35  Sch=jb_n[1]
#set_property -dict { PACKAGE_PIN L4    IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L1P_T0_34       Sch=jb_p[2]
#set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L1N_T0_34       Sch=jb_n[2]
#set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L24P_T3_35      Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L24N_T3_35      Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L3P_T0_DQS_34   Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L3N_T0_DQS_34   Sch=jb_n[4]

##Pmod Header JC

set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L20P_T3_35      Sch=jc_p[1]
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L20N_T3_35      Sch=jc_n[1]
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L23P_T3_35      Sch=jc_p[2]
set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L23N_T3_35      Sch=jc_n[2]
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L22P_T3_35      Sch=jc_p[3]
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L22N_T3_35      Sch=jc_n[3]
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L18P_T2_35      Sch=jc_p[4]
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L18N_T2_35      Sch=jc_n[4]

##Pmod Header JD

#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { jd[0] }]; #IO_L4N_T0_35          Sch=jd[1]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { jd[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { jd[2] }]; #IO_L6N_T0_VREF_35     Sch=jd[3]
#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { jd[3] }]; #IO_L5N_T0_AD13N_35    Sch=jd[4]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { jd[4] }]; #IO_L4P_T0_35          Sch=jd[7]
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { jd[5] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN D6    IOSTANDARD LVCMOS33 } [get_ports { jd[6] }]; #IO_L6P_T0_35          Sch=jd[9]
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { jd[7] }]; #IO_L5P_T0_AD13P_35    Sch=jd[10]

##USB-UART Interface

set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { uart_rxd_out }]; #IO_L5P_T0_D06_14   Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN P11   IOSTANDARD LVCMOS33 } [get_ports { uart_txd_in }]; #IO_L14N_T2_SRCC_14  Sch=uart_txd_in

##ChipKit Digital I/O

set_property -dict { PACKAGE_PIN N9    IOSTANDARD LVCMOS33 } [get_ports { ck_io[0] }]; #IO_L18P_T2_A12_D28_14        Sch=ck_io[0]
set_property -dict { PACKAGE_PIN P9    IOSTANDARD LVCMOS33 } [get_ports { ck_io[1] }]; #IO_L18N_T2_A11_D27_14        Sch=ck_io[1]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { ck_io[2] }]; #IO_L22N_T3_A04_D20_14        Sch=ck_io[2]
set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { ck_io[3] }]; #IO_L17N_T2_A13_D29_14        Sch=ck_io[3]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { ck_io[4] }]; #IO_L22P_T3_A05_D21_14        Sch=ck_io[4]
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { ck_io[5] }]; #IO_L17P_T2_A14_D30_14        Sch=ck_io[5]
set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS33 } [get_ports { ck_io[6] }]; #IO_L21N_T3_DQS_A06_D22_14    Sch=ck_io[6]
set_property -dict { PACKAGE_PIN R8    IOSTANDARD LVCMOS33 } [get_ports { ck_io[7] }]; #IO_L20N_T3_A07_D23_14        Sch=ck_io[7]
set_property -dict { PACKAGE_PIN T7    IOSTANDARD LVCMOS33 } [get_ports { ck_io[8] }]; #IO_L21P_T3_DQS_14            Sch=ck_io[8]
set_property -dict { PACKAGE_PIN R7    IOSTANDARD LVCMOS33 } [get_ports { ck_io[9] }]; #IO_L24N_T3_A00_D16_14        Sch=ck_io[9]
set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[10] }]; #IO_L23N_T3_A02_D18_14       Sch=ck_io[10]
set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { ck_io[11] }]; #IO_L24P_T3_A01_D17_14       Sch=ck_io[11]
set_property -dict { PACKAGE_PIN P6    IOSTANDARD LVCMOS33 } [get_ports { ck_io[12] }]; #IO_25_14                    Sch=ck_io[12]
set_property -dict { PACKAGE_PIN R5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[13] }]; #IO_L23P_T3_A03_D19_14       Sch=ck_io[13]
set_property -dict { PACKAGE_PIN N6    IOSTANDARD LVCMOS33 } [get_ports { ck_io[14] }]; #IO_L19N_T3_A09_D25_VREF_14  Sch=ck_io[14]
set_property -dict { PACKAGE_PIN M6    IOSTANDARD LVCMOS33 } [get_ports { ck_io[15] }]; #IO_L19P_T3_A10_D26_14       Sch=ck_io[15]
set_property -dict { PACKAGE_PIN L5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[16] }]; #IO_0_34                     Sch=ck_io[16]
set_property -dict { PACKAGE_PIN P5    IOSTANDARD LVCMOS33 } [get_ports { ck_io[17] }]; #IO_L10P_T1_34               Sch=ck_io[17]
set_property -dict { PACKAGE_PIN T4    IOSTANDARD LVCMOS33 } [get_ports { ck_io[18] }]; #IO_L9P_T1_DQS_34            Sch=ck_io[18]
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports { ck_io[19] }]; #IO_L9N_T1_DQS_34            Sch=ck_io[19]

## ChipKit signals
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L9N_T1_DQS_D13_14           Sch=ck_rst

## ChipKit SPI

set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L8N_T1_34  Sch=ck_miso
set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports { ck_mosi }]; #IO_L8P_T1_34  Sch=ck_mosi
set_property -dict { PACKAGE_PIN R1    IOSTANDARD LVCMOS33 } [get_ports { ck_sck }]; #IO_L7N_T1_34   Sch=ck_sck
set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports { ck_ss }]; #IO_L7P_T1_34    Sch=ck_ss

##Quad SPI Flash

set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }]; #IO_L5N_T0_D07_14              Sch=qspi_cs
set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L15P_T2_DQS_RDWR_B_14   Sch=qspi_dq[0]
set_property -dict { PACKAGE_PIN N12   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L13N_T2_MRCC_14         Sch=qspi_dq[1]
set_property -dict { PACKAGE_PIN K12   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_0_14                    Sch=qspi_dq[2]
set_property -dict { PACKAGE_PIN P10   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L14P_T2_SRCC_14         Sch=qspi_dq[3]
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { qspi_sck }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=qspi_sck

##JTAG
set_property -dict { PACKAGE_PIN N13   IOSTANDARD LVCMOS33 } [get_ports { jtag_tdo }]; #IO_L11P_T1_SRCC_14    Sch=jtag_tdo
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { jtag_trst }]; #IO_L8P_T1_D11_14     Sch=jtag_trst_n
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { jtag_tck }]; #IO_L12P_T1_MRCC_14    Sch=jtag_tck
set_property -dict { PACKAGE_PIN M12   IOSTANDARD LVCMOS33 } [get_ports { jtag_tdi }]; #IO_L6N_T0_D08_VREF_14 Sch=jtag_tdi
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { jtag_tms }]; #IO_L7N_T1_D10_14      Sch=jtag_tms
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { jtag_srst }]; #IO_L8N_T1_D12_14     Sch=jtag_srst_n