// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Nov 22 11:37:18 2021
// Host        : DESKTOP-CHVOD4P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documentos/uni/poli/TFG/tfg_pr/tfg_pr.srcs/sources_1/ip/instr_rom/instr_rom_sim_netlist.v
// Design      : instr_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instr_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module instr_rom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "00000000" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "instr_rom.mem" *) 
  (* C_INIT_FILE_NAME = "instr_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  instr_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
AMki63s+SbwmAAoDRZbLft969nHjoVWQMN8PPiGSuONUyq0kVJ/wQnXTm0o0adAOj5nRO5H/ST0b
7DcFDS9YzeNatOA1Jl9ooT8hoXlnoKORtaZksS6GyuWSRRq4FDpV7+Poit1Q66xNaclYizoM1+kj
94Q+QBCyGpoaycsKclkujl0kkCcX9XRUijvGVdvT4pI7jfZh46GyOk6Rj3tJSqu3xLH6Pgq9X/yG
uUs70Wjkg8+y3UsmOaiOkGHwqJ5V0qdivy9yjW8oexb+iNZeh9ak/W1RwcQa0rKrINgLn4ES/OLd
ML/+F0HgBV6AHwwAsKSnu7oP7sSfVGGYV99qKtlmouh96bncptBFND87qgvirkGXLQO5jlNao983
Yx+mwkUcXnc2YtImFQ7wh+orMrNIrDHC2WFDktA6FfpJhsC/dkh6pFayTWdjwcafJAlajiW9134T
pj1f+fkhb5bUZ6vmHkrteFbMBH0o7/F2BtMuAoOxGzxGqrLTDZcKMWakBfGqmSmTjl93dWgEfMLo
g0q4wMe/RkiYHZKHDpmAc/Wofg38OyRt6u/SpB/8IGJ9n66p3FvbeW6CKx7bQhWuJDa+xHm/1Nva
Cusu+lSR3D0dxpxRUEAn7yM09Hrb3bKsZ21YM1zXN0BX30hGBct8SFAZuxcqIQmreKq+SksyvWS+
eS0+d8X9bdXrnXYvki8TgtGzk43G00HRU6vWNP+fR/FizVxn3t2Ijuntdu+dBI/lfPy4VGl/XnJv
Fi5OgJLN8Dje9Qzxa+yCws/XkQApFxYHGoAf10suhLr93WNPgmzmfuknDaM9WZd5eGP5FTFleZHN
G6MyeMCcAvO8Z+0/ysO7AKjbihHAlAwXUyE/yYp19PePUTM+6JXZTVDveifJcO2s3rTDmMOOHM1x
RE8qFGFjKPzjdcHlgbEY6xgrhM9mgphv+jEeNSXkZg2MnR366s8f/9Q5E74kIDioHJNkmJ4nVO0z
fAV8pwVRLBP3ScpBsFbAEEEQP/WcsOsPxEPbaT1qWvXfYyXZ/U2Tx2j7vzcF+uOiUlydzWyN/F95
Bs9lOf9GcfvEtqs77slhPKNm2fCSKducYh3U+82zCsavzjqt07lHv+zR/np7sM/N5FkSPgde6hoj
/IbpV+wDLHAgRJpM4F0z10wla3YEsHA2Wuz4zHWcDJl0u/GGOEomcbUIssXT1OiMeF5964hlGMeI
3LE7OhfQUKcPPpAS/11kL/ba5VYMjkmffVV/BBvCHW59Ws5zkNOOOeGAY3x0dVBt4IazqYQJfgnl
I1913a8hXiypth22xstJU+annp7wdAGlIVFfnuoGu3nKOED8/gf37JH15V/aHxFfg0RgO07G8iMw
4DpEqQLWvnSBeT8vO9zZ+TOQUuv082KVW6hiPdmPkGibS02X25sXSvMzzz1rKaYPDN+zlmXhm8WB
bUpjPVqmkwPR4Q+aKBOEFLU1OVRr0dR5MtWKQS/7XqVv3XBTg129UBAMdDizmO5D1pjsZJFy//CG
OixYTnFKT4F8jCQ1R72cyan+tzu6CsCM3RPn6de36H9+1uyWSOxIt2SPmPaYvC2Eaa2inS54wrNu
88mK5Zw9HBEG7HlnB0e48yrnSV+ZWeokgl3WugpNkry9adaVarbulA0k/qQRLTzvnWuLKfBPC1sB
7IWVqR09dhI6uykFdeex3ez2JKuSZMAHDVNdv0SLjvnR4uNRhwyjyV2MWoK/EviHXu70HHsXf4zj
rmOfo6/jhvalYP5O7zj7ACLDh5yz1+E0LMgom1TwJA/5lrn2LBa1aLqMkDsqK1f8rAiMRL3rX6QD
3qsyy2l8jmhPIEOtXcV/mM4pyZBeSygaqit2uvgjYhm1hbzz/Yi3TyqbSia0LC28KPTufSA4ruKN
neCRJJvYI4cGIrkalqBpcHrSLhnRKBVjephzkT7zuosKvjdg5Zp0eitG4X9+m1xbMqXrYHKe379l
NZ8iz9zMkgJlCiNSFSgbOsbihN1Csfp0dq8wnE0Q3FBImtBUT0W5vMlLpnsCUWPFHbkx1WycHiNQ
8Egmf4GRN+1t0r/8PjHrHkhOr4wm1WrlkMzwGRLPWS01tpMhHodaha4/X0Pon4BS95FQbp/TEgOY
Hlhpsk42CumU72+5kxRlOc9BmLerGaZN+F/w3P1RbQ3WgzawXJBeNHZuNiky7aM5l5AN6Qe+v+8+
eDNeYmN0hav10tBZh/Gahpy+QvcLptD20ncHl3Ro9haDBMqRZGxyJvnPx0WNjDF7cl7k+J2eeYlT
Qc59JeTAU/6Ha7TNvlUlDOG5mUhxmzQxY3WcY2JhJQufy0RcF29CvWYwPzSB7VUbAORqKJepAyAg
HKKtGO10UiT2nPMibo44VcYRo5xLwkQGZHPYoHLAGbBgyVAnky4XeAEG+182nf/YFQ1oSya6TsPV
98EWyCvYDYr4w9588bvOKcMEv8aRIU6Ibg6KE76f/07NdEGRMFj74HSQGZovXpcMRL55kXacHvRC
LtgqKzrZZ7kRCb8rw67Owblp5u1VPw6U81DJDB2U1QK8jOZCvv4Y1cg81Ru1BM2ynxBRNv9ZgdAL
9rTnS0YAqjwc9ZX7siYSfVtx2OU3bMT31sIeH2yvRDLbnxxPUKoZ0TZqTdRU8r4rhrxL8dN+L5MH
hHh4IQJZsGLr7rhgw/MxLRhGD+/1bDT78HvTumHpIJQ4Oah8wyEOZxnlygRP21LH92Js3koQBkAn
vYFNyqGWL3SZKVw0yGsIUriZy65XvhGv/bKWsqgpEUZbh/aYPYgRNMDXt8taMAWTyuHEuJECT4PN
HeRcGRrnjFstv8U05Rgs+qWiBlHmDUtU8Th1EjN32wdGCpP9SU0M2Cvr6VytnsSgw/ATRRfCLxYt
thIstKP9WmcSzU8Ks+hNCh5IBVG6vNHZURgLCiOIST9aMg7lDz2ofYEuRmamuNzxJvOi9ieRq0Rp
3zIMa/nxRRA6jBvPyOMJ1HxE/QDe80JqVL/4v772vC3imh7QMPS4LZronFeBB3HPkNfqVB9r0ZgI
jRMYqdLwWvDhH5yTdcjMrob46JKCcSumlF8BrhAWYReA7wARysPykXHdN/z7JtGL9DO5Jo6p1ilQ
0p1ncoQ0wIGoI8JEWozgTOrf042+SFWX9Jzxcy3ViiInt1AdU9FIQ0Mz+MP/gsgNox/BfXzCF8aM
/LwGViub84MMwWZRs3gju1kh4Cn9VwaKrV78Z8jN+0qtskn3XMZnsDAVMCPhpBFHcr3Bb7a1baWK
D/QUML1r/1GEL9uQJq3JHsB4PXFCjiwuAAmJJCCtDfdr1aZH3oA10W5byr+nWGS+UE2+b6rB4xPn
vX85x9+ZOeKfYG85wWVTNhItHmtt0o8BEapl/EmSa5N5fOG8bO5NEOU42t+yVHDk7D/N7eqBzWLU
NPKwaNPCrhpOiEugtepBcNyiZOFGSjw7Gnr+bZhV/3u6QS/dnlh9yB6KaYEfEM9y4jFARxLdEgQB
p+Idh0N4Oj9iNwmYyDx8SA+vpyddBakgZ9Yck1UdlbVN/Mu4nairx2ILl6mF+Rxs4dIQnC5Om5Yt
uX4t3NzNXUhPhrEMBdNffMqFcXHFV8KtyDVqatLXsc0a8cKyBHCC2/uouOAKouq7UtipFBjisU18
7RL9E9w+ZrSteFdaKLLxHW7uU+ukCCpmV3GNMyXZhlu5CKpio3pB1zSmyLUkQwGpa+hF/VOML/pr
YHQJZQWk3lRIvndkhEDpnhSV8I2sMn/WOyv2PkniDxOjreEDmOm0LHaWC83VGtKNVeoI0lm/ntSX
+0jXCDdxODQueqJfvIvpIv04TeS2Tjgmb9E/4ItIR4LzSVrI2wpViGYRst+kVPld7YKn4VVvTS2/
kSFw3OcNuwmddkD465IgO0fDXllzgiw6pUea78OnptAYH0ikAj1z9iNcKCEXesijECdDleHlApUS
0GB9JPM54w4JJ6tjXMmR0j3nOWEqRwDn5nlrCKV2iokzDeobQTBrM4i8bWUhUKsxXT0ZkA8VEsFG
4mt1XbzJsxvTz7moXbcFNWcO7vTJ3XdXT8gFfkaHuQAeFqizxL6SDUAvyfN/mAIKV6OOle3meTSQ
+zZBOFNRoNbf/2ghLitdLeavfUtiN2DhyLHm+cr6oTxJkQSwdmosBFLF2iQhoIeztg9awOg2G9pH
kAYKLaLVr//hlT50Enq1G/tlJ5stW8Fte5xuMMWXKKTk7fzIuy7baT8MQRClkK50mFaCK+UPYD1i
xbpGQzAI9S1J2gWsdylM7SOyl3b7qHbCkKm6Xdiu0nT4XUrGTKWGcwfVF5G40OpjpulcVxXWmdqO
NbK4HYUjy3J1nf9bBtWjVw7illGy15dF648oSepnoI7mSdNR8yS7tQJFLlx0tAd50N/ES9Yy9QtE
tu2N9HwXzhGpZlWxs/8af/7pkbHS2o+4Cmvr4ZuCrkaGkSG6Lkd6ksIJ0z2LQSlyf3QK0T6f24QC
TrMpR3MraP1NJprxgB5r+GiUVnaD6uQl9vx7Sy+K3VdqPQY7AiIOZ9IVB30S5keq+T91Vd6UnwPU
rJO/DQ8v0gEepapVFXzWhO2ISWqchzev0tEUT3kExOgZ96ECnay7rwnSMoPki9MUNNeraj/16zYN
8wDK1xOdcVJAmaAoyxaCJ2sqbK2ii6oG6GGWO+nutpN6gfULiYLNZPBMkBOE7LqHckcjSD15/Mkk
GgNDKVKLk8mB079FrapKaUCxNtJsckiVT9YJydL5rdzZv+zqEjS34WxtV9BWqH+1o9F8K8gkFO49
jzVFMHxzktQdTfXBl26XapXdcjxIYk3u6UvQXeqYM1TyvPIvUtVA8xLOB0hB2+bE/8HOjp+yLbuH
3rm0eZ5REcSJ4vEFd09dUTafWgOslOFFHwNdiVIs8EdP4ULAtdzSKOl5BG1tUopguf1i56+VqUmJ
fSUbx0FUmhXm5UvTO+pUy0q+MfT7qeAtMrcScyBuhG/uJoG5RUqVj/BzHFGIM3ZDLHLITEYw6MAE
DZGNSsczJPXKkzCE2ucDrwOLNTrXrgmLqanc9KvNitIvHu8TayVPYTie5S4hor8gGf9gD6jeJrf5
9Mj5a6y4uFOG1biMG01VKGlod+syamMzVu3StPwmsFGnBnHJ7Lpq+QUaKQZMSxphuVq9Ea8sD3qE
i6D/xWtDn40bTtX373P9H3lCnSJZEAvfyRgkXcBodsNqg6v3xT2ofUJSPiyYJedOnJ2pTFCdEwzZ
loD9vOfz2VBND6Jtk+TUrY+5FOM9MjW1OdAJ8yWQcGJ+JBHpxacDxz/3irT3dsc76imvr9XeiWNe
9SMr+BXVuSd9t59WD4ya48LlyfhNjR4GTJx8eLourR+ciKjRnj+RqZPAOazMlrHZSSy/zg5a/GyJ
qkF11NJdhF3TExgzEf++wfNNtiFh/48B3GkQRIoFHTmBpz3fq8DoOPrdgbhC14HSZQic7/YnSdUe
Go8Y4ysrxNi3agGBiw1E+Ks39nAnTFbk98+gh5EE4n8mQYLJbtEntN5HdrH6zEpwhTYDHnRLtHqY
oGDqpKjQ7qGGEvJXXNJTnV4PMPEdVK2R2gRzm2neevH8L2guHMlNSBL0TA7qjPElw03V78MwBGh6
EqDfOsWkl/wOHPWsBpheMgo6nWlpFgr3CWyE08eifRGtIjRkVfXqEqmc8sdojxu0LM3kbuDT4y4u
ND9mc6kt1mmx6X/lwyHy+/Id3KTEY+KilrzjUR/LRgCcmYUiJ9dVMPiToo+t/Pod1OVBLDn4TUxQ
Di6j7vMdR9vAvkfd3WBwvY/IcsDcYmfTJoCGWukRbVhcsbtjm/iRj5xmBCBU+wGJHOJ7WtY9WXfi
FWwT41ROCHMfaCDymvEMDA3pcpFy5WQEYYqwsw5tbkaiF3eQbepEU0mKWBbCYmxWWzFA0IE+ziB1
3K108DwXz9W+6iN1850rNBtz6LYGs0Hko8EVHQRldvtO2MC5vtoOoJdywkCO1e3bbgCCc9Hr+oiR
HYPTncoRsgjt+FxOB8aqbIkH7ofYe9tFulYtmNUpBjD6g3bf0ELqdSd9cLo6Vl9m+S3w831eS9Wl
CXuS+FZYUg6MR8RSOKHE0LXqqZGX1nVPcj1dAexu04B/dNESPkWoLnh8yHumto48naVqiUrDqqol
yHKz47qIVw7JH9Ep0f2OgeO7diYWRRZBN5BzqeFkqpLQHFHO5FYatGnO/bFA+iVThEV6KES1GNLP
eRtq3Y9wOvRXXGIwmJ3BPdELDLPnsSM7rv3iJdp1slAtiCZgPN7ztJduwVlHmD/A+QVf6g8AHGw+
CzP5t1hFprA0W5UOLqZgZRzuCUthyyWmTJZ8CaPFlAY1xsmQVhnbHfcy40Wgu0H4YNqdTDNJaOkD
Rzgo9tZ6lxjGxEyGox6CnWLUYkfvm1JoxKskPc1Hyi8aRJXfgiLks/0U9mBiAI2r4YU9PBgpqEc+
0zl+oOJliI8Z8/q04StMJ3ASpBwffc60ouBgvUeEoGum4uIsqObVFPggvXaMzQRWrytXqY3HqdKE
heElZNWzovK7GprK3A9WwxepQZSsf5GP0SfWaDaVjWhRDIcm/dvHhgPtZNh9uyHmBUE4LyxOu0zA
zlBMnFtKT8xd7Cr0ciiNW3m4fCISRnHQIpTxe5W8awfK2SCrjv90FQnaCwM+fCE0iQGfuU5JN7Av
VR0JxrTpoIE0ufgC6bmfrxGsEoi2QGCO890I2xCG4oRlrJ3I+IEEns/S3ngmhSro/mwmuzgx73GO
6a6zjAu9ebukEhfkIXNBuomHy+V7Izl3MctuTtNBQ2yXirxldJdXl+m8kJIbyruJvKPGBZJygvoO
cQKehelYTm7N2Hj2RHtdEupQ+S5CGShrroiFLMPiKberNGn8lTXtItvW1VTfl19Iqd4Td1LaLvrZ
/sHISQt0qauZwqJeAwI20brf2svh1MESTvhkCQTsHF069o2wfp26QOM5ndEUOlB0DimUc20Vgc3J
qP0cm5KYqSBMnEycyxXduI2kL8lwDQ4v0Qc0KqgwJeySe8n0iJG4Zzv0Cw5cLIho42W7Hjngjwge
wXyQpZPksg1OkCB+2q0lydevi98HZF1EbbK3rfKJi6QG252I2bi39MJLidm+KyuZGynJsC0b5OP1
c93G2hYLbNs1xEGPYVf/jZNSVn1pyGgwLKFRZumvBiZ5DB+VVfhBCP7T8uU3vl6aYI/8FnxcXSMs
GoLefzIuE0L/TCyofolu7J6El750TyST1prpZSsZDKUMr8v4ECInbWqzbF/m4f1pghvF3TIReBxE
UA+EAtN1MB8BLEMzNSsvwIMnRlxa8NOMPUiyY0ZMqcBAQG5/ebF5G8/usT5ZEfatJhSMhXHgMexD
SB3R/dzYcqgkoeAjhEr0fpQZEAZw+SlzP3YRRau5m3REZiamcI6v6xHn80xP68R2LUtUbWM9hER2
z1Jkkz6d2ZlhfMO+Q0LvGGs0NNA4S9AkiJWicDKaYqJuIsdrSrsz5x39LjEBgBYZXn+jPjOaG4CK
G358Fo8pmOmDvsXtnyWNBnTh593OcThEy/akcsUSWMQDNCjZw1kDmN/7L4uArJRKmnFvDepCFjXG
JIMWJgIe2WGiu4ka8ghroWOWgx+NeH7apj83RgLt7OZLGY6jSaxIQUsbMNWpWEMIeSWX2Hxu6JLV
oUj1Ut00MA6rDcDaaw8PTx1449RYhZOGug5jJPkU2xcpyNin2/AmQR/6imZnAQiy/OldagOHyTLZ
gGoW7Ph8p5kscT3gw7DgeBvZTNlQVey+gg+3jjpLYDnvWgkE7Ppq2CE6sqJKyYAgVfF5YwlSEGc3
Zv5wTdwRnTKZ4q6jKQpm5HPau8EmzK8A+dZTwprZ4Nf+1iv6h83VXyRELibjWSrSPFP1yyARfCBo
UyC8Px+8eGQs2sJWVLdKgMybVcQ8E65Q1HUHG1rlqeqtdjNWeqi2/R69NjciDH8d6tozhLVUKOk5
qgLhXVsF9fUo6WojGQzg1vBxYJ8eaGdoJQYYe/NWxdv4fUT/4/pPf5JEnIN66zyiTjvUnFA0U+vn
D6ffxwTglyLWO/eB0AmZYkE0zCxNNxCoOHBKlYWzfpDu0aKvSXFxldSbwvwayeU1yYlIoP89rzA8
5hI9qOcTGAWn+UglmPUHJYngz/IuGGFlIwuiqV6jUdMdj/rPOsxVrjd0B9khVvmEDkV3IfM4n66W
ZxaSdBKTMOvwxnd97ByLQsjPtps9Thn6IOhZc4hOg9u8xuWlP0Pj82RFnJH/TWqzGydhKFMP5DN7
ZZ2Zy2e0zf4pycEnzwDsRYPk42G9n82NaSFcGFAH75oKaomqh6EhtaTW5NQ07UOoFTLA9fM5rP9L
VS+mgKdHr/YDVZOIct0HLB/tityyJrP2ChYKBHdP2lpYqCmlDp+pKljGNr1FUZsBRjWRwznjNy5v
33pPEZG9hRxIDyF0rzUt8t3Ba4qoFoHn2y1ErYjR5NId8XWp/W1FIb4xKDXG/bBr3wsu41tNOL2d
9aXTY1T8vPLOT96RzNIXTgbpIz9bOWdraoK22GV2T46ztHSvkfr8eJune1VsW0aAu+FJqc56EvSp
+0XVhfmbIyKsBK+XLv+RN/r2BIdu5XfPIo0ZLAf3zx8NHRth2i7N3cEfLehv+KzO12li74LS3dtV
K1M5bpDYTCd5tKU2CAyltmJjSAnyXtckQdVjRdFEFjkVV4BmUJiRMHJwNqoEDqj85HP1Y1Bz0vk8
xttukQC67tSLsov5DAoLzUuD1nbz7LO69O+td736BmiFLU0GKk9KXEVpNFXz7H7SdA+Wv739xxWn
PJRjTsjT1N1rxwzpImShf6rhsky34dLsOSfevJx8NlGt2qpBHzL8GklhccepaiUs0zS/9153/Eaf
J2kpKpPVoKcYqc/Q4MAwO7VmjelTHY9EMI8MVVKpHocYft8Cd/4mxRWUqDMDtpCtIs7KBGhtGUZZ
TlP1ZO0EJ7vs09yNfOJDkv2z9NoBUO3VZq5aTouLurQbOCjB+XWWEjkwYoYuYNzaUulfSDWp2OLl
TfGtyurbliCl+dSifD5e4jD72RAdLjeiFbemJ0ArPHhM4h1JLINTLBWgV+VMsoaGNDGo6sLCZrkD
F1gYUxcDiS6JaTESTASIxkfzlchj/3ausTEpjk02gSH7ogtLQQY1/guaVWJ8wYRzkTPTTNcsi0do
yHkMwWEkVO+mYCGAgcT6yHEeH3mlztR5M6fbUDgCE0297NrMc0Y1Vo6LzaXjPM8xAh6WG3nZuwWO
8CQni0Flnt7M21ubrtQeUPXzmZ0UP3Gt9zOBPWyMUm4uOrNjiF9YO5UTKKj8NnvX/DJoDW6BCGle
4su8SArAeYBaExxIZwEkYcybp9V/4DtKtYe1YxafrRIBQUCZcE9gAzf6Imskei8Z0sztqcRwYhB7
2z3zrbFZofNOFepl9bfwqmSa2tAzbqbkQ0H60DK8UktjgZ1Xx356bpXC2/duLtC3QQtW/9O3VKeu
+YzPjSAzaxqUUaTcmGHZCNuRm0Iw5H6iLDzic0XiAn87hNJ+7v0fap/dA6Yb2ldTxjKpsY/2Zixn
ElTAT1YwSdCERloXGoK8dk1FWZlMbhYhlpHwh7ZkfAoiFOqxhjZZUXoroDBoUM5SeJ3Pa5zC3sBy
fFwqbucZA9dbzyIjfoi4Pq+DNGLy6vXVOVpz0zNlUEtwWz24wxaCqoHs8jvqsuu/sqt+GvuHkOT7
wP6a9//dICn1Z5v7CBWP7oAm49oec9uZxrJQthLmRra+7zT2BJi7U1CD40apP5l1av+IFUKmoWG3
TYam5iZkCu2Oz8A7n+fmQ0Fe+VgExI9OV/F4WHT0kfBOgTVqv0dcq9ykCKWTwpD0w1jrLZlmvyXd
Nf71jcotfvJN3gxWb4NlVWjRXw6o8Yplm6mIYcAOlvDHVg7HxTCZle3HDdm1G5jbAJiSzNTeO6WC
fJmeVMnQ3XW1hM5XN+84UMU23YnrzQ5B+15nuimIWl/cTNIJberqNGEVF3fcpvNhMxR0AFniERlf
PEYTg5I08Xo5rwZM2YESohfOhw7QTy7x0yaaQvxm7e1ftHNM2DkrUHwsndgVfhqZYlaR5M8BTXNW
nPq9BUiYSimI5ggOUVzrW0Wom6MCzWx+P3sCQLqN69euHOaFvBHOCujEtB6uCvdHuOlu6Cw3JVjp
dLwMAGOSAPvigAQbBKaH9jKpEt/RNgtFgqFlBDLz+SuG6N5J975KYKXSeOt52pQw/Dv6jVL7aC8F
bbixX+19/6dZ3aj3EnYI9FRKDja1abpAPPaKDC4h126P7CulV7zTfTsCl0CS6oPBOr61N5heiMOs
BzWQA0nXLvAACVGDkTzaZTX5SHMThNXEnNjnXrXIyckeW/1CO3Mx/qEQd7yBs6gV0iloS795tzQc
XBXD1wAESOcNM+CqikPqKfwkIv26OgtXWRyat7oAEWxLdEC0Lu6ktCzxA8ZViR1XsQ15rCfubzRz
G6gIkjd7/eVXfNuKF/EfVwXDQoXOdBaL9oFkV4FI9n0zMFGGAL/U7csA4EfyFmVPzXjgPT3tJA4B
f9FrrcikiMKq0XgAA5MDpU1m8IFfaWrw540s60E/+8utZ1T3wPS5hiZph0T86dfz23njltziPANU
KhRvU45XBpK0RTYQAHIBUdGUHwtFDmP4I6b4WA8flMAi1UeKWDt3UftWJQ1NL3z9obbnWkyrCtIz
t/dKCjPZNcdfoEBrEpC/FmXVWuN026sJChttxcRLwdto/c3GfdB1Arm9i8ankxGyuiOtN2WQLVhw
/K3juz2HOgvT8oGahGOSBw45UqMfrHHTa1gfdYuc6qNPJC++lCe2LRQRl2HEofYlpzXXtwv7Refd
aaupcTGAH4pkQVnMQGaqjuw0YoW2kNY8t+8auAX8zCXK9yVZBRl3jmiJFWJ93XBuGI6NdnvanSR2
RlcQ27CXgMVJH/vcGYgKu7LtGaY2JqAkMRsA/mTvpbaVkzmkbTQQnDMQru7syNWJz+0bGzDdxlaa
mq0hKR4hx+hO7Kg/devZjWUCl/vYiIrt4CyhvFCIBAe56JGw0wUac5jufxHkGKpAdiyQepuyI8p8
41A30DY6Y7dI7uQ93CSsTAmuuEqYzztcbRAVBULffJrba56eumXaHpm74Ycc/TJMqK5NoAXGfxWh
oLuKDj0tKeAPAYbtqrF1jEV9MVMViP5g/9ZiT3dF9iPSuPKhzrunul8gv90zYVgfCY1j5Y7d9hfg
SE/YIwlDsIz3zbbA01KBoWfPPh/P/PkBBtzX2qcLV+LQAsjU0Q3onFZ/S+PVDmzqV+Uj6erYhcjM
6J27YjAWMALqC2Vyx1TrH0bnVvofjFt6blxAUZ9ktoebYeJunuKQF20mwkLiYwArcji1du2bjQxB
aAmsv91pQkoQpB+lYHUHu0j7J9jrDyOgXy274kcioBQSDoaIVU3KLFrWYukoyGVNaqGh8JSlTaWJ
fD7/dVfZk0op7/pLj0qeDc1Z75KqDAlExbe6ya98YE+VAhmTr64Aa7dnP4vOwmxEnLzvMPcxlPhn
Gc4xJfUbWNB+X92LKu6r0RNpFMTwpiupY1fQV5vFdalWQvl5lwfSi7nghuq8UgUZ83ZX1yjB7Hq/
Vd2s13XH5PkNks7MarxZ3u1vlcPtJhQaFjaL/ta6YXZE66xOORSMgFc4NXEQ0s8XyroI2MLi+moz
lhl2YCNeTvXygDjijhCd+NXSvEFE8/DG3M3ZlLcHt2WlugypAVqMFxCZrbVb5G7sQjZ4K2IaHEWh
1VftCWSzAYR4BuAnLD+B36Auwd+rh1q6OQvYxP2zf67xMTDLxvz7stpKXlRuuEeKSb8ToatZq3pX
Mre4f0kgfglf0qRZOfUbZF4uEvX6OLu/LA63+uoAz2dO1R0enqYwgZpwUeh49bESrEHifyU563m/
CuhZJteU2jXdmMKvOBS26KoSTfgCsmAoYmw3uAupTNIw2vB0Ix0jpaBss3QN2FpcMudh5k5Di/tk
8ciPdWlin2BO7sIhe+n76VH9TKcchQPV/+i7dkncbbFSQxW7AiNmpl2f8DCqAMaG3NO2TROCPZjm
d5Zzb/+x6UCc7qNhrVWwgGiOoPMfdevWHm81S59EZgd0dTlDk8mu2bfmrOLeXe6zLbA6TdD/42Aq
l/ySkDx0PJHUVwvcEeshFaD/OBTkMXQKuFi84tCjJPMZz0UMAg9UsLr00Vdb/OWD+I4/FrMIH5jo
uaYGHh8trgGIs7uOduxihuhMVo44+j6S5AuTxUXeyH3p1S0yOf7eEWt0lBqULPTtbcOfTEXjtZhk
io3jjR+mHun6iauvVmb7zwSnQi7jkiux6NH+s1nhWpxp/K5eX9BsFSqEn5dVB46OMMcDjzfVLTWQ
phmKNRET6PwYn9yuKQyRmvi21CIng5T4ZU8+NMOiPRf6MzmIqp76ckcqbVohkPkgg/2e7GeBJ6XC
TIJ18RGE/hjJH8biYa0l1KHrBZtOETJpG0IyUC9w4/H47Qyvcmshg/XQ11vIM+iKAMeuw8fxxARt
GU2JaEtb+loLwJC6ubd0KSaTzrkNMHjXbqhYAq8iejj76PZGgrS1XcHmfDTtzddC3IoRpVJCeHkW
P4jIp2ASytO+h9p1DC4hKE/bQ5cySSNWs7lvYofrB/H9d6Sz8tEL7FgcVtNwvn4HYPunvzL7mlD6
WLcOpB/9DzmxRy2B7Srh9tBvF+aeV2976QrDwJXdy1OBKE6zhysFykbMo6R0X3rCPRHwjR3sfYgy
88NqXyZ8Ec+v61qAietiSAbn8XoQ1JWfyDTYLDL20d1zhEWeRXbANKSFXYQNPxzWFj2nfnizBPuV
9Ay3302duSiuXkWlzQQdSC6fyJaWKtfaXXseNqBYF4bArzWgWepZAdbHAfwT3gwtXp69wPikcGlz
lKw5qXi3H7TC9IBaVtPk7ns6YM8UFbRebZnk40j2HS1YQEd5RWff8J80ECOARZevV8TOcAak4teL
9Hn8l8Em3P7ve6guRiVZW1ZqnbFk+GV0aew61nXS45jzCK/61qCaXEZNffn/Yy+gJqMoWnFin/mu
sIHnS0BTy+nmILXztPHwacNRUO3Imp4kJ5L1JQfT4n/km9dnXxvNI/sKM3nSmY5+FeqzWo7QedQc
5iwHXH4MfQp5m9T433hSdzk2l3xO9mbTMWlLIWwr6JaVYC9smtEMCUu1j0SoAV4dNFejh4Yq/8EK
yFue1u3T3Ev49UmGm36VmUpiIgsjWemMha1wp/L1UkbjxsBsDHC4fzS18hQ/5PEJN0tsQw8Gx6Vx
/Sk8AMCEf1m9NdpD2xbmMse26fBLCpchlzgklZW4zlMrPor4HbmLo/2uMpQwXLNsL8EEFMZhtcBc
4DHXBfw2Qhqx6S69Kt64HkChl7TX8uXwMkeacbwKxuHu/jRvt5KQl/jMWWma8WE0FvzTZBjBNXZw
GP9xYBKunT1K1eBjCrLxSFLVjuJRk4/MIhc23DdJhtTzd2qOByJVv4Ifh/IGWb3xAABxXV8dN/8y
gktagWMvFzW38wJRI3QrO/ibwKsrl7PO57HBHI2Mp6e/PnwUl+YJKlrmnbTDMG08uqIJ38OpBqz7
H+UZpUEaHjImXRF11/xwSEg55AKLRtBZCOJw0lDPpLI6TjLI3CMe7Am8rgtbOp9+AdnlAOGGgFLc
LLRXc6WIH1Y+CBKRJQLuSitbvMHbNeuZzMpuOK9kzzY/t/2iEllwcnWfGZLUFv7KRUsLoXSUsblo
YvC9/oxoyFOc2rHJVU0XKrl5wPLraAj0dO3H56l+W1nMxPMYYNV+fCBo4zom9MAvXyN6rGsUwerh
CdNfX5jvRncl+NwHj2eByM46l3kZ1n0qVdNS1GlEcN9Mxk6BGk0wxZmu0NKKxJ4fC/SekEFabsJi
9Y7el1TTw5ajh9e3xm3R0qCuTqTuxue+l6QK3pX6YJ1IwENu5nQOeA0j4cVRlRQxb1e8998A5FP3
t2duZyN+zX2Ocabkd7r1EXs7B+ZFleBSMqTZT9SGx9Hh0uczJsrO2BpwUJBpegFjSvOuHnSw2NOJ
MiYfLbnu/v9OcwoQ8siArORMhZFdqpBimqjE7cON4fm9d0H4HFE0wURzHXg0cr9hzomoDyruW1Ek
T6bhjAEMouBTX9Nk35d9rKk7lZavSPWqJesjKiJH0dDLhG7ZjCAwsn2uZ522kyDal4o35qh9qhnP
6OFww0SePRV6TnDv0Gt97akLG8Xql8ypLArXQvoPnQrpeRUINOoTU/LAFzPXluTW9L47vDRxFHSw
E3Omtl09GGXoWgh9lF5PU9VEUg13xmHmi3vietju5r3nwuW9GKzC9Zs8SyGLkVgi+A6zQ0T/KGBS
QI7hgW7BXalZvWczpDWao9k6w37NX9wm0qqY1nWy3D4UIZuDvYPZ7HaVzmaUN63gw8aZfpWhtRQu
thms/YEJ8JWpg2HQ0mhCLVhm8xsxXQxIk2ZXZ+eRQeIN4m3EOsoR2qLXs3HlIbTlbzUg581x5lKh
uK2s4V59dg7dfBodGgSzYvAnv0N02qk3L9uDkKevlkha2i1gv4P5LDNzqZhF/CUF29OvKvNsWVW9
gdat1bHkA8BCg4mSi6NG6D4q03X21WUcCddxk63SMeXG1m94c/dWPIobb/5cC0N4JMSbM1Gl5Pcf
05DWiiRBANN/CecPOrF5oAaG3ksaUQCnz1jHIQaf4z14tl9lcfiznSxdTgzEu0gqnzqvk+qw6/8b
l1y1QeH7Z2OELOMzXT4y9J92YBj0RpLLUdg7qo9PBlw1cfj96jp0zLXVSDACCTQrzQYDR9jAVnoM
R3ieVEGvzM5eosPSWjYOtd9pbVIsZ372ClYXZsm1n0gjU0q0dlVgZun2anxUIusiIsanDZJfipgx
xyB72QM3zc5+md4QRL0FC7+ROshYsy+GnRPr1x1IL7eE/rV1hcX7op81eyvtRieH3PSwrUpoxtxO
kVogUynuitug0cd97ivgQqCqH9aX+tjI951RhCsR+48G5vwH6j+r8g1fr4yrMD8lTTCdzmPRNGMG
ZQ3D4F8YEI3b8OsDMpG8ciBS7Huifbn3/2KlOErLyLxwBcUPaNGF6Dl+mQgvv0xJz24SQENTS++b
qwQDurnf3gVH4z/rf5YolG/gQDCdXw97LRn70t7yKRQ3Vq50+Jxe82ZkfeTuHOXhstlh5WLL/Shg
2sOIFVQDhFp/SN/UjWVOT+LlkKIiiZvSazxFn1vFUI9HOwX7rk50lVCqvJG6iQVKY0v+qqT9DyJe
NTeqQhWP2rJ9wm1jNnSp5+LlqP/ze7/nxhOvKCux61O52SSlfK/t49i4Em6a0uCJboGgm73P190I
Zvg8niWtNv5SU3oKuEPTM/dAhu/P0WsLQG2lRDI9RHpUG2g7w5autDrgEa3n4rm0nFu29rGu7vBC
e/PPtGUi0BkWIFoB9HqXAZQzo0RP6E+aD12VcGXaUr3qXup96EskyduqYSiCYDEKeZAPLBD6NkKk
ihCe+dKaOz2HF7fVbaFBIwgmhZgLu9KNccrGim5Jp2K3FK79gOCAHw62kg+J27TJTYzOs8/ijGDn
l77b5Dx5Vs1hCfRheMgAp7FbCz1DW/dhYv455AY1AvX6Ahp/7WVvuM0Sq7rTwsPEgj/QVA+UmW6R
S8kcCul9Tv/8KVml0FxaFKCSvjFXBVbdgn5IF9wGqsG2gu0zBzhOencHuphd1wi1b7SXx9Cw+WTq
+8Xdb1684F4QOPUmv9Xb4NxdrCekUtUYtgRkfIpUN05up6ANnVapBHDlSayjimbMg6J/tBBgTlyF
8gWwN+igRVSTzGNmBIdh5NmN8SUM3VKUSZGP+CKNE9b6RlYRmHmLEojv+Hj8N8V3ITKxvtEr4w++
Eg1YyZ3IEuTqB2Y6jyJQVblJ7dzRODPPPIteNbMPU5Xu9k9eOdwf78l16FCfnjR+LGzxbzy3lInh
v+tbqWfXyLrVK0qoKZg20ENZIiiH0pkX5Aptzw7DOv7ZHw8VMgEuzUHmqQ20I5dMAK7SNVRrbm7V
sJMqh8M79CvMdgoJUFbH6rtWPyiMwZlqHAZJhbZi9JMOldaSGvxjPLljze4hEnT+31l9tSwQY0qE
uzQFMP8oTFma8NY8ci8rHRMEalzKi7FQnM+iBJnTBCi2LP4mgjISwEd3ND2Oqx4Hg6z5br6fWnuS
IbWdWQfbTyTspbV/hxUZAaj1NN2rffOSfk9ys6pN9ri/YOFifxxl/CURUCs3fqCLbartdOZ1H2Ho
FPL+Gxmlatkv4NQ/jO6GXAqzmTNTy0r+QncGTwnuxC+dnk2qjG5kTRwXSDfbFWJpysxPoapmRsS+
C2PXMMRBxokiJBgZ5B7nSUi6e8YGxLS4FdhRWkxWf1EdtphW0kRDEfb1NDDNWm5nqCEAkQQpaysn
HDYz1VBnP8+N3Oz61L1Hicmt1QlgUZJuD6TvMO/oDTIG3lfJhFcI7NlukrQbZpTRHpMQdp/55wPq
e6DV0i71tEk2HxNni53ucEPwNf6PUycLOzK+xZbdBka+keUdbknYp0IL/3godfcJKER83Ai2iw0+
OpCoYe03oB/ipsMAlTViHD6aQW1iydXOHg3x+NG7NKg/v58ymsbZR7aAOcp8Fa3ez4xU0L/KtPqm
AhPaEwPMiEQFZ1tb661cxWpGN2MGHG+aryiiwCZs0J13tFUTXtXqt9LJuvNz2kZQSfTF9s38zOgG
IXrFDGlSGvyoMEtrvoJMFHybZZW67MnUvnGBek5eTcrUS80fUw9V3FSapvZCUMYXYKohi9QdzHXd
tDgJAeCbs7PmFK/wZz3hs/CTjYa6a7ycI1oCf7ZFYvOBHpso/nokfKiw2EPbn4Mm8hWo0fD337He
oT0D+nrVPyZ76XCYCf3IqfpccSf44DXTO7tXRowETkidXC4CZiDxcLxV6JUu+pCTjH6yB5JqYCtk
9fTnuFBY2HuU/3xgactJ0cB5r4y6KYph3Ib17IB0afBszt9JOUCZyLCTiFyEDWgqF/lFPRqZbsGN
4wRsJEhq8tIE9kzz2Rc802XURnACJDAkwefPt4BcLu7bZJsZGrAa/oMe33YZUqyghdxQi9YWFFwf
CsPGqVcQdq0UFbo521zLqDwUSnESTefNtfXGZ7DZW1U6nsC1edCUn5Un+ppH2Qu44HzxeKRWeL9I
cfpV3H13rEm98zB9B++4UvDOnff3pGSM7nIWbYAHuXM/WrtwHZ6+L2LZNzGB6kPU5ibyZHBi1vXJ
ezoFaYxsewvsa39J/aOdqmUJeJszoY+NLynWqYo+LHoD5mZh/CDAjezwMPjK1JlyYQFIrrB+slmy
4h8Q+5j0U6X3yDsCCn9njPbha+HxNr1Y5qyrcdj66nfD12KqabNe4zzpsuDhQsYGwe1cCCNLL0/Y
f5BxjBiX8PCxX0Skh2Az1ktSbjG/x7S7+zH/tF4C5C+GFJv9vEeB3axCdUFa9wG2K/GXl6h+XofM
8lUWMsZ5+4RNLTZYfcEXP909GQQg6gY2OZdcSbJU79LMA3Tp7sMcLHc/JMPL6nGSLpuRAQQG/sSQ
zenijS8MNeuvP1IEoScyETTZtHmKh5fkw5kQxmo77DO2AOvJbVcay3sH8IkkQGTSxPb4cFtteciq
xbk2lpW79tWPqiynvTRtVB+S8PMCoSfxUhaEUPP6STc+3L4DOhnF+5fB7keGyIiagrAwgU/GC9VH
bO//AryiE9hV6ehF8FyuQiYmzVxJpMWVfR91Y7Klyg6as+FOap7oRoI9BYwqsP83MpGOUgHrqj7U
2qzwMh69yLMy5yqG4edL8rdnloK75SJB+loZba7Z4eBUWhjr99pc5CqfEdz5s5fIX1vsCcVf6tu+
wRPOxtVbT8SyoW2Nxnj9VVDoIH6IIDPtgnFqnfgfqLxIYKPmmyuhYyRd/CYFvNvGG4w2mF6Y4Dui
5crsFxsoSmYBbROcyzBjquVMYCYC6vmJYNxGCOkHiKSESjvWoUlniQVTLhwoH2fdMNf06O1/7vS5
9CygBklL1h1ebG1p3nDGrGEJRLx17AMxkPKc+lyESXAeO2/tCsR1kFDOmKuuYB0dLPrmfo53tK9t
+IlFBlfgDthR1IoyTjQhYlMt3nNIuuliPDjHD3qbAiUDLurHxBHV/rVng2o4NTCqTTIhe5e++ni2
2pMCsqCDxCQZgJ3MN5NDTlfor+qj/96Veg7TzxwSkX29AHll+yx7LZehjIR5Ra929h6wuhJKQp92
KsnG+Mk5kIG3//2xP6HHGJAkquXb/yHs8A3VOXxfM8K1DI94LWkx3sEYl1qLjNW6nZtKx4akDSLd
q5vcePLYl4akBodY5j1utNf/k89bc5W1atWfa9jdwg8GZghfIRY2uREvds9st6tWmdj0sBWzlpM3
SiowCIG+gMAhZecCTRSrFehNJ9lnOWiDrq3lJmAbXZIK9po0tNX0hsIBvoNNFOayRMCpTls0rrNE
h7WyZc5D0ruiWH65DHqsZb6gmw56AdBM9NfRHIkkglVzzYBfYUbLi9fe/uEPRWT4dHipncdISCwi
PzACStjs970MBDEg0Qwtl6WQ3wkWAThaI3tdfPieYlQAq/wF3qKncOk0m5ruCxI+AFIhXiFNIxzR
s03IgooHVYVBaWWPVkZbOoaKrRPiOogc0pdiLdSqP9DS6wbWp7tWNJYDQzlWp2hQDJvQTRa4qo2q
Nfm9uP8gSLamerWktKNBmp9l3DcDS6g1o9UiXKJSIRwzVln7LcTrMMjW98CFAzw19ByDb+hRIy+6
F2dYl9B1iPXNMsKrx5uIriMllQeRH6kCmJ29l++/zFnNNfKILTsCZ1L6MZUqsunVKc8wCrrAYwdm
kBa6kxP6Jriq0DstSMG8QDEvIKa1RFTA5NlU7PMviQ+Qxz3eWqW8o59nuKLohvLq6gLcBpZYlIhb
k6EZKRFfAMrtpwP1BoFzb5BXBqZtp7Gv7XM2R5G8CybcTXDczx1CJNSu5Xgr+mAGJ5yXkgOfliWy
fzITDmt4Pm8zr/PLAqzG4f/su+XsnvD6WIT32GEstk8fzH2zXx+46yG2sItJY92I8sxtq2ZOTn92
pIPN8Tg/4LjpIAwgEYx4kDWEe0WwyQE4WlVaUZWeFi038xEDKImjeWAAqgReO4o/aDAha0wTw+kX
KkRO7na1E6JLrFdig0Pkphu3V8WY1l9L4SCCKstG35M+69iv7vZkWJGZgbT4YdBHvQy4JqPiOtL/
83ox3ounmtX6hWZyPhMoNs3txtHob8pcAw77AIX/E146q7SdrwEajSYPCeEUji14Dw1N2SuhCFOw
p9J10D7LZPeGOTdErllws9an7os9p5UO8rUjQw8nyqV/pg2uRS54wqnQ8w6c1ocOx6YLVaz7aWPO
YQEsQk3tm4K4rVASEVBMlELavmXKJlm24lx1nrB47ozd/DtQAj6wl4DsedYqtzs9BJQseAdnnwY1
PT7vSWbaOtyMlC6QmkKnqY24amnLfDKaEEXix/zWhzsUcuifVa/5Qux7u/E4KQp4rLpNa3FoPGp5
rLFm3vYRLSIiirRp+dMTLo7+Y//VlNUfoZytrdnJuVhjSajkZ0K1G/DIs7AC9UZ9Wb17F4rYuLLM
uJ1uAPRSMW5OHHUJwf+KzTjjvKmzI83CKYpJq/fAiDl4O7lTIZMQ4n9it7S8gjehlH5irvPNtUQV
usoefXWRQpjBWnFG6YBGOc84IkqbyBJ7+/NaK1zcYS3lr/5GsPIpZqmgmz0vS5JBnSH1MelCbXmq
MLHEfc4kGa2B/5feCm1Kf/LN4BVmVVbAwHp1nj77Zii+tsh8BS/7iUDFaoV5nNKpTNkXAJpv9R35
fyC6u+U+uNW/PMwIaEf9cW7FgZrqn/blZltqixbDU98GmppF8K9jk049jMzGad1fU3HWdG1WQo02
07n4XUgwpYu785W8SFhd500/e/nulxI2eVdyKs8Xg3iQMF99+mcucFWu2KSu1KVE8ZhdlZYfQON1
Ww+s0Dn7bxL+p9YJ3GLlX06q/l78wRVIPTbTVJPQcblpuYZGGuXhjjyGRjm6QkT1sh9RBDrrCGVs
YW1xbrXKRhWMswDY4hhYmLpDdxdPaTNAGMlgW9b4rZ6UhIuvTelx1BPM7LJlTVTovcGOzRzwlw5Z
N+gMWRobX8Dwy3HGGep8vbzy3B0D6097OLx7quWBfJFlJlrmeuE+AprRAU4bOwvnPDMOGHOQhkjD
IuYfgrcQTVrclXM/S5OEdFOv/s4aq1QKUxiQzA82sxuQcrV97c4gRamEU+Uit6Y+WvT4wU9dTggZ
k+MPR33xud/rEciRKfIHkHdsM3jGpWvVRbtEGsYB3L+MI4Wn2dZE5PkS9YzRn0ynyL0mIh4Jh1jY
km3m45vLHayTQ4g2EbnjntKZtDEpNCEhSb0mAmDAAIhbt45NsAtbfZ70Nw/ERUKjv25kLYW020Oe
VOetBPKAxXtMNdZqjKdhGqCYaArXe1nD97++eZNrOsjj2+fq0ahhBj42b2tSeInql2IKgssLdW2b
RJfnGLlYJUHb2lFIIjljuHbG9FQcQ8MPLutlLeNQoatmIvWWdN7hqfM0O0bikfmOJlmpb2di/ZtD
tqGc8NB3WX7VUMJLanxfGQuGyTRe+xxanQowkcRZJd/3os2A6Gpl2CTNBKDzmBafD7M/Wn+GodH2
sUe0JkkoWdD0k4pWFhjm6bkCGbvBLIhLzbL31hB2RJqvy9O5X80Yd94FafTk6jElXo5XsHMi19LG
JybYOQLbjjZ8iMyRgfAkuIjUr0vl9dV5MEEQpaXNl1IxOXye7AowFIC9wbEFci3Ck6aaMWf10U+B
sLSgq2v+rixNw7yGmkVfOQU45a2OPnokKM9WnWkWdJs8poF7nebLb9kJEMZITyC+OltoCR2Rq240
QeGqu+xhFU5ZMK4ZpaztTogv7k8wpSJ3atG2QqxM4A1ND/YAma8W3u5MxRHGtFFT4plYqVo1upfG
8CyDS6hvvTLfQUVOOE08ctrk5uHNFzaNwaLBW02c46vPOGdd0YsIWPUVY/+hfwfwliL4RYYWdcqO
eTggx77tGqoaqfxvgvArgW9JpImn96sZzgn3YZMkERMYVNvaRdR7iJfavkIp/RBU5PkA8iADbuy1
TxILSO9Ug5OGgFZJATLvT91JP/Rfc9/6uEyd15mpU0LAzfXCZyCGSSwmhRvdGpIZ2IumHwi0cQpq
UJQqhPuFzPT9yJnBA4WGOZsMnyKnyDQMjOZ1bQokaB1mvbr3LWO541n9442JrjHE4xzzxNvxJ05p
OZr6uzfIoKJ00DPhV36OnjuLnC5ZvPZ7S0nABKtWC1VlCUttwY4vOezW3bk+SF4t3VU0qxquoS5/
y2SyJv7Aa4pAWCnTkqdhgjzvj2dZVdkNW0zq1FLsW1/DLIhmVbXA2aHDv6rTEa4OHaDfnBiZ46zN
IwBc91anFh6Cx0IAJkrR9AHgw5PI/9p33eMaylJ7L8BbJUfhFrd3rpIvqi7lkf4D3e8ZfbiEJSXQ
bADxUS7ByZhWUiiKq1f2VqYThyQWnu+tXlywS1gogKGOFO4xl5ga6xbs1kFwioJIbSVyWZ0LySr7
pp/KSShQoGBFzLxIF+cxSbZxDyouqFk4v57KlerSb5lvET9ZOi0YDFt4BVCAZmmngSamttGo+gO0
SkKYERpyKpQNWUoDAC/Zxd1fdbClsn/1Lf2ez5XO0guE/l20FPhkVkSvML7J9AyeZ+vec38SPgGC
Ml/KwUn5777jrYz4cc4D7QJrvEy46WSXnpRT4XLrYPG7sEploVEOA4wzqBVnHF3KNNbkQ3+2ULMg
INa6HZoWPLngCrAmCHD1cQ1UYPAuQSwUwBMuu5McAZPfEJZTC26xL50jRVP5k3XaiATP1znLsbj8
BcWJKulBBZ6HfxoQb61fLP3NUBOX0P8sMMPSV8MlgPBB9y4gFYocGYzj0d/8Zrrgk6jX4E7ymzXx
227v5HUiRa9fzurdyscD9Sa4sSAlXkQ3MSfUv+rZavZbLpnbxqTuECkUdjzFuCaLtoQGSfH4Wg7a
rImz3j4MuYw6pySw10i6DSBdRjyoQUZOL34iNR4dvp88iWBUZ2u9xDtxf02b4Z+F/6BkflH3uAb1
uHPyRv3tGbvQu1wq0DZzohKWw4HMCrEx/vssXs81mIhpyvPHbz4meqYPZyLWzOuqyOhan0l2qS7C
Rl5xM4K/ksuSZ0MHLaaNcEOcbzSYOvda79WeqECGYyd1FT/dIxlxMN4V9jv+urlYIez3THP293Ob
upZ+KIJxWxJYxzggkYrO8bdn5zyqH77D4NkG73kNUEMEskFYhHcgVg76AemKsS7L+2dqFnumuExr
RwERR18d9cwxGFl59W0zVs5ljGeaq/p9TxAliQkh+95xWcFeNjY0WvvfuJ83XaUx0DG4XEcl0beN
/uqVtYG7O3THXd1PlbGwxqcV8n6IFASe1Hwxr5FWOUjvQAhEZALNfAwHG3E2emGMgwiy+3gz1r0J
Fmo7kXF6P3UJhC+IG04JrEgZD9OXTe4Uoj69qQ+yXYrwWiUpy2xWBGhBlrfuDJcyQs9SJWD0uszF
pnn2xOPG5MH33+GrqowIalGU7gDNA1Df+W6yW7H8ddbD363ToQDYsKRzrdrDrFzY/zsu4/lmSD0J
5rEr0uOtPfF0GDDoRkvZ+WGqZS+/ebQwC1S+mlpLY22+pI1RD7yaut09dD8k61q8br2qbUSCiMvh
4LuRNNPC+Z1rT77lPIKxoHUoR3RPw9lRNQ03OCpNE1IZNRVTVZyjh0bf89W+1CRKIP9ER4+laiVy
w/qGgpobxJ3rykWg72vEp9OT5yP7LQr9kDH4VlQ7kh+RYhbSmHBeJjUDTtuRbqGCC750O9sp7GzB
qp+2xqD6OqOOyDVK6/oBTp0RIg7Aytn0KQNkTkmJOyUbPWVAhKQiuYDZ6uhwwArNwcRWuVmJHlWu
ra6SwoLkPTCl/QBbyZ23XjoJb5Rl8B1d/dQeJLmn2qEJ6dESNLWaNankJSkj4Gy3AH4QAPmpViAT
zWYSmyc9h4xCwRw4/5Y+oXgPB5DZUd969YOG1lfUKF5qyC0NhusKzV43eMUlcfkWyxNNOGOMieBZ
IRzSdQ4dz5a3BlMsFTXydIaMv7liCQxhNEe8Cb5u2KRpJTZBMOJG2b3Y71Z0xiL4zy0sen+2macl
3mrx0WkX2++QFmKVWtDsopGCmAONmTYRbUSSkzHBbImfLNG1HP1EtU3sW4+fAmJ8cnVmdgdOiHoa
phKrGrNO2UOMBL9Knx0ylbSG9ABqa8VGDV4Apqf7mDb+pqbL4oZ6zfGqXaKU5ILKk8xkTfuzM/hb
nG8LIVFQuxVT/XkTfWh59JVlSakFE/g3aJiAqCC4HocJ4fPhckZDMuVcTTTYy1KRanPknNBMA6rr
PR4xrFuVfJyO9YeI8fYmK5Xu0XskF5tOzaV6UDMxOPjOVvSlke9K3M/vKw/kCvf9sW1UqodyA/TQ
mT9keUYPRTRZ+Sx1s9+SOdyYICGznkl2k4nf6tLhTeU3+8ys6NUhh6I7fUKcjJUnbJnGpYIK6IyE
E9v3/Dy3voDo2dpyqp1eSwUe/iBOsRonJRKDDnBrhsavQ67AqoxU2eG8yI1qJdf2UPuMoXWG/Oqs
k4XZECjAM3eR5zYkZxVw3S0uo+8CXysmQRUJhQ19avx9dpb8kqvcgdOQC6m25cAtVMDlhE0sgfGs
a17XEG1J4nZU0NsL62qQe7fEOb6dbZTOzybRnw6RmiY8aDg0yDpnLoWG7gkeAPWM24SQY1BnT2+J
vbuOJjF3c6A/7Tlp3L0f+lEVk8myv7yAYP88bqtx2imgrqhKLBC0Es6OJNays7RXH2c4BKCD/rX3
tXd0LR4TP2he+zfVBbTVM5VesZym8gjpL0vQavwEtzffbRizulS4l4VEj16wSn2pUq//hpvpxOg7
Xt012TturJYMusA2yeK77vQCqTs3KXdYuzYT8wnJ9gR+HN0bQUztZoNX9sYb2AV/9b9wYKYHs41S
KpI91raLF+w8PmzVXSZZnfLfjd3+hEWfoN1Bz+FIP6NM3L/0HAUqmfejzYp8saBox3te1FLxKcUV
AnGnamsYaGeben2m8TK1On4scOcxwR7ddqvy8iPa5eE2a/fW22imZDtEUVPwJ5RThwPnf4Ua1DSP
+bZwTq9t7d3DESLPylPl7dQ3gKQzoivD7X0NQFwRS1uhFuNQbzCn0W1X0cqW/1c2H7QJ00w8lFYg
N71QaZne1Er/0/66VklgQXOqAurj4Dni2TpfrNA87w0ap13pPnpjkS3WAQYRt/8QPoTDtjWEVTIl
1ddnzlEDSSajW1PSuZjrbYqPggu+nhgykNhLJ0eJPIp4key1CGdZ+kA2Y3F//euoZJAIvjTB1sTJ
dPVqqkSIRSYmQlJmcLvw1t8WEB5gZvrq93V5Lr8gWXrhgFppdrL96+5JBIWD56c5T9yy+F8kNEdu
S7vwdUL9qcFD+7YElOMTdtyUbRFiVXv8MGRL6cZUELkTzqsryqzk8h7lc6YPNqkkd6xvLZeb247n
JLvdaGXPnPeJMZdlpjfKjkG5AM2yu7Els4L61E8GvV7P1vAdVt6NV8Zi7Mhpt/86CM7I/pLBucrV
J8RIt2XECpLEx/miT6FqbdkbqzVifuFpKgoTFns7h66pV3aejfxcJzuIOn51PgU79IUMbULvCGhz
gY64LVJvNyT9ZzZmvvWcJNS6jFdAs4Yglv93trbGf56NA0wQXTlV6l42U/3c4ODBw/6RZgULM0lw
nGW6N3v/s4vQN4VVau62ayGJeCqqgQm1KzDdeRmHH174rh7xT1fLmXsHV0QVWkAm+6HDHMrVmUf0
ZpyV7UGzLCpKGgC60teEdISBoQjyNz80hZQB0PgoeKczSzpm6ffVas6AJxTe1TaeL5hZBK0t0lqr
BnfqkxkVvn//zhwLHM8a6T6dUcQeBaV2rvkn7zXpmPL9Z/4YJ4OA0EWvai7EVBlY+7D92KKZ4Hi/
s9R/OcMu0zQBaPDiH8PyuvfQiIfNsyMYvwiQ0o9iVb1TEP5JNnlNK0ttwCCbsdNSHHHVFIzrWEis
9V6q9TbmBXLjhhNDHhN3sVyOyRqsiU0gM6HWqJoqh+tIaFkpj45EnViFs+U1Uak/fPYbvaZuwvlU
r1pdpHhgKaihaQbShicjGzk9pBJImCxaJPb2dnoVkaQOcIBYQjxhE9up0CgJW6OOYsF2xFUd5U7h
ZIe8Qg==
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
