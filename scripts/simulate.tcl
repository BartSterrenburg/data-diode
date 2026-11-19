set root [file normalize [file join [file dirname [info script]] ..]]
create_project sim_led $root/build/sim -part xc7z020clg400-2 -force
add_files [list $root/rtl/led_registers.vhd]
add_files -fileset sim_1 [list $root/sim/tb_led_registers.vhd]
set_property file_type {VHDL 2008} [get_files *.vhd]
set_property top tb_led_registers [get_filesets sim_1]
launch_simulation
run all
close_sim
