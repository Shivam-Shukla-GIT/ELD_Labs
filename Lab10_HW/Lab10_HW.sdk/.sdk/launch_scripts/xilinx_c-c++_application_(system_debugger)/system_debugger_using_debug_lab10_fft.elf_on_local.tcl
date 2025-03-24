connect -url tcp:127.0.0.1:3121
source D:/Drive_D/ELD2023/Lab10_HW/Lab10_HW.sdk/design_fft_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722900"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248722900" && level==0} -index 1
fpga -file D:/Drive_D/ELD2023/Lab10_HW/Lab10_HW.sdk/design_fft_wrapper_hw_platform_0/design_fft_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722900"} -index 0
loadhw -hw D:/Drive_D/ELD2023/Lab10_HW/Lab10_HW.sdk/design_fft_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722900"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248722900"} -index 0
dow D:/Drive_D/ELD2023/Lab10_HW/Lab10_HW.sdk/Lab10_fft/Debug/Lab10_fft.elf
configparams force-mem-access 0
bpadd -addr &main
