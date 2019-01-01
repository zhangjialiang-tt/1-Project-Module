## Generated SDC file "sdram_demo3.sdc"

## Copyright (C) 1991-2009 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 9.1 Build 222 10/21/2009 SJ Full Version"

## DATE    "Thu Jan 24 16:51:08 2013"

##
## DEVICE  "EP2C8Q208C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {i_clk} -period 50.000 -waveform { 0.000 25.000 } [get_ports {i_clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks
create_generated_clock -name sdram_clk -source [get_nets {U1|altpll_component|_clk1}] [get_ports {sdram_clk}]


#**************************************************************
# Set Clock Latency
#**************************************************************

set_clock_latency -source   0.022 [get_clocks {i_clk}]
set_clock_latency -source   0.158 [get_clocks {sdram_clk}]


#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[0]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[0]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[1]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[1]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[2]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[2]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[3]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[3]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[4]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[4]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[5]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[5]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[6]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[6]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[7]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[7]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[8]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[8]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[9]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[9]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[10]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[10]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[11]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[11]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[12]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[12]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[13]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[13]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[14]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[14]}]
set_input_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[15]}]
set_input_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[15]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[0]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[0]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[1]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[1]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[2]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[2]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[3]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[3]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[4]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[4]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[5]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[5]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[6]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[6]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[7]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[7]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[8]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[8]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[9]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[9]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[10]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[10]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[11]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[11]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[12]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[12]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.218 [get_ports {addr[13]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.172 [get_ports {addr[13]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.227 [get_ports {cas_n}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.156 [get_ports {cas_n}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.227 [get_ports {cs_n}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.156 [get_ports {cs_n}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.227 [get_ports {ras_n}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.156 [get_ports {ras_n}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.227 [get_ports {we_n}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.156 [get_ports {we_n}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.227 [get_ports {cke}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.156 [get_ports {cke}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[0]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[0]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[1]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[1]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[2]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[2]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[3]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[3]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[4]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[4]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[5]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[5]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[6]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[6]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[7]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[7]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[8]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[8]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[9]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[9]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[10]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[10]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[11]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[11]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[12]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[12]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[13]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[13]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[14]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[14]}]
set_output_delay -add_delay -max -clock [get_clocks {sdram_clk}]  0.136 [get_ports {dq[15]}]
set_output_delay -add_delay -min -clock [get_clocks {sdram_clk}]  0.068 [get_ports {dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {sdram_clk}]  0.149 [get_ports {dqm[1]}]
set_output_delay -add_delay  -clock [get_clocks {sdram_clk}]  0.152 [get_ports {dqm[0]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

