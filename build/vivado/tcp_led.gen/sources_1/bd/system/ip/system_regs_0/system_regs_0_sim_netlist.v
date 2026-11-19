// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Thu Nov 12 16:37:13 2026
// Host        : BartOS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/barts/Documents/ChatGPT/Project
//               Data-diode/tcp_ps_pl_led_demo/build/vivado/tcp_led.gen/sources_1/bd/system/ip/system_regs_0/system_regs_0_sim_netlist.v}
// Design      : system_regs_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_regs_0,led_registers,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "led_registers,Vivado 2026.1" *) 
(* NotValidForBitStream *)
module system_regs_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    led_n);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_mode = "slave s_axi_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_mode = "slave s_axi_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_mode = "slave s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_ps7_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  output led_n;

  wire \<const0> ;
  wire led_n;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_regs_0_led_registers U0
       (.bv_reg_0(s_axi_bvalid),
        .led_n(led_n),
        .rv_reg_0(s_axi_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "led_registers" *) 
module system_regs_0_led_registers
   (s_axi_rdata,
    s_axi_rresp,
    bv_reg_0,
    s_axi_bresp,
    s_axi_awready,
    s_axi_wready,
    led_n,
    rv_reg_0,
    s_axi_arready,
    s_axi_wstrb,
    s_axi_aclk,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_bready,
    s_axi_rready);
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output bv_reg_0;
  output [0:0]s_axi_bresp;
  output s_axi_awready;
  output s_axi_wready;
  output led_n;
  output rv_reg_0;
  output s_axi_arready;
  input [3:0]s_axi_wstrb;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input [5:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [5:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_bready;
  input s_axi_rready;

  wire [0:0]aw;
  wire \aw_reg_n_0_[0] ;
  wire \aw_reg_n_0_[1] ;
  wire \aw_reg_n_0_[2] ;
  wire \aw_reg_n_0_[3] ;
  wire \aw_reg_n_0_[4] ;
  wire \aw_reg_n_0_[5] ;
  wire \br[1]_i_10_n_0 ;
  wire \br[1]_i_11_n_0 ;
  wire \br[1]_i_12_n_0 ;
  wire \br[1]_i_13_n_0 ;
  wire \br[1]_i_1_n_0 ;
  wire \br[1]_i_2_n_0 ;
  wire \br[1]_i_3_n_0 ;
  wire \br[1]_i_4_n_0 ;
  wire \br[1]_i_5_n_0 ;
  wire \br[1]_i_6_n_0 ;
  wire \br[1]_i_7_n_0 ;
  wire \br[1]_i_8_n_0 ;
  wire \br[1]_i_9_n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire bv_i_1_n_0;
  wire bv_reg_0;
  wire clear;
  wire \command_reg_n_0_[0] ;
  wire \command_reg_n_0_[10] ;
  wire \command_reg_n_0_[11] ;
  wire \command_reg_n_0_[12] ;
  wire \command_reg_n_0_[13] ;
  wire \command_reg_n_0_[14] ;
  wire \command_reg_n_0_[15] ;
  wire \command_reg_n_0_[16] ;
  wire \command_reg_n_0_[17] ;
  wire \command_reg_n_0_[18] ;
  wire \command_reg_n_0_[19] ;
  wire \command_reg_n_0_[1] ;
  wire \command_reg_n_0_[20] ;
  wire \command_reg_n_0_[21] ;
  wire \command_reg_n_0_[22] ;
  wire \command_reg_n_0_[23] ;
  wire \command_reg_n_0_[24] ;
  wire \command_reg_n_0_[25] ;
  wire \command_reg_n_0_[26] ;
  wire \command_reg_n_0_[27] ;
  wire \command_reg_n_0_[28] ;
  wire \command_reg_n_0_[29] ;
  wire \command_reg_n_0_[2] ;
  wire \command_reg_n_0_[30] ;
  wire \command_reg_n_0_[31] ;
  wire \command_reg_n_0_[3] ;
  wire \command_reg_n_0_[4] ;
  wire \command_reg_n_0_[5] ;
  wire \command_reg_n_0_[6] ;
  wire \command_reg_n_0_[7] ;
  wire \command_reg_n_0_[8] ;
  wire \command_reg_n_0_[9] ;
  wire \completed[0]_i_2_n_0 ;
  wire [31:0]completed_reg;
  wire \completed_reg[0]_i_1_n_0 ;
  wire \completed_reg[0]_i_1_n_1 ;
  wire \completed_reg[0]_i_1_n_2 ;
  wire \completed_reg[0]_i_1_n_3 ;
  wire \completed_reg[0]_i_1_n_4 ;
  wire \completed_reg[0]_i_1_n_5 ;
  wire \completed_reg[0]_i_1_n_6 ;
  wire \completed_reg[0]_i_1_n_7 ;
  wire \completed_reg[12]_i_1_n_0 ;
  wire \completed_reg[12]_i_1_n_1 ;
  wire \completed_reg[12]_i_1_n_2 ;
  wire \completed_reg[12]_i_1_n_3 ;
  wire \completed_reg[12]_i_1_n_4 ;
  wire \completed_reg[12]_i_1_n_5 ;
  wire \completed_reg[12]_i_1_n_6 ;
  wire \completed_reg[12]_i_1_n_7 ;
  wire \completed_reg[16]_i_1_n_0 ;
  wire \completed_reg[16]_i_1_n_1 ;
  wire \completed_reg[16]_i_1_n_2 ;
  wire \completed_reg[16]_i_1_n_3 ;
  wire \completed_reg[16]_i_1_n_4 ;
  wire \completed_reg[16]_i_1_n_5 ;
  wire \completed_reg[16]_i_1_n_6 ;
  wire \completed_reg[16]_i_1_n_7 ;
  wire \completed_reg[20]_i_1_n_0 ;
  wire \completed_reg[20]_i_1_n_1 ;
  wire \completed_reg[20]_i_1_n_2 ;
  wire \completed_reg[20]_i_1_n_3 ;
  wire \completed_reg[20]_i_1_n_4 ;
  wire \completed_reg[20]_i_1_n_5 ;
  wire \completed_reg[20]_i_1_n_6 ;
  wire \completed_reg[20]_i_1_n_7 ;
  wire \completed_reg[24]_i_1_n_0 ;
  wire \completed_reg[24]_i_1_n_1 ;
  wire \completed_reg[24]_i_1_n_2 ;
  wire \completed_reg[24]_i_1_n_3 ;
  wire \completed_reg[24]_i_1_n_4 ;
  wire \completed_reg[24]_i_1_n_5 ;
  wire \completed_reg[24]_i_1_n_6 ;
  wire \completed_reg[24]_i_1_n_7 ;
  wire \completed_reg[28]_i_1_n_1 ;
  wire \completed_reg[28]_i_1_n_2 ;
  wire \completed_reg[28]_i_1_n_3 ;
  wire \completed_reg[28]_i_1_n_4 ;
  wire \completed_reg[28]_i_1_n_5 ;
  wire \completed_reg[28]_i_1_n_6 ;
  wire \completed_reg[28]_i_1_n_7 ;
  wire \completed_reg[4]_i_1_n_0 ;
  wire \completed_reg[4]_i_1_n_1 ;
  wire \completed_reg[4]_i_1_n_2 ;
  wire \completed_reg[4]_i_1_n_3 ;
  wire \completed_reg[4]_i_1_n_4 ;
  wire \completed_reg[4]_i_1_n_5 ;
  wire \completed_reg[4]_i_1_n_6 ;
  wire \completed_reg[4]_i_1_n_7 ;
  wire \completed_reg[8]_i_1_n_0 ;
  wire \completed_reg[8]_i_1_n_1 ;
  wire \completed_reg[8]_i_1_n_2 ;
  wire \completed_reg[8]_i_1_n_3 ;
  wire \completed_reg[8]_i_1_n_4 ;
  wire \completed_reg[8]_i_1_n_5 ;
  wire \completed_reg[8]_i_1_n_6 ;
  wire \completed_reg[8]_i_1_n_7 ;
  wire have_aw;
  wire have_aw_i_1_n_0;
  wire have_w_i_1_n_0;
  wire have_w_reg_n_0;
  wire led;
  wire led_n;
  wire [30:0]p_0_in;
  wire [31:0]p_1_in;
  wire [0:0]p_1_in_0;
  wire \rd[0]_i_2_n_0 ;
  wire \rd[16]_i_2_n_0 ;
  wire \rd[31]_i_4_n_0 ;
  wire \rd[31]_i_5_n_0 ;
  wire \rr[1]_i_1_n_0 ;
  wire rv03_out;
  wire rv_i_1_n_0;
  wire rv_reg_0;
  wire s_axi_aclk;
  wire [5:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]wd;
  wire [0:0]wd_1;
  wire [3:0]ws;
  wire [3:3]\NLW_completed_reg[28]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0008)) 
    \aw[5]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_awvalid),
        .I2(bv_reg_0),
        .I3(have_aw),
        .O(aw));
  FDRE \aw_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[0]),
        .Q(\aw_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \aw_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[1]),
        .Q(\aw_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \aw_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[2]),
        .Q(\aw_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \aw_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[3]),
        .Q(\aw_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \aw_reg[4] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[4]),
        .Q(\aw_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \aw_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw),
        .D(s_axi_awaddr[5]),
        .Q(\aw_reg_n_0_[5] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA2AAAAA)) 
    \br[1]_i_1 
       (.I0(\br[1]_i_2_n_0 ),
        .I1(\br[1]_i_3_n_0 ),
        .I2(\br[1]_i_4_n_0 ),
        .I3(\br[1]_i_5_n_0 ),
        .I4(\br[1]_i_6_n_0 ),
        .O(\br[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \br[1]_i_10 
       (.I0(p_0_in[19]),
        .I1(p_0_in[16]),
        .I2(p_0_in[21]),
        .I3(p_0_in[18]),
        .O(\br[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \br[1]_i_11 
       (.I0(p_0_in[27]),
        .I1(p_0_in[24]),
        .I2(p_0_in[29]),
        .I3(p_0_in[26]),
        .O(\br[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \br[1]_i_12 
       (.I0(have_w_reg_n_0),
        .I1(have_aw),
        .I2(bv_reg_0),
        .I3(p_1_in_0),
        .I4(\aw_reg_n_0_[0] ),
        .I5(\aw_reg_n_0_[1] ),
        .O(\br[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \br[1]_i_13 
       (.I0(\aw_reg_n_0_[5] ),
        .I1(\aw_reg_n_0_[4] ),
        .I2(\aw_reg_n_0_[3] ),
        .I3(\aw_reg_n_0_[2] ),
        .O(\br[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBAAA0000)) 
    \br[1]_i_2 
       (.I0(s_axi_bresp),
        .I1(bv_reg_0),
        .I2(have_aw),
        .I3(have_w_reg_n_0),
        .I4(s_axi_aresetn),
        .O(\br[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \br[1]_i_3 
       (.I0(p_0_in[12]),
        .I1(p_0_in[13]),
        .I2(p_0_in[14]),
        .I3(p_0_in[15]),
        .I4(\br[1]_i_7_n_0 ),
        .O(\br[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \br[1]_i_4 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\br[1]_i_8_n_0 ),
        .O(\br[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \br[1]_i_5 
       (.I0(\br[1]_i_9_n_0 ),
        .I1(\br[1]_i_10_n_0 ),
        .I2(p_0_in[28]),
        .I3(p_0_in[30]),
        .I4(p_0_in[17]),
        .I5(\br[1]_i_11_n_0 ),
        .O(\br[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \br[1]_i_6 
       (.I0(\br[1]_i_12_n_0 ),
        .I1(\br[1]_i_13_n_0 ),
        .I2(ws[3]),
        .I3(ws[2]),
        .I4(ws[1]),
        .I5(ws[0]),
        .O(\br[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \br[1]_i_7 
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .O(\br[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \br[1]_i_8 
       (.I0(p_0_in[7]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(p_0_in[4]),
        .O(\br[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \br[1]_i_9 
       (.I0(p_0_in[23]),
        .I1(p_0_in[20]),
        .I2(p_0_in[25]),
        .I3(p_0_in[22]),
        .O(\br[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \br_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\br[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20000000)) 
    busy_i_1
       (.I0(\br[1]_i_6_n_0 ),
        .I1(\br[1]_i_5_n_0 ),
        .I2(\br[1]_i_4_n_0 ),
        .I3(\br[1]_i_3_n_0 ),
        .I4(s_axi_aresetn),
        .O(busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(p_1_in_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40EA0000)) 
    bv_i_1
       (.I0(bv_reg_0),
        .I1(have_aw),
        .I2(have_w_reg_n_0),
        .I3(s_axi_bready),
        .I4(s_axi_aresetn),
        .O(bv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bv_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bv_i_1_n_0),
        .Q(bv_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \command[31]_i_1 
       (.I0(\br[1]_i_6_n_0 ),
        .I1(\br[1]_i_5_n_0 ),
        .I2(\br[1]_i_4_n_0 ),
        .I3(\br[1]_i_3_n_0 ),
        .O(busy));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[0] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(wd),
        .Q(\command_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[10] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[9]),
        .Q(\command_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[11] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[10]),
        .Q(\command_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[12] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[11]),
        .Q(\command_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[13] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[12]),
        .Q(\command_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[14] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[13]),
        .Q(\command_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[15] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[14]),
        .Q(\command_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[16] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[15]),
        .Q(\command_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[17] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[16]),
        .Q(\command_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[18] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[17]),
        .Q(\command_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[19] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[18]),
        .Q(\command_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[1] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[0]),
        .Q(\command_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[20] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[19]),
        .Q(\command_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[21] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[20]),
        .Q(\command_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[22] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[21]),
        .Q(\command_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[23] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[22]),
        .Q(\command_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[24] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[23]),
        .Q(\command_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[25] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[24]),
        .Q(\command_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[26] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[25]),
        .Q(\command_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[27] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[26]),
        .Q(\command_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[28] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[27]),
        .Q(\command_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[29] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[28]),
        .Q(\command_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[2] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[1]),
        .Q(\command_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[30] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[29]),
        .Q(\command_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[31] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[30]),
        .Q(\command_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[3] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[2]),
        .Q(\command_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[4] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[3]),
        .Q(\command_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[5] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[4]),
        .Q(\command_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[6] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[5]),
        .Q(\command_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[7] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[6]),
        .Q(\command_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[8] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[7]),
        .Q(\command_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \command_reg[9] 
       (.C(s_axi_aclk),
        .CE(busy),
        .D(p_0_in[8]),
        .Q(\command_reg_n_0_[9] ),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \completed[0]_i_2 
       (.I0(completed_reg[0]),
        .O(\completed[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[0]_i_1_n_7 ),
        .Q(completed_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\completed_reg[0]_i_1_n_0 ,\completed_reg[0]_i_1_n_1 ,\completed_reg[0]_i_1_n_2 ,\completed_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\completed_reg[0]_i_1_n_4 ,\completed_reg[0]_i_1_n_5 ,\completed_reg[0]_i_1_n_6 ,\completed_reg[0]_i_1_n_7 }),
        .S({completed_reg[3:1],\completed[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[8]_i_1_n_5 ),
        .Q(completed_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[8]_i_1_n_4 ),
        .Q(completed_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[12]_i_1_n_7 ),
        .Q(completed_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[12]_i_1 
       (.CI(\completed_reg[8]_i_1_n_0 ),
        .CO({\completed_reg[12]_i_1_n_0 ,\completed_reg[12]_i_1_n_1 ,\completed_reg[12]_i_1_n_2 ,\completed_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[12]_i_1_n_4 ,\completed_reg[12]_i_1_n_5 ,\completed_reg[12]_i_1_n_6 ,\completed_reg[12]_i_1_n_7 }),
        .S(completed_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[12]_i_1_n_6 ),
        .Q(completed_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[12]_i_1_n_5 ),
        .Q(completed_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[12]_i_1_n_4 ),
        .Q(completed_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[16]_i_1_n_7 ),
        .Q(completed_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[16]_i_1 
       (.CI(\completed_reg[12]_i_1_n_0 ),
        .CO({\completed_reg[16]_i_1_n_0 ,\completed_reg[16]_i_1_n_1 ,\completed_reg[16]_i_1_n_2 ,\completed_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[16]_i_1_n_4 ,\completed_reg[16]_i_1_n_5 ,\completed_reg[16]_i_1_n_6 ,\completed_reg[16]_i_1_n_7 }),
        .S(completed_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[16]_i_1_n_6 ),
        .Q(completed_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[16]_i_1_n_5 ),
        .Q(completed_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[16]_i_1_n_4 ),
        .Q(completed_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[0]_i_1_n_6 ),
        .Q(completed_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[20]_i_1_n_7 ),
        .Q(completed_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[20]_i_1 
       (.CI(\completed_reg[16]_i_1_n_0 ),
        .CO({\completed_reg[20]_i_1_n_0 ,\completed_reg[20]_i_1_n_1 ,\completed_reg[20]_i_1_n_2 ,\completed_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[20]_i_1_n_4 ,\completed_reg[20]_i_1_n_5 ,\completed_reg[20]_i_1_n_6 ,\completed_reg[20]_i_1_n_7 }),
        .S(completed_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[20]_i_1_n_6 ),
        .Q(completed_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[20]_i_1_n_5 ),
        .Q(completed_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[20]_i_1_n_4 ),
        .Q(completed_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[24]_i_1_n_7 ),
        .Q(completed_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[24]_i_1 
       (.CI(\completed_reg[20]_i_1_n_0 ),
        .CO({\completed_reg[24]_i_1_n_0 ,\completed_reg[24]_i_1_n_1 ,\completed_reg[24]_i_1_n_2 ,\completed_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[24]_i_1_n_4 ,\completed_reg[24]_i_1_n_5 ,\completed_reg[24]_i_1_n_6 ,\completed_reg[24]_i_1_n_7 }),
        .S(completed_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[24]_i_1_n_6 ),
        .Q(completed_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[24]_i_1_n_5 ),
        .Q(completed_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[24]_i_1_n_4 ),
        .Q(completed_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[28]_i_1_n_7 ),
        .Q(completed_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[28]_i_1 
       (.CI(\completed_reg[24]_i_1_n_0 ),
        .CO({\NLW_completed_reg[28]_i_1_CO_UNCONNECTED [3],\completed_reg[28]_i_1_n_1 ,\completed_reg[28]_i_1_n_2 ,\completed_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[28]_i_1_n_4 ,\completed_reg[28]_i_1_n_5 ,\completed_reg[28]_i_1_n_6 ,\completed_reg[28]_i_1_n_7 }),
        .S(completed_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[28]_i_1_n_6 ),
        .Q(completed_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[0]_i_1_n_5 ),
        .Q(completed_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[28]_i_1_n_5 ),
        .Q(completed_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[28]_i_1_n_4 ),
        .Q(completed_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[0]_i_1_n_4 ),
        .Q(completed_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[4]_i_1_n_7 ),
        .Q(completed_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[4]_i_1 
       (.CI(\completed_reg[0]_i_1_n_0 ),
        .CO({\completed_reg[4]_i_1_n_0 ,\completed_reg[4]_i_1_n_1 ,\completed_reg[4]_i_1_n_2 ,\completed_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[4]_i_1_n_4 ,\completed_reg[4]_i_1_n_5 ,\completed_reg[4]_i_1_n_6 ,\completed_reg[4]_i_1_n_7 }),
        .S(completed_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[4]_i_1_n_6 ),
        .Q(completed_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[4]_i_1_n_5 ),
        .Q(completed_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[4]_i_1_n_4 ),
        .Q(completed_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[8]_i_1_n_7 ),
        .Q(completed_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \completed_reg[8]_i_1 
       (.CI(\completed_reg[4]_i_1_n_0 ),
        .CO({\completed_reg[8]_i_1_n_0 ,\completed_reg[8]_i_1_n_1 ,\completed_reg[8]_i_1_n_2 ,\completed_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\completed_reg[8]_i_1_n_4 ,\completed_reg[8]_i_1_n_5 ,\completed_reg[8]_i_1_n_6 ,\completed_reg[8]_i_1_n_7 }),
        .S(completed_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \completed_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\completed_reg[8]_i_1_n_6 ),
        .Q(completed_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hC008CC08)) 
    have_aw_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_aresetn),
        .I2(bv_reg_0),
        .I3(have_aw),
        .I4(have_w_reg_n_0),
        .O(have_aw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_aw_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_aw_i_1_n_0),
        .Q(have_aw),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC0CC0808)) 
    have_w_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_aresetn),
        .I2(bv_reg_0),
        .I3(have_aw),
        .I4(have_w_reg_n_0),
        .O(have_w_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    have_w_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_w_i_1_n_0),
        .Q(have_w_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    led_n_INST_0
       (.I0(led),
        .O(led_n));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(s_axi_aclk),
        .CE(p_1_in_0),
        .D(\command_reg_n_0_[0] ),
        .Q(led),
        .R(clear));
  LUT6 #(
    .INIT(64'h00000000000CAAAA)) 
    \rd[0]_i_1 
       (.I0(\rd[0]_i_2_n_0 ),
        .I1(completed_reg[0]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[4]),
        .I5(\rd[16]_i_2_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \rd[0]_i_2 
       (.I0(p_1_in_0),
        .I1(\command_reg_n_0_[0] ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[3]),
        .I4(led),
        .O(\rd[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[10]_i_1 
       (.I0(\command_reg_n_0_[10] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[10]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[11]_i_1 
       (.I0(\command_reg_n_0_[11] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[11]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[12]_i_1 
       (.I0(\command_reg_n_0_[12] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[12]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[13]_i_1 
       (.I0(\command_reg_n_0_[13] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[13]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[14]_i_1 
       (.I0(\command_reg_n_0_[14] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[14]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[15]_i_1 
       (.I0(\command_reg_n_0_[15] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[15]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000003230023)) 
    \rd[16]_i_1 
       (.I0(\command_reg_n_0_[16] ),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[4]),
        .I4(completed_reg[16]),
        .I5(\rd[16]_i_2_n_0 ),
        .O(p_1_in[16]));
  LUT3 #(
    .INIT(8'hFE)) 
    \rd[16]_i_2 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[5]),
        .O(\rd[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[17]_i_1 
       (.I0(\command_reg_n_0_[17] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[17]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[18]_i_1 
       (.I0(\command_reg_n_0_[18] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[18]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[19]_i_1 
       (.I0(\command_reg_n_0_[19] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[19]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h0000000016121410)) 
    \rd[1]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(\command_reg_n_0_[1] ),
        .I4(completed_reg[1]),
        .I5(\rd[16]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[20]_i_1 
       (.I0(\command_reg_n_0_[20] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[20]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[21]_i_1 
       (.I0(\command_reg_n_0_[21] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[21]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[22]_i_1 
       (.I0(\command_reg_n_0_[22] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[22]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[23]_i_1 
       (.I0(\command_reg_n_0_[23] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[23]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[24]_i_1 
       (.I0(\command_reg_n_0_[24] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[24]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[25]_i_1 
       (.I0(\command_reg_n_0_[25] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[25]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[26]_i_1 
       (.I0(\command_reg_n_0_[26] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[26]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[27]_i_1 
       (.I0(\command_reg_n_0_[27] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[27]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[28]_i_1 
       (.I0(\command_reg_n_0_[28] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[28]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[29]_i_1 
       (.I0(\command_reg_n_0_[29] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[29]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[2]_i_1 
       (.I0(\command_reg_n_0_[2] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[2]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[30]_i_1 
       (.I0(\command_reg_n_0_[30] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[30]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \rd[31]_i_1 
       (.I0(s_axi_aresetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \rd[31]_i_2 
       (.I0(s_axi_arvalid),
        .I1(rv_reg_0),
        .O(rv03_out));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[31]_i_3 
       (.I0(\command_reg_n_0_[31] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[31]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rd[31]_i_4 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\rd[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \rd[31]_i_5 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\rd[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[3]_i_1 
       (.I0(\command_reg_n_0_[3] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[3]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[4]_i_1 
       (.I0(\command_reg_n_0_[4] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[4]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[5]_i_1 
       (.I0(\command_reg_n_0_[5] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[5]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[6]_i_1 
       (.I0(\command_reg_n_0_[6] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[6]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[7]_i_1 
       (.I0(\command_reg_n_0_[7] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[7]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[8]_i_1 
       (.I0(\command_reg_n_0_[8] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[8]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rd[9]_i_1 
       (.I0(\command_reg_n_0_[9] ),
        .I1(\rd[31]_i_4_n_0 ),
        .I2(completed_reg[9]),
        .I3(\rd[31]_i_5_n_0 ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[0] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[0]),
        .Q(s_axi_rdata[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[10] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[10]),
        .Q(s_axi_rdata[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[11] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[11]),
        .Q(s_axi_rdata[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[12] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[12]),
        .Q(s_axi_rdata[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[13] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[13]),
        .Q(s_axi_rdata[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[14] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[14]),
        .Q(s_axi_rdata[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[15] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[15]),
        .Q(s_axi_rdata[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[16] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[16]),
        .Q(s_axi_rdata[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[17] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[17]),
        .Q(s_axi_rdata[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[18] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[18]),
        .Q(s_axi_rdata[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[19] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[19]),
        .Q(s_axi_rdata[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[1] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[1]),
        .Q(s_axi_rdata[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[20] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[20]),
        .Q(s_axi_rdata[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[21] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[21]),
        .Q(s_axi_rdata[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[22] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[22]),
        .Q(s_axi_rdata[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[23] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[23]),
        .Q(s_axi_rdata[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[24] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[24]),
        .Q(s_axi_rdata[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[25] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[25]),
        .Q(s_axi_rdata[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[26] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[26]),
        .Q(s_axi_rdata[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[27] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[27]),
        .Q(s_axi_rdata[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[28] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[28]),
        .Q(s_axi_rdata[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[29] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[29]),
        .Q(s_axi_rdata[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[2] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[2]),
        .Q(s_axi_rdata[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[30] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[30]),
        .Q(s_axi_rdata[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[31] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[31]),
        .Q(s_axi_rdata[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[3] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[3]),
        .Q(s_axi_rdata[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[4] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[4]),
        .Q(s_axi_rdata[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[5] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[5]),
        .Q(s_axi_rdata[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[6] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[6]),
        .Q(s_axi_rdata[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[7] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[7]),
        .Q(s_axi_rdata[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[8] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[8]),
        .Q(s_axi_rdata[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_reg[9] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(p_1_in[9]),
        .Q(s_axi_rdata[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \rr[1]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\rr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rr_reg[1] 
       (.C(s_axi_aclk),
        .CE(rv03_out),
        .D(\rr[1]_i_1_n_0 ),
        .Q(s_axi_rresp),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7200)) 
    rv_i_1
       (.I0(rv_reg_0),
        .I1(s_axi_rready),
        .I2(s_axi_arvalid),
        .I3(s_axi_aresetn),
        .O(rv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rv_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rv_i_1_n_0),
        .Q(rv_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(rv_reg_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_awready_INST_0
       (.I0(have_aw),
        .I1(bv_reg_0),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_wready_INST_0
       (.I0(have_w_reg_n_0),
        .I1(bv_reg_0),
        .O(s_axi_wready));
  FDRE \wd_reg[0] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[0]),
        .Q(wd),
        .R(1'b0));
  FDRE \wd_reg[10] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[10]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE \wd_reg[11] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[11]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE \wd_reg[12] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[12]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \wd_reg[13] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[13]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE \wd_reg[14] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[14]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE \wd_reg[15] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[15]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE \wd_reg[16] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[16]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE \wd_reg[17] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[17]),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDRE \wd_reg[18] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[18]),
        .Q(p_0_in[17]),
        .R(1'b0));
  FDRE \wd_reg[19] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[19]),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDRE \wd_reg[1] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \wd_reg[20] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[20]),
        .Q(p_0_in[19]),
        .R(1'b0));
  FDRE \wd_reg[21] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[21]),
        .Q(p_0_in[20]),
        .R(1'b0));
  FDRE \wd_reg[22] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[22]),
        .Q(p_0_in[21]),
        .R(1'b0));
  FDRE \wd_reg[23] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[23]),
        .Q(p_0_in[22]),
        .R(1'b0));
  FDRE \wd_reg[24] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[24]),
        .Q(p_0_in[23]),
        .R(1'b0));
  FDRE \wd_reg[25] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[25]),
        .Q(p_0_in[24]),
        .R(1'b0));
  FDRE \wd_reg[26] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[26]),
        .Q(p_0_in[25]),
        .R(1'b0));
  FDRE \wd_reg[27] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[27]),
        .Q(p_0_in[26]),
        .R(1'b0));
  FDRE \wd_reg[28] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[28]),
        .Q(p_0_in[27]),
        .R(1'b0));
  FDRE \wd_reg[29] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[29]),
        .Q(p_0_in[28]),
        .R(1'b0));
  FDRE \wd_reg[2] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[2]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \wd_reg[30] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[30]),
        .Q(p_0_in[29]),
        .R(1'b0));
  FDRE \wd_reg[31] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[31]),
        .Q(p_0_in[30]),
        .R(1'b0));
  FDRE \wd_reg[3] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[3]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \wd_reg[4] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \wd_reg[5] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[5]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \wd_reg[6] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[6]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \wd_reg[7] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[7]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \wd_reg[8] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[8]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \wd_reg[9] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wdata[9]),
        .Q(p_0_in[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \ws[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_wvalid),
        .I2(bv_reg_0),
        .I3(have_w_reg_n_0),
        .O(wd_1));
  FDRE \ws_reg[0] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wstrb[0]),
        .Q(ws[0]),
        .R(1'b0));
  FDRE \ws_reg[1] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wstrb[1]),
        .Q(ws[1]),
        .R(1'b0));
  FDRE \ws_reg[2] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wstrb[2]),
        .Q(ws[2]),
        .R(1'b0));
  FDRE \ws_reg[3] 
       (.C(s_axi_aclk),
        .CE(wd_1),
        .D(s_axi_wstrb[3]),
        .Q(ws[3]),
        .R(1'b0));
endmodule
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
