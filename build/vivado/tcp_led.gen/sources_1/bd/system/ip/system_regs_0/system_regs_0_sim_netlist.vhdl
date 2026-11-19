-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Thu Nov 12 16:37:13 2026
-- Host        : BartOS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/barts/Documents/ChatGPT/Project
--               Data-diode/tcp_ps_pl_led_demo/build/vivado/tcp_led.gen/sources_1/bd/system/ip/system_regs_0/system_regs_0_sim_netlist.vhdl}
-- Design      : system_regs_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_regs_0_led_registers is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    bv_reg_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    led_n : out STD_LOGIC;
    rv_reg_0 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_regs_0_led_registers : entity is "led_registers";
end system_regs_0_led_registers;

architecture STRUCTURE of system_regs_0_led_registers is
  signal aw : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \aw_reg_n_0_[0]\ : STD_LOGIC;
  signal \aw_reg_n_0_[1]\ : STD_LOGIC;
  signal \aw_reg_n_0_[2]\ : STD_LOGIC;
  signal \aw_reg_n_0_[3]\ : STD_LOGIC;
  signal \aw_reg_n_0_[4]\ : STD_LOGIC;
  signal \aw_reg_n_0_[5]\ : STD_LOGIC;
  signal \br[1]_i_10_n_0\ : STD_LOGIC;
  signal \br[1]_i_11_n_0\ : STD_LOGIC;
  signal \br[1]_i_12_n_0\ : STD_LOGIC;
  signal \br[1]_i_13_n_0\ : STD_LOGIC;
  signal \br[1]_i_1_n_0\ : STD_LOGIC;
  signal \br[1]_i_2_n_0\ : STD_LOGIC;
  signal \br[1]_i_3_n_0\ : STD_LOGIC;
  signal \br[1]_i_4_n_0\ : STD_LOGIC;
  signal \br[1]_i_5_n_0\ : STD_LOGIC;
  signal \br[1]_i_6_n_0\ : STD_LOGIC;
  signal \br[1]_i_7_n_0\ : STD_LOGIC;
  signal \br[1]_i_8_n_0\ : STD_LOGIC;
  signal \br[1]_i_9_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal bv_i_1_n_0 : STD_LOGIC;
  signal \^bv_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \command_reg_n_0_[0]\ : STD_LOGIC;
  signal \command_reg_n_0_[10]\ : STD_LOGIC;
  signal \command_reg_n_0_[11]\ : STD_LOGIC;
  signal \command_reg_n_0_[12]\ : STD_LOGIC;
  signal \command_reg_n_0_[13]\ : STD_LOGIC;
  signal \command_reg_n_0_[14]\ : STD_LOGIC;
  signal \command_reg_n_0_[15]\ : STD_LOGIC;
  signal \command_reg_n_0_[16]\ : STD_LOGIC;
  signal \command_reg_n_0_[17]\ : STD_LOGIC;
  signal \command_reg_n_0_[18]\ : STD_LOGIC;
  signal \command_reg_n_0_[19]\ : STD_LOGIC;
  signal \command_reg_n_0_[1]\ : STD_LOGIC;
  signal \command_reg_n_0_[20]\ : STD_LOGIC;
  signal \command_reg_n_0_[21]\ : STD_LOGIC;
  signal \command_reg_n_0_[22]\ : STD_LOGIC;
  signal \command_reg_n_0_[23]\ : STD_LOGIC;
  signal \command_reg_n_0_[24]\ : STD_LOGIC;
  signal \command_reg_n_0_[25]\ : STD_LOGIC;
  signal \command_reg_n_0_[26]\ : STD_LOGIC;
  signal \command_reg_n_0_[27]\ : STD_LOGIC;
  signal \command_reg_n_0_[28]\ : STD_LOGIC;
  signal \command_reg_n_0_[29]\ : STD_LOGIC;
  signal \command_reg_n_0_[2]\ : STD_LOGIC;
  signal \command_reg_n_0_[30]\ : STD_LOGIC;
  signal \command_reg_n_0_[31]\ : STD_LOGIC;
  signal \command_reg_n_0_[3]\ : STD_LOGIC;
  signal \command_reg_n_0_[4]\ : STD_LOGIC;
  signal \command_reg_n_0_[5]\ : STD_LOGIC;
  signal \command_reg_n_0_[6]\ : STD_LOGIC;
  signal \command_reg_n_0_[7]\ : STD_LOGIC;
  signal \command_reg_n_0_[8]\ : STD_LOGIC;
  signal \command_reg_n_0_[9]\ : STD_LOGIC;
  signal \completed[0]_i_2_n_0\ : STD_LOGIC;
  signal completed_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \completed_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \completed_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal have_aw : STD_LOGIC;
  signal have_aw_i_1_n_0 : STD_LOGIC;
  signal have_w_i_1_n_0 : STD_LOGIC;
  signal have_w_reg_n_0 : STD_LOGIC;
  signal led : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rd[0]_i_2_n_0\ : STD_LOGIC;
  signal \rd[16]_i_2_n_0\ : STD_LOGIC;
  signal \rd[31]_i_4_n_0\ : STD_LOGIC;
  signal \rd[31]_i_5_n_0\ : STD_LOGIC;
  signal \rr[1]_i_1_n_0\ : STD_LOGIC;
  signal rv03_out : STD_LOGIC;
  signal rv_i_1_n_0 : STD_LOGIC;
  signal \^rv_reg_0\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wd : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wd_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ws : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_completed_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \br[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of bv_i_1 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \completed_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \completed_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of led_n_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rv_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair2";
begin
  bv_reg_0 <= \^bv_reg_0\;
  rv_reg_0 <= \^rv_reg_0\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
\aw[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_awvalid,
      I2 => \^bv_reg_0\,
      I3 => have_aw,
      O => aw(0)
    );
\aw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(0),
      Q => \aw_reg_n_0_[0]\,
      R => '0'
    );
