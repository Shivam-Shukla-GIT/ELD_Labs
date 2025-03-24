vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab3_HW.srcs/sources_1/ip/vio_count/hdl/verilog" "+incdir+../../../../Lab3_HW.srcs/sources_1/ip/vio_count/hdl" \
"../../../../Lab3_HW.srcs/sources_1/ip/vio_count/sim/vio_count.v" \


vlog -work xil_defaultlib \
"glbl.v"

