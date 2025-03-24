#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1541
connect -path [list tcp::1541 tcp:192.168.226.142:62921]
source D:/Drive_D/ELD2023/Lab9/Lab9.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
loadhw -hw D:/Drive_D/ELD2023/Lab9/Lab9.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248722230"} -index 0
dow D:/Drive_D/ELD2023/Lab9/Lab9.sdk/Lab9/Debug/Lab9.elf
configparams force-mem-access 0
bpadd -addr &main