\aw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(1),
      Q => \aw_reg_n_0_[1]\,
      R => '0'
    );
\aw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(2),
      Q => \aw_reg_n_0_[2]\,
      R => '0'
    );
\aw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(3),
      Q => \aw_reg_n_0_[3]\,
      R => '0'
    );
\aw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(4),
      Q => \aw_reg_n_0_[4]\,
      R => '0'
    );
\aw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw(0),
      D => s_axi_awaddr(5),
      Q => \aw_reg_n_0_[5]\,
      R => '0'
    );
\br[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2AAAAA"
    )
        port map (
      I0 => \br[1]_i_2_n_0\,
      I1 => \br[1]_i_3_n_0\,
      I2 => \br[1]_i_4_n_0\,
      I3 => \br[1]_i_5_n_0\,
      I4 => \br[1]_i_6_n_0\,
      O => \br[1]_i_1_n_0\
    );
\br[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(19),
      I1 => p_0_in(16),
      I2 => p_0_in(21),
      I3 => p_0_in(18),
      O => \br[1]_i_10_n_0\
    );
\br[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(27),
      I1 => p_0_in(24),
      I2 => p_0_in(29),
      I3 => p_0_in(26),
      O => \br[1]_i_11_n_0\
    );
\br[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => have_w_reg_n_0,
      I1 => have_aw,
      I2 => \^bv_reg_0\,
      I3 => p_1_in_0(0),
      I4 => \aw_reg_n_0_[0]\,
      I5 => \aw_reg_n_0_[1]\,
      O => \br[1]_i_12_n_0\
    );
\br[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \aw_reg_n_0_[5]\,
      I1 => \aw_reg_n_0_[4]\,
      I2 => \aw_reg_n_0_[3]\,
      I3 => \aw_reg_n_0_[2]\,
      O => \br[1]_i_13_n_0\
    );
\br[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA0000"
    )
        port map (
      I0 => \^s_axi_bresp\(0),
      I1 => \^bv_reg_0\,
      I2 => have_aw,
      I3 => have_w_reg_n_0,
      I4 => s_axi_aresetn,
      O => \br[1]_i_2_n_0\
    );
