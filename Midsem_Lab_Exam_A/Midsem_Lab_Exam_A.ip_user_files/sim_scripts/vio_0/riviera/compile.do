vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Midsem_Lab_Exam_A.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Midsem_Lab_Exam_A.srcs/sources_1/ip/vio_0/hdl" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Midsem_Lab_Exam_A.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../Midsem_Lab_Exam_A.srcs/sources_1/ip/vio_0/hdl" \
"../../../../Midsem_Lab_Exam_A.srcs/sources_1/ip/vio_0/sim/vio_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

