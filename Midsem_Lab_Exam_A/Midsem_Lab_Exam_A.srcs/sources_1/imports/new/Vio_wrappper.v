`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:53:15 AM
// Design Name: 
// Module Name: Vio_wrappper
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


module Vio_wrappper(
    input Clk_100M
    );
    
    wire Clear; 
    wire [8:0]FSM_state;
    wire Detect;
    
    vio_0 v1 (
  .clk(Clk_100M),                // input wire clk
  .probe_in0(FSM_state), 
  .probe_in1(Detect),   
  .probe_out0(Clear)  // output wire [0 : 0] probe_out0
);
    
    top_counter f1(.Clk_100M(Clk_100M), .Clr(Clear),.FSM_state(FSM_state),.Detect(Detect));
    
endmodule
