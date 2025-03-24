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
    input Inp_1,
    output reg Detect,
    output [2:0] FSM_state
    );
    
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
    reg[2:0] present_state = S0;
    reg[2:0] next_state;
    
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
            S0: if (Inp_1 == 1)
                    next_state = S1;
                else
                    next_state = S0;
            S1: if (Inp_1 == 1)
                    next_state = S2;
                else
                    next_state = S0;
            S2: if (Inp_1 == 1)
                    next_state = S2;
                else
                    next_state = S3;
            S3: if (Inp_1 == 1)
                    next_state = S4;
                else
                    next_state = S0;
           S4: if (Inp_1 == 1)
                    next_state = S2;
                else
                    next_state = S0;
        default next_state = S0;                            
        endcase
    end
    
    always@(*)
        begin
            if (present_state == S4)
                Detect = 1;
            else
                Detect = 0;
        end
        
    assign FSM_state = present_state;
    
endmodule
