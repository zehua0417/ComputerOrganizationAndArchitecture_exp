// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jun  4 19:42:26 2024
// Host        : Lihuax-Legion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Onedrive/study/programing/ComputerCompositionPrinciples/exp/lihuax/5_memory/exp/5_memory.gen/sources_1/ip/data_ram/data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module data_ram
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire enb;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  data_ram_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28544)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
