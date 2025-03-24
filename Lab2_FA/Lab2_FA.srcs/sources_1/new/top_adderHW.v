`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2023 09:52:43 AM
// Design Name: 
// Module Name: top_adderHW
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


module top_adderHW(
    input Clock
    );
    wire [3:0] InA, InB;
    wire [4:0] OutSum;
    
    vio_FA v1(
  .clk(Clock),                // input wire clk
  .probe_in0(OutSum),    // input wire [4 : 0] OutSum
  .probe_out0(InA),  // output wire [3 : 0] InA
  .probe_out1(InB)  // output wire [3 : 0] InB
    );
    
    top_adder ta(.InA(InA),.InB(InB),.OutSum(OutSum));
    
endmodule
