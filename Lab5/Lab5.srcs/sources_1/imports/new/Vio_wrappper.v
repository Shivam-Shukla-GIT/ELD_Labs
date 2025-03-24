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
    wire [5:0] Sec_Count;
    wire [5:0] Min_Count;
    
    vio_0 v1 (
  .clk(Clk_100M),                // input wire clk
  .probe_in0(Sec_Count),
  .probe_in1(Min_Count),    // input wire [7 : 0] Count
  .probe_out0(reset)  // output wire [0 : 0] reset
);


ila_0 your_instance_name (
	.clk(Clk_100M), // input wire clk
	.probe0(Min_Count), // input wire [5:0]  probe0  
	.probe1(Sec_Count) // input wire [5:0]  probe1
);

    
    top_counter tc(.Clk_100M(Clk_100M),.reset(reset),.Sec_Count(Sec_Count),.Min_Count(Min_Count));
    
endmodule
