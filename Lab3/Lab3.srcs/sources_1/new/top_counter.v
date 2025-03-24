`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:40:31 AM
// Design Name: 
// Module Name: top_counter
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


module top_counter(
    input Clk_100M,
    input reset,
    output [7:0] Count
    );
    
    wire Clk_8M;
    wire Clk_1Hz;
    
  clk_div_cmt cm1
   (
    // Clock out ports
    .Clk_8M(Clk_8M),     // output Clk_8M
   // Clock in ports
    .Clk_100M(Clk_100M));      // input Clk_100M
// INST_TAG_END ------ End INSTANTIATION Template ---------

    clk_div_rtl cd1(.Clk_8M(Clk_8M),.Clk_1Hz(Clk_1Hz));
    
    Counter_8bit cn(.Clk_1Hz(Clk_1Hz),.reset(reset),.Count(Count));
    
endmodule
