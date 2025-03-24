`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 11:21:24 PM
// Design Name: 
// Module Name: max
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


module max(
    input clk,
    input A_valid,
    input reset,
    input [7:0] A,
    output reg [7:0] Max
);

    reg [7:0] in1 = 8'b00000000;
    reg [7:0] in2 = 8'b00000000;
    reg [7:0] in3 = 8'b00000000;
    reg [7:0] in4 = 8'b00000000;
    reg [7:0] in5 = 8'b00000000;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            in1 <= 8'b00000000;
            in2 <= 8'b00000000;
            in3 <= 8'b00000000;
            in4 <= 8'b00000000;
            in5 <= 8'b00000000;
            // Do not update max during reset
        end else if (A_valid) begin
            in1 <= A;
            in2 <= in1;
            in3 <= in2;
            in4 <= in3;
            in5 <= in4;
        end
    end

    // Asynchronous assignment of max
    always @(*) begin
        if (in1 >= in2 && in1 >= in3 && in1 >= in4 && in1 >= in5) begin
            Max = in1;
        end else if (in2 >= in1 && in2 >= in3 && in2 >= in4 && in2 >= in5) begin
            Max = in2;
        end else if (in3 >= in1 && in3 >= in2 && in3 >= in4 && in3 >= in5) begin
            Max = in3;
        end else if (in4 >= in1 && in4 >= in2 && in4 >= in3 && in4 >= in5) begin
            Max = in4;
        end else begin
            Max = in5;
        end
    end

endmodule
