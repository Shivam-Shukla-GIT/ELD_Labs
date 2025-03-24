`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:53:15 AM
// Design Name: 
// Module Name: Vio_wrappper
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


module Vio_wrappper(
    input Clk_100M
    );
    wire reset;
    wire [7:0] Count;
    
    vio_count v1 (
  .clk(Clk_100M),                // input wire clk
  .probe_in0(Count),    // input wire [7 : 0] Count
  .probe_out0(reset)  // output wire [0 : 0] reset
);
    
    top_counter tc(.Clk_100M(Clk_100M),.reset(reset),.Count(Count));
    
endmodule
