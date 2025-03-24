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
    input Clr,
    output Detect,
    output [8:0] FSM_state
    );
    
    wire Clk_6M;
    wire Clk_3Hz;
    
  clk_wiz_0 cm1
   (
    // Clock out ports
    .Clk_6M(Clk_6M),     // output Clk_8M
   // Clock in ports
    .Clk_100M(Clk_100M));      // input Clk_100M
// INST_TAG_END ------ End INSTANTIATION Template ---------

    clk_div_rtl cd1(.Clk_6M(Clk_6M),.Clk_3Hz(Clk_3Hz));
    
    FSM_moore_1101 f1(.Clk_pb(Clk_3Hz),.Clear(Clr),.FSM_state(FSM_state),.Detect(Detect));
    
endmodule
