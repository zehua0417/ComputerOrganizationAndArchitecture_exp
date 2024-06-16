// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jun  4 19:42:26 2024
// Host        : Lihuax-Legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Onedrive/study/programing/ComputerCompositionPrinciples/exp/lihuax/5_memory/exp/5_memory.gen/sources_1/ip/data_ram/data_ram_stub.v
// Design      : data_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *)
module data_ram(clka, wea, addra, dina, douta, clkb, enb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="wea[3:0],addra[7:0],dina[31:0],douta[31:0],enb,web[3:0],addrb[7:0],dinb[31:0],doutb[31:0]" */
/* synthesis syn_force_seq_prim="clka" */
/* synthesis syn_force_seq_prim="clkb" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [3:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb /* synthesis syn_isclock = 1 */;
  input enb;
  input [3:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
endmodule
