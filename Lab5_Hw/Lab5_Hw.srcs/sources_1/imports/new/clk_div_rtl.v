`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:26:08 AM
// Design Name: 
// Module Name: clk_div_rtl
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


module clk_div_rtl(
    input Clk_8M,
    output Clk_1Hz
    );
    
    
    reg [22:0] Count_reg = 0;
    reg [22:0] Count_next;
    
    always@(posedge Clk_8M)
        begin
            Count_reg <= Count_next;
        end
        
     always@(*)
        begin
            Count_next = Count_reg + 1;
        end
      
      assign Clk_1Hz = Count_reg[22];
endmodule
