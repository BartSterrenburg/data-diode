connect -url tcp:127.0.0.1:3121
targets -set -filter {name =~ "ARM*#0"}
catch {stop}
foreach addr {0xe000b000 0xe000b004 0xe000b008 0xe000b010 0xe000b020 0xe000b100 0xe000b150 0xe000b154 0xe000b158 0xf8000140} {puts [mrd $addr]}
foreach reg {0 1 2 3 4 5 9 10 17 26} {
 mwr 0xe000b034 [expr {0x60020000 | (1<<23) | ($reg<<18)}]
 after 5
 puts "PHY reg $reg: [mrd 0xe000b034]"
}
con
exit

