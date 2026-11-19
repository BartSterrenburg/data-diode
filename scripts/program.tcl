set root [file normalize [file join [file dirname [info script]] ..]]
connect -url tcp:127.0.0.1:3121
targets -set -filter {name =~ "APU"}
rst -system
after 1000
targets -set -filter {name =~ "xc7z020"}
fpga -file $root/release/tcp_led.bit
targets -set -filter {name =~ "ARM*#0"}
stop
source $root/release/ps7_init.tcl
ps7_init
ps7_post_config
loadhw -hw $root/release/tcp_led.xsa -mem-ranges [list {0x40000000 0x4000ffff}]
dow $root/release/tcp_led.elf
con
puts "ARM running; TCP server should become available at 192.168.2.2:5001"
exit
