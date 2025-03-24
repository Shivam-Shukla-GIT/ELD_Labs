// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep 21 15:57:20 2023
// Host        : DESKTOP-JTMDP5L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/ELD2023/Lab5_Hw_approach2/Lab5_Hw_approach2.srcs/sources_1/ip/vio_fs3/vio_fs3_stub.v
// Design      : vio_fs3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.1" *)
module vio_fs3(clk, probe_in0, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[3:0],probe_out0[0:0]" */;
  input clk;
  input [3:0]probe_in0;
  output [0:0]probe_out0;
endmodule