\br[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(13),
      I2 => p_0_in(14),
      I3 => p_0_in(15),
      I4 => \br[1]_i_7_n_0\,
      O => \br[1]_i_3_n_0\
    );
\br[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \br[1]_i_8_n_0\,
      O => \br[1]_i_4_n_0\
    );
\br[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \br[1]_i_9_n_0\,
      I1 => \br[1]_i_10_n_0\,
      I2 => p_0_in(28),
      I3 => p_0_in(30),
      I4 => p_0_in(17),
      I5 => \br[1]_i_11_n_0\,
      O => \br[1]_i_5_n_0\
    );
\br[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \br[1]_i_12_n_0\,
      I1 => \br[1]_i_13_n_0\,
      I2 => ws(3),
      I3 => ws(2),
      I4 => ws(1),
      I5 => ws(0),
      O => \br[1]_i_6_n_0\
    );
\br[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(10),
      I2 => p_0_in(9),
      I3 => p_0_in(8),
      O => \br[1]_i_7_n_0\
    );
\br[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(6),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      O => \br[1]_i_8_n_0\
    );
\br[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in(23),
      I1 => p_0_in(20),
      I2 => p_0_in(25),
      I3 => p_0_in(22),
      O => \br[1]_i_9_n_0\
    );
\br_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \br[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \br[1]_i_6_n_0\,
      I1 => \br[1]_i_5_n_0\,
      I2 => \br[1]_i_4_n_0\,
      I3 => \br[1]_i_3_n_0\,
      I4 => s_axi_aresetn,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => p_1_in_0(0),
      R => '0'
    );
bv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40EA0000"
    )
        port map (
      I0 => \^bv_reg_0\,
      I1 => have_aw,
      I2 => have_w_reg_n_0,
      I3 => s_axi_bready,
      I4 => s_axi_aresetn,
      O => bv_i_1_n_0
    );
bv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bv_i_1_n_0,
      Q => \^bv_reg_0\,
      R => '0'
    );
\command[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \br[1]_i_6_n_0\,
      I1 => \br[1]_i_5_n_0\,
      I2 => \br[1]_i_4_n_0\,
      I3 => \br[1]_i_3_n_0\,
      O => busy
    );
\command_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => wd(0),
      Q => \command_reg_n_0_[0]\,
      R => clear
    );
\command_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(9),
      Q => \command_reg_n_0_[10]\,
      R => clear
    );
\command_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(10),
      Q => \command_reg_n_0_[11]\,
      R => clear
    );
\command_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(11),
      Q => \command_reg_n_0_[12]\,
      R => clear
    );
\command_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(12),
      Q => \command_reg_n_0_[13]\,
      R => clear
    );
\command_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(13),
      Q => \command_reg_n_0_[14]\,
      R => clear
    );
\command_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(14),
      Q => \command_reg_n_0_[15]\,
      R => clear
    );
\command_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(15),
      Q => \command_reg_n_0_[16]\,
      R => clear
    );
\command_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(16),
      Q => \command_reg_n_0_[17]\,
      R => clear
    );
\command_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(17),
      Q => \command_reg_n_0_[18]\,
      R => clear
    );
\command_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(18),
      Q => \command_reg_n_0_[19]\,
      R => clear
    );
\command_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(0),
      Q => \command_reg_n_0_[1]\,
      R => clear
    );
\command_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(19),
      Q => \command_reg_n_0_[20]\,
      R => clear
    );
\command_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(20),
      Q => \command_reg_n_0_[21]\,
      R => clear
    );
\command_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(21),
      Q => \command_reg_n_0_[22]\,
      R => clear
    );
\command_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(22),
      Q => \command_reg_n_0_[23]\,
      R => clear
    );
\command_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(23),
      Q => \command_reg_n_0_[24]\,
      R => clear
    );
\command_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(24),
      Q => \command_reg_n_0_[25]\,
      R => clear
    );
\command_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(25),
      Q => \command_reg_n_0_[26]\,
      R => clear
    );
