vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl/verilog" "+incdir+../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/hdl" \
"../../../../Lab2_FA.srcs/sources_1/ip/vio_FA/sim/vio_FA.v" \


vlog -work xil_defaultlib \
"glbl.v"

