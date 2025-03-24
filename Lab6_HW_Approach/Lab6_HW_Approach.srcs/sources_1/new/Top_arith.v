`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 20:33:18
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
    input [31:0] Sx_data,
    input Sx_valid,
    output Sx_ready,
    input [31:0] Sy_data,
    input Sy_valid,
    output Sy_ready,
    input [31:0] St_data,
    input St_valid,
    output St_ready,
    output [31:0] M_data,
    output M_valid,
    input M_ready
    );
    
    wire x_by_y_valid, x_by_y_ready;
    wire [31:0] x_by_y_data;
    
    floating_point_div x_by_y (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(Sx_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(Sx_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(Sx_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(Sy_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(Sy_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(Sy_data),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(x_by_y_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(x_by_y_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(x_by_y_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
    wire ln_t_valid, ln_t_ready;
    wire [31:0] ln_t_data;
    
    floating_point_log ln_t (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(St_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(St_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(St_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(ln_t_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(ln_t_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(ln_t_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
    wire two_ln_t_valid, two_ln_t_ready;
    wire [31:0] two_ln_t_data;
    
    floating_point_multiply two_ln_t (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(ln_t_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(ln_t_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(ln_t_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(ln_t_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(32'b01000000000000000000000000000000),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(two_ln_t_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(two_ln_t_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(two_ln_t_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
    wire two_ln_t_by_y_valid, two_ln_t_by_y_ready;
    wire [31:0] two_ln_t_by_y_data;
    
    floating_point_div two_ln_t_by_y (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(two_ln_t_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(two_ln_t_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(two_ln_t_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(Sy_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(Sy_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(Sy_data),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(two_ln_t_by_y_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(two_ln_t_by_y_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(two_ln_t_by_y_data)    // output wire [31 : 0] m_axis_result_tdata
);
    
    wire sqrt_valid, sqrt_ready;
    wire [31:0] sqrt_data;
    
    floating_point_sqrt sqrt (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(two_ln_t_by_y_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(two_ln_t_by_y_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(two_ln_t_by_y_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(sqrt_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(sqrt_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(sqrt_data)    // output wire [31 : 0] m_axis_result_tdata
);

    floating_point_add final (
  .aclk(Clk_100M),                                  // input wire aclk
  .s_axis_a_tvalid(x_by_y_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(x_by_y_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(x_by_y_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(sqrt_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(sqrt_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(sqrt_data),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(M_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(M_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(M_data)    // output wire [31 : 0] m_axis_result_tdata
);

endmodule
