// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Sep  5 09:51:46 2023
// Host        : DESKTOP-JTMDP5L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub f:/ELD2023/Lab3/Lab3.srcs/sources_1/ip/vio_count/vio_count_stub.v
// Design      : vio_count
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.1" *)
module vio_count(clk, probe_in0, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[7:0],probe_out0[0:0]" */;
  input clk;
  input [7:0]probe_in0;
  output [0:0]probe_out0;
endmodule
