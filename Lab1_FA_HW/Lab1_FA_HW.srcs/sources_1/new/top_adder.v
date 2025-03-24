`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 09:01:34 PM
// Design Name: 
// Module Name: top_adder
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


module top_adder(
    input [3:0] InA,
    input [3:0] InB,
    input InM,
    output [4:0] OutSum,
    output C,
    output V,
    output SumisZero
    );
    
    wire carry1, carry2, carry3;
   
    full_adder_1bit in0(.FA1_InA(InA[0]),.FA1_InB(InB[0]^InM),.FA1_InC(InM),.FA1_InM(InM),.FA1_OutSum(OutSum[0]),.FA1_OutC(carry1));
    full_adder_1bit in1(.FA1_InA(InA[1]),.FA1_InB(InB[1]^InM),.FA1_InC(carry1),.FA1_InM(InM),.FA1_OutSum(OutSum[1]),.FA1_OutC(carry2));
    full_adder_1bit in2(.FA1_InA(InA[2]),.FA1_InB(InB[2]^InM),.FA1_InC(carry2),.FA1_InM(InM),.FA1_OutSum(OutSum[2]),.FA1_OutC(carry3));
    full_adder_1bit in3(.FA1_InA(InA[3]),.FA1_InB(InB[3]^InM),.FA1_InC(carry3),.FA1_InM(InM),.FA1_OutSum(OutSum[3]),.FA1_OutC(OutSum[4]));
        
    assign V = OutSum[4] ^ carry3;
    assign C = OutSum[4];
    assign SumisZero = (OutSum == 5'b10000)|| (OutSum == 5'b00000);
//    always@(*) begin
//    if (OutSum == 4'b0000)
//     SumisZero = 1'b1;
//    else 
//    SumisZero = 1'b0;
//    end
endmodule