\command_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(26),
      Q => \command_reg_n_0_[27]\,
      R => clear
    );
\command_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(27),
      Q => \command_reg_n_0_[28]\,
      R => clear
    );
\command_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(28),
      Q => \command_reg_n_0_[29]\,
      R => clear
    );
\command_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(1),
      Q => \command_reg_n_0_[2]\,
      R => clear
    );
\command_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(29),
      Q => \command_reg_n_0_[30]\,
      R => clear
    );
\command_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(30),
      Q => \command_reg_n_0_[31]\,
      R => clear
    );
\command_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(2),
      Q => \command_reg_n_0_[3]\,
      R => clear
    );
\command_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(3),
      Q => \command_reg_n_0_[4]\,
      R => clear
    );
\command_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(4),
      Q => \command_reg_n_0_[5]\,
      R => clear
    );
\command_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(5),
      Q => \command_reg_n_0_[6]\,
      R => clear
    );
\command_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(6),
      Q => \command_reg_n_0_[7]\,
      R => clear
    );
\command_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(7),
      Q => \command_reg_n_0_[8]\,
      R => clear
    );
\command_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => busy,
      D => p_0_in(8),
      Q => \command_reg_n_0_[9]\,
      R => clear
    );
\completed[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => completed_reg(0),
      O => \completed[0]_i_2_n_0\
    );
\completed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[0]_i_1_n_7\,
      Q => completed_reg(0),
      R => clear
    );
\completed_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \completed_reg[0]_i_1_n_0\,
      CO(2) => \completed_reg[0]_i_1_n_1\,
      CO(1) => \completed_reg[0]_i_1_n_2\,
      CO(0) => \completed_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \completed_reg[0]_i_1_n_4\,
      O(2) => \completed_reg[0]_i_1_n_5\,
      O(1) => \completed_reg[0]_i_1_n_6\,
      O(0) => \completed_reg[0]_i_1_n_7\,
      S(3 downto 1) => completed_reg(3 downto 1),
      S(0) => \completed[0]_i_2_n_0\
    );
\completed_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[8]_i_1_n_5\,
      Q => completed_reg(10),
      R => clear
    );
\completed_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[8]_i_1_n_4\,
      Q => completed_reg(11),
      R => clear
    );
\completed_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[12]_i_1_n_7\,
      Q => completed_reg(12),
      R => clear
    );
\completed_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[8]_i_1_n_0\,
      CO(3) => \completed_reg[12]_i_1_n_0\,
      CO(2) => \completed_reg[12]_i_1_n_1\,
      CO(1) => \completed_reg[12]_i_1_n_2\,
      CO(0) => \completed_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[12]_i_1_n_4\,
      O(2) => \completed_reg[12]_i_1_n_5\,
      O(1) => \completed_reg[12]_i_1_n_6\,
      O(0) => \completed_reg[12]_i_1_n_7\,
      S(3 downto 0) => completed_reg(15 downto 12)
    );
\completed_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[12]_i_1_n_6\,
      Q => completed_reg(13),
      R => clear
    );
\completed_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[12]_i_1_n_5\,
      Q => completed_reg(14),
      R => clear
    );
\completed_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[12]_i_1_n_4\,
      Q => completed_reg(15),
      R => clear
    );
\completed_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[16]_i_1_n_7\,
      Q => completed_reg(16),
      R => clear
    );
\completed_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[12]_i_1_n_0\,
      CO(3) => \completed_reg[16]_i_1_n_0\,
      CO(2) => \completed_reg[16]_i_1_n_1\,
      CO(1) => \completed_reg[16]_i_1_n_2\,
      CO(0) => \completed_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[16]_i_1_n_4\,
      O(2) => \completed_reg[16]_i_1_n_5\,
      O(1) => \completed_reg[16]_i_1_n_6\,
      O(0) => \completed_reg[16]_i_1_n_7\,
      S(3 downto 0) => completed_reg(19 downto 16)
    );
\completed_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[16]_i_1_n_6\,
      Q => completed_reg(17),
      R => clear
    );
