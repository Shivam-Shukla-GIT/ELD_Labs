`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:02:31 AM
// Design Name: 
// Module Name: Counter_8bit
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


module Counter_8bit(
    input Clk_1Hz,
    input reset,
    output [7:0] Count
    );
    
    reg [7:0] Count_reg = 8'b01111111;
    reg [7:0] Count_next;
    
    always@(posedge Clk_1Hz or posedge reset)
        begin
            if (reset==1'b1)
                Count_reg <= 8'b01111111;
            else
                Count_reg <= Count_next;
        end
        
     always@(*)
        begin
            Count_next = Count_reg - 1;
        end
      
      assign Count = Count_reg;
      
endmodule
