`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 11:37:26 PM
// Design Name: 
// Module Name: max_tb
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


module max_tb(

    );
    reg clk = 1'b1;
    reg reset = 1'b0;
    reg [7:0] A;
    reg A_valid = 1'b1;
    wire [7:0] Max;
    max test (.clk(clk),.reset(reset),.A(A),.A_valid(A_valid),.Max(Max));
    
    always #2.5 clk = ~clk;
    initial
    begin
        A = 8'b00000001;#5;
        A = 8'b00000010;#5;
        A = 8'b00000001;#5;
        A = 8'b00000010;#5;
        A = 8'b00000011;#5;
        A = 8'b00000110;#5;
        A = 8'b00000001;#5;
        A = 8'b00000100;#5;
        A = 8'b00000101;#5;
        A = 8'b00000001;#5;

        A = 8'b00000100;#5;
        A = 8'b00000101;#5;
        A = 8'b00000010;#5;
        A = 8'b00000010;#5;
        A = 8'b00000001;#5;
        A = 8'b00001001;#5;
        A = 8'b00000000;reset = 1'b1;#5;
        A = 8'b00000001;reset = 1'b0;#5;
        A = 8'b00000101;#5;
        $finish;
    end
endmodule