#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.226.142:60385]
source D:/Drive_D/ELD2023/Endsem2021/Endsem2021.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78181A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A78181A" && level==0} -index 1
fpga -file D:/Drive_D/ELD2023/Endsem2021/Endsem2021.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78181A"} -index 0
loadhw -hw D:/Drive_D/ELD2023/Endsem2021/Endsem2021.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78181A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78181A"} -index 0
dow D:/Drive_D/ELD2023/Endsem2021/Endsem2021.sdk/endsem2021/Debug/endsem2021.elf
configparams force-mem-access 0
bpadd -addr &main