\completed_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[16]_i_1_n_5\,
      Q => completed_reg(18),
      R => clear
    );
\completed_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[16]_i_1_n_4\,
      Q => completed_reg(19),
      R => clear
    );
\completed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[0]_i_1_n_6\,
      Q => completed_reg(1),
      R => clear
    );
\completed_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[20]_i_1_n_7\,
      Q => completed_reg(20),
      R => clear
    );
\completed_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[16]_i_1_n_0\,
      CO(3) => \completed_reg[20]_i_1_n_0\,
      CO(2) => \completed_reg[20]_i_1_n_1\,
      CO(1) => \completed_reg[20]_i_1_n_2\,
      CO(0) => \completed_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[20]_i_1_n_4\,
      O(2) => \completed_reg[20]_i_1_n_5\,
      O(1) => \completed_reg[20]_i_1_n_6\,
      O(0) => \completed_reg[20]_i_1_n_7\,
      S(3 downto 0) => completed_reg(23 downto 20)
    );
\completed_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[20]_i_1_n_6\,
      Q => completed_reg(21),
      R => clear
    );
\completed_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[20]_i_1_n_5\,
      Q => completed_reg(22),
      R => clear
    );
\completed_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[20]_i_1_n_4\,
      Q => completed_reg(23),
      R => clear
    );
\completed_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[24]_i_1_n_7\,
      Q => completed_reg(24),
      R => clear
    );
\completed_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[20]_i_1_n_0\,
      CO(3) => \completed_reg[24]_i_1_n_0\,
      CO(2) => \completed_reg[24]_i_1_n_1\,
      CO(1) => \completed_reg[24]_i_1_n_2\,
      CO(0) => \completed_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[24]_i_1_n_4\,
      O(2) => \completed_reg[24]_i_1_n_5\,
      O(1) => \completed_reg[24]_i_1_n_6\,
      O(0) => \completed_reg[24]_i_1_n_7\,
      S(3 downto 0) => completed_reg(27 downto 24)
    );
\completed_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[24]_i_1_n_6\,
      Q => completed_reg(25),
      R => clear
    );
\completed_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[24]_i_1_n_5\,
      Q => completed_reg(26),
      R => clear
    );
\completed_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[24]_i_1_n_4\,
      Q => completed_reg(27),
      R => clear
    );
\completed_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[28]_i_1_n_7\,
      Q => completed_reg(28),
      R => clear
    );
\completed_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[24]_i_1_n_0\,
      CO(3) => \NLW_completed_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \completed_reg[28]_i_1_n_1\,
      CO(1) => \completed_reg[28]_i_1_n_2\,
      CO(0) => \completed_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[28]_i_1_n_4\,
      O(2) => \completed_reg[28]_i_1_n_5\,
      O(1) => \completed_reg[28]_i_1_n_6\,
      O(0) => \completed_reg[28]_i_1_n_7\,
      S(3 downto 0) => completed_reg(31 downto 28)
    );
\completed_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[28]_i_1_n_6\,
      Q => completed_reg(29),
      R => clear
    );
\completed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[0]_i_1_n_5\,
      Q => completed_reg(2),
      R => clear
    );
\completed_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[28]_i_1_n_5\,
      Q => completed_reg(30),
      R => clear
    );
\completed_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[28]_i_1_n_4\,
      Q => completed_reg(31),
      R => clear
    );
\completed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[0]_i_1_n_4\,
      Q => completed_reg(3),
      R => clear
    );
\completed_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[4]_i_1_n_7\,
      Q => completed_reg(4),
      R => clear
    );
\completed_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[0]_i_1_n_0\,
      CO(3) => \completed_reg[4]_i_1_n_0\,
      CO(2) => \completed_reg[4]_i_1_n_1\,
      CO(1) => \completed_reg[4]_i_1_n_2\,
      CO(0) => \completed_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[4]_i_1_n_4\,
      O(2) => \completed_reg[4]_i_1_n_5\,
      O(1) => \completed_reg[4]_i_1_n_6\,
      O(0) => \completed_reg[4]_i_1_n_7\,
      S(3 downto 0) => completed_reg(7 downto 4)
    );
