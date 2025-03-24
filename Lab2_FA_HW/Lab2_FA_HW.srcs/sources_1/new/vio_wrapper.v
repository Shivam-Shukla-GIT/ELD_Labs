`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2023 09:56:16 PM
// Design Name: 
// Module Name: vio_wrapper
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


module vio_wrapper(
    input Clk
    );
    
    wire [3:0] InA, InB;
    wire [4:0] OutSum;
    wire C, V, SumisZero, InM;
    
    vio_FA v1 (
  .clk(Clk),                // input wire clk
  .probe_in0(OutSum),    // input wire [4 : 0] OutSum
  .probe_in1(C),    // input wire [0 : 0] C 'C is carry4/high when OutSum is negative'
  .probe_in2(V),    // input wire [0 : 0] V  'V is overflow'
  .probe_in3(SumisZero),    // input wire [0 : 0] SumisZero 'SumisZero is flag when sum comes out to be zero'
  .probe_out0(InA),  // output wire [3 : 0] InC
  .probe_out1(InB),  // output wire [3 : 0] InB
  .probe_out2(InM)  // output wire [0 : 0] InM
);
    
    top_adder ta(.InA(InA),.InB(InB),.InM(InM),.OutSum(OutSum),.C(C),.V(V),.SumisZero(SumisZero));
    
endmodule
