`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 10:05:23 AM
// Design Name: 
// Module Name: Vio_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Vio_wrapper(
    input Clk_100M
    );
    
    wire Detect, Clear, Inp_0, Inp_1; 
    wire [2:0]FSM_state;
    
    vio_fs3 v1 (
  .clk(Clk_100M),                // input wire clk
  .probe_in0(Detect),    // input wire [0 : 0] probe_in0
  .probe_in1(FSM_state),    // input wire [2 : 0] probe_in1
  .probe_out0(Clear),  // output wire [0 : 0] probe_out0
  .probe_out1(Inp_0),  // output wire [0 : 0] probe_out1
  .probe_out2(Inp_1)  // output wire [0 : 0] probe_out2
);
    
    Top_fsm f1(.Clk_100M(Clk_100M), .Inp_0(Inp_0), .Inp_1(Inp_1), .Clr(Clear), .Detect(Detect),.FSM_state(FSM_state));
    
endmodule
