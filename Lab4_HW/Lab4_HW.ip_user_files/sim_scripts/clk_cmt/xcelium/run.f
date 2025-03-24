-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Lab4_HW.srcs/sources_1/ip/clk_cmt/clk_cmt_clk_wiz.v" \
  "../../../../Lab4_HW.srcs/sources_1/ip/clk_cmt/clk_cmt.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

