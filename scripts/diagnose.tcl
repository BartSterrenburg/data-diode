set root [file normalize [file join [file dirname [info script]] ..]]
source $root/release/diagnostic_symbols.tcl
connect -url tcp:127.0.0.1:3121
targets -set -filter {name =~ "ARM*#0"}
catch {stop}
try {
 puts [rrd pc]
 puts "Stage (5=TCP server running): [mrd $diagnostic_stage]"
 puts "Heartbeat: [mrd $diagnostic_heartbeat]"
 puts "FPGA version: [mrd $diagnostic_version]"
 loadhw -hw $root/release/tcp_led.xsa -mem-ranges [list {0x40000000 0x4000ffff}]
 puts [mrd 0x40000000 5]
} finally {con}
exit
