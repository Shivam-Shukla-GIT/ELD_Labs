// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Aug 31 21:53:23 2023
// Host        : DESKTOP-JTMDP5L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/ELD2023/Lab2_FA_HW/Lab2_FA_HW.srcs/sources_1/ip/vio_FA/vio_FA_stub.v
// Design      : vio_FA
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.1" *)
module vio_FA(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_out0, probe_out1, probe_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[4:0],probe_in1[0:0],probe_in2[0:0],probe_in3[0:0],probe_out0[3:0],probe_out1[3:0],probe_out2[0:0]" */;
  input clk;
  input [4:0]probe_in0;
  input [0:0]probe_in1;
  input [0:0]probe_in2;
  input [0:0]probe_in3;
  output [3:0]probe_out0;
  output [3:0]probe_out1;
  output [0:0]probe_out2;
endmodule