\completed_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[4]_i_1_n_6\,
      Q => completed_reg(5),
      R => clear
    );
\completed_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[4]_i_1_n_5\,
      Q => completed_reg(6),
      R => clear
    );
\completed_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[4]_i_1_n_4\,
      Q => completed_reg(7),
      R => clear
    );
\completed_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[8]_i_1_n_7\,
      Q => completed_reg(8),
      R => clear
    );
\completed_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \completed_reg[4]_i_1_n_0\,
      CO(3) => \completed_reg[8]_i_1_n_0\,
      CO(2) => \completed_reg[8]_i_1_n_1\,
      CO(1) => \completed_reg[8]_i_1_n_2\,
      CO(0) => \completed_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \completed_reg[8]_i_1_n_4\,
      O(2) => \completed_reg[8]_i_1_n_5\,
      O(1) => \completed_reg[8]_i_1_n_6\,
      O(0) => \completed_reg[8]_i_1_n_7\,
      S(3 downto 0) => completed_reg(11 downto 8)
    );
\completed_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \completed_reg[8]_i_1_n_6\,
      Q => completed_reg(9),
      R => clear
    );
have_aw_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C008CC08"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_aresetn,
      I2 => \^bv_reg_0\,
      I3 => have_aw,
      I4 => have_w_reg_n_0,
      O => have_aw_i_1_n_0
    );
have_aw_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => have_aw_i_1_n_0,
      Q => have_aw,
      R => '0'
    );
have_w_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CC0808"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_aresetn,
      I2 => \^bv_reg_0\,
      I3 => have_aw,
      I4 => have_w_reg_n_0,
      O => have_w_i_1_n_0
    );
have_w_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => have_w_i_1_n_0,
      Q => have_w_reg_n_0,
      R => '0'
    );
led_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led,
      O => led_n
    );
led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => p_1_in_0(0),
      D => \command_reg_n_0_[0]\,
      Q => led,
      R => clear
    );
\rd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000CAAAA"
    )
        port map (
      I0 => \rd[0]_i_2_n_0\,
      I1 => completed_reg(0),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(4),
      I5 => \rd[16]_i_2_n_0\,
      O => p_1_in(0)
    );
\rd[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => p_1_in_0(0),
      I1 => \command_reg_n_0_[0]\,
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      I4 => led,
      O => \rd[0]_i_2_n_0\
    );
\rd[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[10]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(10),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(10)
    );
\rd[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[11]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(11),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(11)
    );
\rd[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[12]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(12),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(12)
    );
\rd[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[13]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(13),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(13)
    );
\rd[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[14]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(14),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(14)
    );
\rd[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[15]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(15),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(15)
    );
\rd[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003230023"
    )
        port map (
      I0 => \command_reg_n_0_[16]\,
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(4),
      I4 => completed_reg(16),
      I5 => \rd[16]_i_2_n_0\,
      O => p_1_in(16)
    );
\rd[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(5),
      O => \rd[16]_i_2_n_0\
    );
\rd[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[17]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(17),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(17)
    );
\rd[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[18]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(18),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(18)
    );
\rd[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[19]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(19),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(19)
    );
\rd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000016121410"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => \command_reg_n_0_[1]\,
      I4 => completed_reg(1),
      I5 => \rd[16]_i_2_n_0\,
      O => p_1_in(1)
    );
\rd[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[20]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(20),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(20)
    );
\rd[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[21]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(21),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(21)
    );
\rd[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[22]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(22),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(22)
    );
\rd[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[23]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(23),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(23)
    );
\rd[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[24]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(24),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(24)
    );
\rd[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[25]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(25),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(25)
    );
\rd[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[26]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(26),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(26)
    );
\rd[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[27]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(27),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(27)
    );
\rd[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[28]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(28),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(28)
    );
\rd[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[29]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(29),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(29)
    );
\rd[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[2]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(2),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(2)
    );
