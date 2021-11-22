// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Nov 22 11:37:18 2021
// Host        : DESKTOP-CHVOD4P running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documentos/uni/poli/TFG/tfg_pr/tfg_pr.srcs/sources_1/ip/mem_ram/mem_ram_sim_netlist.v
// Design      : mem_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mem_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module mem_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
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
  (* C_INIT_FILE = "mem_ram.mem" *) 
  (* C_INIT_FILE_NAME = "mem_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  mem_ram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19456)
`pragma protect data_block
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
/aWnMshOZS9wfYUwDcrP55qzdw==
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
