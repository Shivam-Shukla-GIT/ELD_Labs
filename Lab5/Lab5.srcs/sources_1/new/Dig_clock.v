`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 08:53:54 AM
// Design Name: 
// Module Name: Dig_clock
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


module Dig_clock(
    input Clk_1Hz,
    input reset,
    output[5:0] Sec_Count,
    output[5:0] Min_Count
    );
    reg[5:0] Sec_Count_reg = 0;
    reg[5:0] Sec_Count_next;
    
    always@(posedge Clk_1Hz)
        if (reset)
            Sec_Count_reg <= 0;
        else 
            Sec_Count_reg <= Sec_Count_next;
            
    always@(*)
        if (Sec_Count_reg == 59)
            Sec_Count_next = 0;
        else
            Sec_Count_next = Sec_Count_reg + 1;
            
    assign Sec_Count = Sec_Count_reg;
    
    reg[5:0] Min_Count_reg = 0;
    reg[5:0] Min_Count_next;
    
    always@(posedge Clk_1Hz)
        if (reset)
            Min_Count_reg <= 0;
        else 
            Min_Count_reg <= Min_Count_next;
    
    always@(*)
        if (Sec_Count_reg == 59)
            if (Min_Count_reg == 59)
                Min_Count_next = 0;
            else
                Min_Count_next = Min_Count_reg + 1;
        else 
            Min_Count_next = Min_Count_reg;
    
    assign Min_Count = Min_Count_reg;
    
endmodule
