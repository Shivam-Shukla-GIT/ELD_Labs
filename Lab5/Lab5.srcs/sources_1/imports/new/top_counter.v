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
    output [5:0] Sec_Count,
    output [5:0] Min_Count
    );
    
    wire Clk_8M;
    wire Clk_1Hz;
    
  clk_wiz_0 cm1
   (
    // Clock out ports
    .Clk_8M(Clk_8M),     // output Clk_8M
   // Clock in ports
    .Clk_100M(Clk_100M));      // input Clk_100M
// INST_TAG_END ------ End INSTANTIATION Template ---------

    clk_div_rtl cd1(.Clk_8M(Clk_8M),.Clk_1Hz(Clk_1Hz));
    
    Dig_clock dc(.Clk_1Hz(Clk_1Hz),.reset(reset),.Sec_Count(Sec_Count),.Min_Count(Min_Count));
    
endmodule
