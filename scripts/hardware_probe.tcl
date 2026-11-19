set root [file normalize [file join [file dirname [info script]] ..]]
connect -url tcp:127.0.0.1:3121
# Select live target names, never a stored cable serial number.
targets -set -filter {name =~ "APU"}
rst -system
after 1000
targets -set -filter {name =~ "xc7z020"}
fpga -file $root/release/tcp_led.bit
targets -set -filter {name =~ "ARM*#0"}
stop
source $root/build/vivado/tcp_led.gen/sources_1/bd/system/ip/system_ps7_0/ps7_init.tcl
ps7_init
ps7_post_config
loadhw -hw $root/release/tcp_led.xsa -mem-ranges [list {0x40000000 0x4000ffff}]
puts "PS initialized; testing DDR and AXI registers"
foreach addr {0x00100000 0x01000000 0x10000000 0x1ffff000} {
 foreach value {0x55aa55aa 0xaa55aa55 0x00000000 0xffffffff} {
  mwr $addr $value
  set got [mrd -value $addr]
  if {$got != $value} {error "DDR mismatch at $addr: $got"}
 }
}
puts "DDR sample test PASS"
puts [mrd 0x40000000 5]
mwr 0x40000004 1
after 10
puts [mrd 0x40000000 5]
mwr 0x40000004 0
after 10
puts [mrd 0x40000000 5]
puts "AXI test completed; LED commanded OFF"
exit
