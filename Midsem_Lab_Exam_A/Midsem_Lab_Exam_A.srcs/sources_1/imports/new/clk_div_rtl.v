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
    input Clk_6M,
    output Clk_3Hz
    );
    
    
    reg [20:0] Count_reg = 0;               // 21 bits required because 6.291*10^6 / 2^21 = 2.86 Hz
    reg [20:0] Count_next;
    
    always@(posedge Clk_6M)
        begin
            Count_reg <= Count_next;
        end
        
     always@(*)
        begin
            Count_next = Count_reg + 1;
        end
      
      assign Clk_3Hz = Count_reg[20];
endmodule
