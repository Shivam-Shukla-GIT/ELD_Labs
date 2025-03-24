`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 11:55:21
// Design Name: 
// Module Name: Top_arith
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


module Top_arith(
    input Clk_100M,
    input [31:0] S_data,
    input S_valid,
    output S_ready,
    output [31:0] M_data,
    output M_valid,
    input M_ready
    );
    
    wire sqrt_valid, sqrt_ready;
    wire [31:0] sqrt_data;
    
    FP_sqrt sqrt_x (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(S_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(S_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(S_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(sqrt_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(sqrt_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(sqrt_data)    // output wire [31 : 0] m_axis_result_tdata
);
     
    wire ln_x_valid, ln_x_ready;
    wire [31:0] ln_x_data;
    
    FP_log ln_x (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(S_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(S_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(S_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(ln_x_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(ln_x_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(ln_x_data)    // output wire [31 : 0] m_axis_result_tdata
);
     
    wire ln_ln_x_valid, ln_ln_x_ready;
    wire [31:0] ln_ln_x_data;
    
    FP_log ln_ln_x (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(ln_x_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(ln_x_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(ln_x_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(ln_ln_x_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(ln_ln_x_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(ln_ln_x_data)    // output wire [31 : 0] m_axis_result_tdata
);
     
    wire recip_valid, recip_ready;
    wire [31:0] recip_data;
    
    FP_recip recip (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(ln_ln_x_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(ln_ln_x_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(ln_ln_x_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(recip_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(recip_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(recip_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
    wire sub_valid, sub_ready;
    wire [31:0] sub_data;
    
    FP_sub sub (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(sqrt_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(sqrt_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(sqrt_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(recip_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(recip_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(recip_data),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(sub_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(sub_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(sub_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
     FA_add add (
    .aclk(Clk_100M),                               // input wire aclk
    .s_axis_a_tvalid(sub_valid),              // input wire s_axis_a_tvalid
    .s_axis_a_tready(sub_ready),              // output wire s_axis_a_tready
    .s_axis_a_tdata(sub_data),               // input wire [31 : 0] s_axis_a_tdata
    .s_axis_b_tvalid(1'b1),         // Constant 1.5, so valid is always high
    .s_axis_b_tready(sub_ready),         // Constant 1.5, so ready is always high
    .s_axis_b_tdata(32'b00111111110000000000000000000000),   // 1.5 represented in IEEE 754 single-precision floating-point format
    .m_axis_result_tvalid(M_valid),
    .m_axis_result_tready(M_ready),
    .m_axis_result_tdata(M_data)
  );
  
endmodule
