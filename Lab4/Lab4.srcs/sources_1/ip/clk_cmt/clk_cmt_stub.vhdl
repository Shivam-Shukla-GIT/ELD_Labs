-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Sep 12 09:54:07 2023
-- Host        : DESKTOP-JTMDP5L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub f:/ELD2023/Lab4/Lab4.srcs/sources_1/ip/clk_cmt/clk_cmt_stub.vhdl
-- Design      : clk_cmt
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_cmt is
  Port ( 
    Clk_8M : out STD_LOGIC;
    Clk_100M : in STD_LOGIC
  );

end clk_cmt;

architecture stub of clk_cmt is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk_8M,Clk_100M";
begin
end;
