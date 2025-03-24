vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl/verilog" "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl" \
"../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/sim/vio_FA.v" \


vlog -work xil_defaultlib \
"glbl.v"

