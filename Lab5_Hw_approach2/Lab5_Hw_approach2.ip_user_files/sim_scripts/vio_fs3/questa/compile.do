vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl/verilog" "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl" \
"../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/sim/vio_fs3.v" \


vlog -work xil_defaultlib \
"glbl.v"