\rd[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[30]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(30),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(30)
    );
\rd[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => clear
    );
\rd[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^rv_reg_0\,
      O => rv03_out
    );
\rd[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[31]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(31),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(31)
    );
\rd[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \rd[31]_i_4_n_0\
    );
\rd[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(4),
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \rd[31]_i_5_n_0\
    );
\rd[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[3]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(3),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(3)
    );
\rd[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[4]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(4),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(4)
    );
\rd[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[5]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(5),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(5)
    );
\rd[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[6]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(6),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(6)
    );
\rd[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[7]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(7),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(7)
    );
\rd[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[8]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(8),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(8)
    );
\rd[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \command_reg_n_0_[9]\,
      I1 => \rd[31]_i_4_n_0\,
      I2 => completed_reg(9),
      I3 => \rd[31]_i_5_n_0\,
      O => p_1_in(9)
    );
\rd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(0),
      Q => s_axi_rdata(0),
      R => clear
    );
\rd_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(10),
      Q => s_axi_rdata(10),
      R => clear
    );
\rd_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(11),
      Q => s_axi_rdata(11),
      R => clear
    );
\rd_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(12),
      Q => s_axi_rdata(12),
      R => clear
    );
\rd_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(13),
      Q => s_axi_rdata(13),
      R => clear
    );
\rd_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(14),
      Q => s_axi_rdata(14),
      R => clear
    );
\rd_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(15),
      Q => s_axi_rdata(15),
      R => clear
    );
\rd_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(16),
      Q => s_axi_rdata(16),
      R => clear
    );
\rd_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(17),
      Q => s_axi_rdata(17),
      R => clear
    );
\rd_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(18),
      Q => s_axi_rdata(18),
      R => clear
    );
\rd_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(19),
      Q => s_axi_rdata(19),
      R => clear
    );
\rd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(1),
      Q => s_axi_rdata(1),
      R => clear
    );
\rd_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(20),
      Q => s_axi_rdata(20),
      R => clear
    );
\rd_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(21),
      Q => s_axi_rdata(21),
      R => clear
    );
\rd_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(22),
      Q => s_axi_rdata(22),
      R => clear
    );
\rd_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(23),
      Q => s_axi_rdata(23),
      R => clear
    );
\rd_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(24),
      Q => s_axi_rdata(24),
      R => clear
    );
\rd_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(25),
      Q => s_axi_rdata(25),
      R => clear
    );
\rd_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(26),
      Q => s_axi_rdata(26),
      R => clear
    );
\rd_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(27),
      Q => s_axi_rdata(27),
      R => clear
    );
\rd_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(28),
      Q => s_axi_rdata(28),
      R => clear
    );
\rd_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(29),
      Q => s_axi_rdata(29),
      R => clear
    );
\rd_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(2),
      Q => s_axi_rdata(2),
      R => clear
    );
\rd_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(30),
      Q => s_axi_rdata(30),
      R => clear
    );
\rd_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(31),
      Q => s_axi_rdata(31),
      R => clear
    );
\rd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(3),
      Q => s_axi_rdata(3),
      R => clear
    );
\rd_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(4),
      Q => s_axi_rdata(4),
      R => clear
    );
\rd_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(5),
      Q => s_axi_rdata(5),
      R => clear
    );
\rd_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(6),
      Q => s_axi_rdata(6),
      R => clear
    );
\rd_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(7),
      Q => s_axi_rdata(7),
      R => clear
    );
\rd_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(8),
      Q => s_axi_rdata(8),
      R => clear
    );
\rd_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => p_1_in(9),
      Q => s_axi_rdata(9),
      R => clear
    );
\rr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(5),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \rr[1]_i_1_n_0\
    );
\rr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rv03_out,
      D => \rr[1]_i_1_n_0\,
      Q => s_axi_rresp(0),
      R => clear
    );
rv_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7200"
    )
        port map (
      I0 => \^rv_reg_0\,
      I1 => s_axi_rready,
      I2 => s_axi_arvalid,
      I3 => s_axi_aresetn,
      O => rv_i_1_n_0
    );
