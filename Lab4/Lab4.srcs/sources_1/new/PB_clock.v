`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 09:42:08 AM
// Design Name: 
// Module Name: PB_clock
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


module PB_clock(
    input Clk_1Hz,
    input Inp_0,
    input Inp_1,
    output reg Clk_pb
    );
    
    wire pb_pulse;
    assign pb_pulse = Inp_1 || Inp_0;
    
    always@(posedge Clk_1Hz)
        Clk_pb <= pb_pulse; 
endmodule

    
