`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 04:57:28 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg Clk_pb, Clear;
    wire [3:0] FSM_state;
    
    top_counter fs(.Clk_100M(Clk_pb),.Clr(Clear),.FSM_state(FSM_state));
    
    initial
        begin
            Clk_pb = 1'b0;
            Clear = 1'b0;
            #0.5 Clk_pb = 1'b0; Clear = 1'b0;
            #0.5 Clk_pb = 1'b1; Clear = 1'b0;
            #0.5 Clk_pb = 1'b0; Clear = 1'b0;
            #0.5 Clk_pb = 1'b1; Clear = 1'b0;
            #0.5 Clk_pb = 1'b0; Clear = 1'b0;
            #0.5 Clk_pb = 1'b1; Clear = 1'b0;
        end
    
endmodule
