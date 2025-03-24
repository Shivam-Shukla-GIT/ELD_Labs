vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl/verilog" "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl" \
"../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/sim/vio_FA.v" \


vlog -work xil_defaultlib \
"glbl.v"

