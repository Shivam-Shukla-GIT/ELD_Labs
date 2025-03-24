vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl/verilog" "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl" \
"../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/sim/vio_fs3.v" \


vlog -work xil_defaultlib \
"glbl.v"

