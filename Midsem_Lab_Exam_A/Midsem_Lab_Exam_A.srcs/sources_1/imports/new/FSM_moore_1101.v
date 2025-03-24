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
    output [8:0] FSM_state,
    output reg Detect
    );
    
    parameter S0 = 9'b111110100, S1 = 9'b000000010, S2 = 9'b000001001, S3=9'b000010000;
    reg[8:0] present_state = S0;
    reg[8:0] next_state;
    
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
                S2: next_state = S3;
                S3: next_state = S0;
                default next_state = S0;
             endcase
         end
         
       always@(*)
           begin
                if (present_state == S0 || present_state == S2)
                    Detect = 1;
                else 
                    Detect = 0;
           end 
       
       assign FSM_state = present_state;
     
endmodule
