`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 09:34:15 PM
// Design Name: 
// Module Name: adder_sub_tb
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


module adder_sub_tb(

    );
    reg [3:0] InA, InB;
    wire [4:0] OutSum;
    wire C;
    reg InM;
    wire V;
    wire SumisZero;
    
    top_adder tb0(.InA(InA), .InB(InB), .OutSum(OutSum),.InM(InM),.V(V),.C(C),.SumisZero(SumisZero));

    initial begin
        
        // Test cases for subtraction (M = 1)
        InA = 4'b0000; InB = 4'b0000; InM = 1'b1;
        #5 InA = 4'b0100; InB = 4'b0110; InM = 1'b1;
        #5 InA = 4'b0101; InB = 4'b0111; InM = 1'b1;
        
        // Test cases for addition (M = 0)
        #5 InA = 4'b0000; InB = 4'b0000; InM = 1'b0;
        #5 InA = 4'b1111; InB = 4'b0000;  InM = 1'b0;
        #5 InA = 4'b0101; InB = 4'b0001;  InM = 1'b0;

    end
endmodule
