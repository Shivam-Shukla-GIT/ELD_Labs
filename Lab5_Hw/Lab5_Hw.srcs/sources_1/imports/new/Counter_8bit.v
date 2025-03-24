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
    output [4:0] Count
    );
    
    reg [4:0] Count_reg = 4'b0100;
    reg [4:0] Count_next;
    
    always@(posedge Clk_1Hz or posedge reset)
        begin
            if (reset==1'b1)
                Count_reg <= 4'b0100;
            else
                Count_reg <= Count_next;
        end
        
     always@(*)
        begin
            if (Count_reg == 4'b0100) 
                Count_next = 4'b0110;
            else if (Count_reg == 4'b0110)
                Count_next = 4'b1000;
            else
                Count_next = 4'b0100;
        end
      
      assign Count = Count_reg;
      
endmodule
