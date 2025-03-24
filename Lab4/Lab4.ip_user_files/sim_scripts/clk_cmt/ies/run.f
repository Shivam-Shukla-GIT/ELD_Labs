-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab4.srcs/sources_1/ip/clk_cmt/clk_cmt_clk_wiz.v" \
  "../../../../Lab4.srcs/sources_1/ip/clk_cmt/clk_cmt.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

