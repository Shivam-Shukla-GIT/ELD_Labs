`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 09:19:11
// Design Name: 
// Module Name: FFT_TB
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


module FFT_TB(

    );
    
    reg clock, resetn,c_valid, ffti_valid, ffti_last, ffto_ready;
    reg [63:0] ffti_data;
    reg [7:0] c_data;
    wire c_ready, ffti_ready, ffto_valid, ffto_last;
    wire [63:0] ffto_data;
        
    initial begin // Input initialization
    clock = 0;
    resetn= 0; c_valid = 0;
    c_data = 0; ffti_valid = 0;
    ffti_data = 0;
    ffti_last = 0;
    ffto_ready = 1;
    end
    
    always
    #5 clock = ~clock; // Clock Generation
   
    initial begin
        #70 resetn = 1;
        c_data = 1;
        c_valid = 1;
        while (c_ready == 0)
            #2 c_valid = 1;
          #10 c_valid = 0;
    end
    
    reg [31:0] input_data_r [7:0]; reg [31:0] input_data_im [7:0]; reg [31:0] output_data_r [7:0]; reg [31:0] output_data_im [7:0]; 
    
    initial begin
    // Complex input data to be passed to FFT 
    input_data_r[0] = 32'h3f800000;
    input_data_im[0] = 32'h0;
    input_data_r[1] = 32'h0;
    input_data_im[1] = 32'h0;
    input_data_r[2] = 32'h0;
    input_data_im[2] = 32'h0;
    input_data_r[3] = 32'h0;
    input_data_im[3] = 32'h0;
    input_data_r[4] = 32'h0;
    input_data_im[4] = 32'h0;
    input_data_r[5] = 32'h0;
    input_data_im[5] = 32'h0;
    input_data_r[6] = 32'h0;
    input_data_im[6] = 32'h0;
    input_data_r[7] = 32'h0;
    input_data_im[7] = 32'h0;
    end
  
    integer i,j;
    initial begin
        #70 for(i=7; i>=0; i=i-1) begin
            #10 if (i== 0)
                ffti_last = 1;
            ffti_data = {input_data_im[i], input_data_r[i]};
            ffti_valid = 1;
            while (ffti_ready == 0)
                #2 ffti_valid = 1;
            #10 ffti_valid = 0; ffti_last = 0;
            end
    end
    
    initial begin
        #70 for(j=7; j>=0; j=j-1) begin
            #5 ffto_ready = 1;
            wait (ffto_valid == 1);
            {output_data_im[j],output_data_r[j]} = ffto_data;
            #10 ffto_ready = 0;
         end
        #20 $stop;
    end
    
     
//    initial begin
//        ffto_ready = 1;
//        for(j=7; j>=0; j=j-1) begin
//           while (ffto_valid == 0)
//              #2 ffto_ready = 1;
//           {output_data_im[j],output_data_r[j]} = ffto_data;
//           #5 ffto_ready = 0;
//         end
//        #50 $stop;
//    end
    
    xfft_8 ft (
  .aclk(clock),                                                // input wire aclk
  .aresetn(resetn),                                          // input wire aresetn
  .s_axis_config_tdata(c_data),                  // input wire [7 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(c_valid),                // input wire s_axis_config_tvalid
  .s_axis_config_tready(c_ready),                // output wire s_axis_config_tready
  .s_axis_data_tdata(ffti_data),                      // input wire [63 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(ffti_valid),                    // input wire s_axis_data_tvalid
  .s_axis_data_tready(ffti_ready),                    // output wire s_axis_data_tready
  .s_axis_data_tlast(ffti_last),                      // input wire s_axis_data_tlast
  .m_axis_data_tdata(ffto_data),                      // output wire [63 : 0] m_axis_data_tdata
  .m_axis_data_tvalid(ffto_valid),                    // output wire m_axis_data_tvalid
  .m_axis_data_tready(ffto_ready),                    // input wire m_axis_data_tready
  .m_axis_data_tlast(ffto_last),                      // output wire m_axis_data_tlast
  .event_frame_started(event_frame_started),                  // output wire event_frame_started
  .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
  .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
  .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
  .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
  .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
);
 
endmodule
