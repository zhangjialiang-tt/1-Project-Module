
#复位引脚
set_location_assignment	PIN_E15	-to i_rst_n

#时钟引脚 50M
set_location_assignment	PIN_E1	-to i_clk 


#SDRAM引脚
set_location_assignment	PIN_R5	-to dq[0]
set_location_assignment	PIN_T4	-to dq[1]
set_location_assignment	PIN_T3 -to dq[2]
set_location_assignment	PIN_R3	-to dq[3]
set_location_assignment	PIN_T2	-to dq[4]
set_location_assignment	PIN_R1	-to dq[5]
set_location_assignment	PIN_P2	-to dq[6]
set_location_assignment	PIN_P1	-to dq[7]
set_location_assignment	PIN_R13	-to dq[8]
set_location_assignment	PIN_T13 -to dq[9]
set_location_assignment	PIN_R12	-to dq[10]
set_location_assignment	PIN_T12	-to dq[11]
set_location_assignment	PIN_T10	-to dq[12]
set_location_assignment	PIN_R10	-to dq[13]
set_location_assignment	PIN_T11	-to dq[14]
set_location_assignment	PIN_R11	-to dq[15]

set_location_assignment	PIN_T8	-to addr[0]
set_location_assignment	PIN_P9	-to addr[1]
set_location_assignment	PIN_T9	-to addr[2]
set_location_assignment	PIN_R9	-to addr[3]
set_location_assignment	PIN_L16	-to addr[4]
set_location_assignment	PIN_L15	-to addr[5]
set_location_assignment	PIN_N16	-to addr[6]
set_location_assignment	PIN_N15	-to addr[7]
set_location_assignment	PIN_P16	-to addr[8]
set_location_assignment	PIN_P15	-to addr[9]
set_location_assignment	PIN_R8	-to addr[10]
set_location_assignment	PIN_R16	-to addr[11]
set_location_assignment	PIN_T15	-to addr[12]

set_location_assignment	PIN_R4	-to sdram_clk
set_location_assignment	PIN_R7	-to ba[0]
set_location_assignment	PIN_T7	-to ba[1]
set_location_assignment	PIN_T5	-to cas_n
set_location_assignment	PIN_R14	-to cke
set_location_assignment	PIN_R6	-to ras_n
set_location_assignment	PIN_N1	-to we_n
set_location_assignment	PIN_T6	-to cs_n
set_location_assignment	PIN_T14	-to dqm[1]
set_location_assignment	PIN_N2	-to dqm[0]

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to addr[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ba[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ba[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cke
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to sdram_clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dq[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dqm[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to dqm[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cas_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to cs_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ras_n
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to we_n



