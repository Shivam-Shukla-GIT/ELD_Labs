-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_processing_system7_0_0/sim/design_fft_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_13 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_21 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_12 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_20 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axi_dma_0_0/sim/design_fft_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/sim/bd_18ef.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_0/sim/bd_18ef_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_1/sim/bd_18ef_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_2/sim/bd_18ef_arsw_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_3/sim/bd_18ef_rsw_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_4/sim/bd_18ef_awsw_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_5/sim/bd_18ef_wsw_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_6/sim/bd_18ef_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_7/sim/bd_18ef_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_8/sim/bd_18ef_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_9/sim/bd_18ef_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_10/sim/bd_18ef_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_11/sim/bd_18ef_sarn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_12/sim/bd_18ef_srn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_13/sim/bd_18ef_s01mmu_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_14/sim/bd_18ef_s01tr_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_15/sim/bd_18ef_s01sic_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_16/sim/bd_18ef_s01a2s_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_17/sim/bd_18ef_sawn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_18/sim/bd_18ef_swn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_19/sim/bd_18ef_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_20/sim/bd_18ef_m00s2a_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_21/sim/bd_18ef_m00arn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_22/sim/bd_18ef_m00rn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_23/sim/bd_18ef_m00awn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_24/sim/bd_18ef_m00wn_0.sv" \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_25/sim/bd_18ef_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/bd_0/ip/ip_26/sim/bd_18ef_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axi_smc_0/sim/design_fft_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_rst_ps7_0_100M_0/sim/design_fft_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_13 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/cbe4/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_mux_bit_v12_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_shift_ram_v12_0_13 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/cd8a/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_15 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cmpy_v6_0_17 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/5204/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_0_16 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/e8d9/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xfft_v9_1_2 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/3c11/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_xfft_0_0/sim/design_fft_xfft_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_xlconstant_0_0/sim/design_fft_xlconstant_0_0.v" \
  "../../../bd/design_fft/ip/design_fft_xlconstant_0_1/sim/design_fft_xlconstant_0_1.v" \
  "../../../bd/design_fft/sim/design_fft.v" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_8 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_floating_point_0_0/sim/design_fft_floating_point_0_0.vhd" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_register_slice_v1_1_19 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/635c/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_dwidth_converter_v1_1_18 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/7d46/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_axis_dwidth_converter_0_0/sim/design_fft_axis_dwidth_converter_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../Lab10_HW.srcs/sources_1/bd/design_fft/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_fft/ip/design_fft_auto_pc_0/sim/design_fft_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

