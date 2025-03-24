vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl/verilog" "+incdir+../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/hdl" \
"../../../../Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/sim/vio_fs3.v" \


vlog -work xil_defaultlib \
"glbl.v"