rv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rv_i_1_n_0,
      Q => \^rv_reg_0\,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rv_reg_0\,
      O => s_axi_arready
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => have_aw,
      I1 => \^bv_reg_0\,
      O => s_axi_awready
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => have_w_reg_n_0,
      I1 => \^bv_reg_0\,
      O => s_axi_wready
    );
\wd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(0),
      Q => wd(0),
      R => '0'
    );
\wd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(10),
      Q => p_0_in(9),
      R => '0'
    );
\wd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(11),
      Q => p_0_in(10),
      R => '0'
    );
\wd_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(12),
      Q => p_0_in(11),
      R => '0'
    );
\wd_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(13),
      Q => p_0_in(12),
      R => '0'
    );
\wd_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(14),
      Q => p_0_in(13),
      R => '0'
    );
\wd_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(15),
      Q => p_0_in(14),
      R => '0'
    );
\wd_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(16),
      Q => p_0_in(15),
      R => '0'
    );
\wd_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(17),
      Q => p_0_in(16),
      R => '0'
    );
\wd_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(18),
      Q => p_0_in(17),
      R => '0'
    );
\wd_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(19),
      Q => p_0_in(18),
      R => '0'
    );
\wd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(1),
      Q => p_0_in(0),
      R => '0'
    );
\wd_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(20),
      Q => p_0_in(19),
      R => '0'
    );
\wd_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(21),
      Q => p_0_in(20),
      R => '0'
    );
\wd_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(22),
      Q => p_0_in(21),
      R => '0'
    );
\wd_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(23),
      Q => p_0_in(22),
      R => '0'
    );
\wd_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(24),
      Q => p_0_in(23),
      R => '0'
    );
\wd_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(25),
      Q => p_0_in(24),
      R => '0'
    );
\wd_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(26),
      Q => p_0_in(25),
      R => '0'
    );
\wd_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(27),
      Q => p_0_in(26),
      R => '0'
    );
\wd_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(28),
      Q => p_0_in(27),
      R => '0'
    );
\wd_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(29),
      Q => p_0_in(28),
      R => '0'
    );
\wd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(2),
      Q => p_0_in(1),
      R => '0'
    );
\wd_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(30),
      Q => p_0_in(29),
      R => '0'
    );
\wd_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(31),
      Q => p_0_in(30),
      R => '0'
    );
\wd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(3),
      Q => p_0_in(2),
      R => '0'
    );
\wd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(4),
      Q => p_0_in(3),
      R => '0'
    );
\wd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(5),
      Q => p_0_in(4),
      R => '0'
    );
\wd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(6),
      Q => p_0_in(5),
      R => '0'
    );
\wd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(7),
      Q => p_0_in(6),
      R => '0'
    );
\wd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(8),
      Q => p_0_in(7),
      R => '0'
    );
\wd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wdata(9),
      Q => p_0_in(8),
      R => '0'
    );
\ws[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_wvalid,
      I2 => \^bv_reg_0\,
      I3 => have_w_reg_n_0,
      O => wd_1(0)
    );
\ws_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wstrb(0),
      Q => ws(0),
      R => '0'
    );
\ws_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wstrb(1),
      Q => ws(1),
      R => '0'
    );
\ws_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wstrb(2),
      Q => ws(2),
      R => '0'
    );
\ws_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wd_1(0),
      D => s_axi_wstrb(3),
      Q => ws(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_regs_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    led_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_regs_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_regs_0 : entity is "system_regs_0,led_registers,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_regs_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_regs_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_regs_0 : entity is "led_registers,Vivado 2026.1";
end system_regs_0;

architecture STRUCTURE of system_regs_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of s_axi_aclk : signal is "slave s_axi_aclk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave s_axi_aresetn";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave s_axi";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_ps7_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_regs_0_led_registers
     port map (
      bv_reg_0 => s_axi_bvalid,
      led_n => led_n,
      rv_reg_0 => s_axi_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(5 downto 0) => s_axi_araddr(5 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(5 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
