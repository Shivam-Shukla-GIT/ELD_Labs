`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 09:23:01 AM
// Design Name: 
// Module Name: FSM_moore_1101
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


module FSM_moore_1101(
    input Clk_pb,
    input Clear,
    output [3:0] FSM_state
    );
    
    parameter S0 = 4'b0100, S1 = 4'b0110, S2 = 4'b1000;
    reg[3:0] present_state = S0;
    reg[3:0] next_state;
    
    always@(posedge Clk_pb or posedge Clear)
        begin
            if (Clear)
                present_state <= S0;
            else 
                present_state <= next_state;
        end  
        
    always@(*)
        begin
            case(present_state)
                S0: next_state = S1;
                S1: next_state = S2;
                S2: next_state = S0;
                default next_state = S0;
             endcase
         end
         
     assign FSM_state = present_state;
     
endmodule
