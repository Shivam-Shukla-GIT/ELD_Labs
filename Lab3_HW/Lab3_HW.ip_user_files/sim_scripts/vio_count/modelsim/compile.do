vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Lab3_HW.srcs/sources_1/ip/vio_count/hdl/verilog" "+incdir+../../../../Lab3_HW.srcs/sources_1/ip/vio_count/hdl" \
"../../../../Lab3_HW.srcs/sources_1/ip/vio_count/sim/vio_count.v" \


vlog -work xil_defaultlib \
"glbl.v"

