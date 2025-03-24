`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 19:52:45
// Design Name: 
// Module Name: arith_test
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


module arith_test(
    );
    
  reg Clk_100M, Sx_valid, Sy_valid, St_valid, M_ready;
  reg [31:0] Sx_data;
  reg [31:0] Sy_data;
  reg [31:0] St_data;
  wire Sx_ready, Sy_ready, St_ready, M_valid;
  wire [31:0] M_data;
  
  Top_arith tl (.Clk_100M(Clk_100M),.Sx_data(Sx_data),.Sx_valid(Sx_valid),.Sx_ready(Sx_ready),
  .Sy_data(Sy_data),.Sy_valid(Sy_valid),.Sy_ready(Sy_ready),.St_data(St_data),
  .St_valid(St_valid),.St_ready(St_ready),.M_data(M_data),.M_valid(M_valid),.M_ready(M_ready));
  
  initial begin
    Clk_100M = 0;
    Sx_data = 0; Sx_valid = 0;
    Sy_data = 0; Sy_valid = 0;
    St_data = 0; St_valid = 0;
    M_ready = 1;
  end
  
   always begin
    #5 Clk_100M = ~Clk_100M;
   end

  initial begin
    Sx_data = 32'b01000000101000000000000000000000;
    Sy_data = 32'b01000000101000000000000000000000;
    St_data = 32'b01000000101000000000000000000000;
    
    Sx_valid = 1;
    Sy_valid = 1;
    St_valid = 1;
    
    while (Sx_ready == 0)
        Sx_valid = 1;
    while (Sy_ready == 0)
        Sy_valid = 1;    
    while (St_ready == 0)
        St_valid = 1;
    
    #5 Sx_valid = 0;    
    #5 Sy_valid = 0;   
    #5 St_valid = 0;
    
    @(posedge M_valid);
    #10 $stop;
  end
endmodule

