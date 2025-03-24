`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 09:55:39 AM
// Design Name: 
// Module Name: Top_fsm
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


module Top_fsm(
    input Clk_100M,
    input Inp_0,
    input Inp_1,
    input Clr,
    output Detect,
    output [2:0] FSM_state
    );
    
    wire Clk_8M;
   clk_cmt c1
   (
    // Clock out ports
    .Clk_8M(Clk_8M),     // output Clk_8M
   // Clock in ports
    .Clk_100M(Clk_100M));      // input Clk_100M
// INST_TAG_END ------ End INSTANTIATION Template ---------
    
    wire Clk_1Hz;
    clk_div_rtl cd(.Clk_8M(Clk_8M),.Clk_1Hz(Clk_1Hz));
    
    wire Clk_pb;
    PB_clock pb(.Clk_1Hz(Clk_1Hz),.Inp_0(Inp_0),.Inp_1(Inp_1),.Clk_pb(Clk_pb));
    
    FSM_moore_1101 f1(.Clk_pb(Clk_pb),.Clear(Clr),.Inp_1(Inp_1),.Detect(Detect),.FSM_state(FSM_state));
    
endmodule
