set root [file normalize [file join [file dirname [info script]] ..]]
create_project tcp_led $root/build/vivado -part xc7z020clg400-2 -force
set_property target_language VHDL [current_project]
add_files [list $root/rtl/led_registers.vhd]
create_bd_design system
set ps [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7]
set_property -dict [list \
 CONFIG.PCW_USE_M_AXI_GP0 {1} \
 CONFIG.PCW_EN_CLK0_PORT {1} \
 CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
 CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
 CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
 CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
 CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
 CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
 CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
 CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
 CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
 CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
 CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
 CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
 CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K256M16 RE-125} \
 CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
 CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {400} \
 CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
 CONFIG.PCW_TTC0_TTC0_IO {EMIO}] $ps
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} $ps
set regs [create_bd_cell -type module -reference led_registers regs]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/ps7/M_AXI_GP0" Clk_master "/ps7/FCLK_CLK0 (100 MHz)" Clk_slave "/ps7/FCLK_CLK0 (100 MHz)" Clk_xbar "/ps7/FCLK_CLK0 (100 MHz)"} [get_bd_intf_pins regs/s_axi]
make_bd_pins_external [get_bd_pins regs/led_n]
set_property name led_n [get_bd_ports led_n_0]
assign_bd_address
set seg [get_bd_addr_segs ps7/Data/SEG_regs*]
set_property offset 0x40000000 $seg
set_property range 64K $seg
validate_bd_design
save_bd_design
make_wrapper -files [get_files system.bd] -top
add_files [list $root/build/vivado/tcp_led.gen/sources_1/bd/system/hdl/system_wrapper.vhd]
set_property top system_wrapper [current_fileset]
set xdc $root/constraints.xdc
add_files -fileset constrs_1 [list $xdc]
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} {error "Implementation failed"}
open_run impl_1
report_timing_summary -file $root/reports/timing.rpt
report_drc -file $root/reports/drc.rpt
report_utilization -file $root/reports/utilization.rpt
file mkdir $root/release
write_hw_platform -fixed -include_bit -force -file $root/release/tcp_led.xsa
file copy -force $root/build/vivado/tcp_led.runs/impl_1/system_wrapper.bit $root/release/tcp_led.bit

file copy -force $root/build/vivado/tcp_led.gen/sources_1/bd/system/ip/system_ps7_0/ps7_init.tcl $root/release/ps7_init.tcl
