-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab3.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt_clk_wiz.v" \
  "../../../../Lab3.srcs/sources_1/ip/clk_div_cmt/clk_div_cmt.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

