library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Single-clock AXI4-Lite register slave. AW and W are buffered independently.
entity led_registers is
 port (
  s_axi_aclk : in std_logic;
  s_axi_aresetn : in std_logic;
  s_axi_awaddr : in std_logic_vector(5 downto 0);
  s_axi_awprot : in std_logic_vector(2 downto 0);
  s_axi_awvalid : in std_logic;
  s_axi_awready : out std_logic;
  s_axi_wdata : in std_logic_vector(31 downto 0);
  s_axi_wstrb : in std_logic_vector(3 downto 0);
  s_axi_wvalid : in std_logic;
  s_axi_wready : out std_logic;
  s_axi_bresp : out std_logic_vector(1 downto 0);
  s_axi_bvalid : out std_logic;
  s_axi_bready : in std_logic;
  s_axi_araddr : in std_logic_vector(5 downto 0);
  s_axi_arprot : in std_logic_vector(2 downto 0);
  s_axi_arvalid : in std_logic;
  s_axi_arready : out std_logic;
  s_axi_rdata : out std_logic_vector(31 downto 0);
  s_axi_rresp : out std_logic_vector(1 downto 0);
  s_axi_rvalid : out std_logic;
  s_axi_rready : in std_logic;
  led_n : out std_logic
 );
 attribute X_INTERFACE_INFO : string;
 attribute X_INTERFACE_PARAMETER : string;
 attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
 attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn";
 attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
 attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "POLARITY ACTIVE_LOW";
end;
architecture rtl of led_registers is
 signal have_aw,have_w,bv,rv : std_logic := '0';
 signal aw : std_logic_vector(5 downto 0);
 signal wd : std_logic_vector(31 downto 0);
 signal ws : std_logic_vector(3 downto 0);
 signal br,rr : std_logic_vector(1 downto 0) := "00";
 signal rd,command : std_logic_vector(31 downto 0) := (others=>'0');
 signal completed : unsigned(31 downto 0) := (others=>'0');
 signal led,busy : std_logic := '0';
begin
 s_axi_awready <= not have_aw and not bv;
 s_axi_wready <= not have_w and not bv;
 s_axi_bvalid <= bv; s_axi_bresp <= br;
 s_axi_arready <= not rv;
 s_axi_rvalid <= rv; s_axi_rdata <= rd; s_axi_rresp <= rr;
 led_n <= not led;
 process(s_axi_aclk)
 begin
 if rising_edge(s_axi_aclk) then
  if s_axi_aresetn='0' then
   have_aw<='0'; have_w<='0'; bv<='0'; rv<='0';
   led<='0'; busy<='0'; completed<=(others=>'0'); command<=(others=>'0');
   br<="00"; rr<="00"; rd<=(others=>'0');
  else
   if bv='1' and s_axi_bready='1' then bv<='0'; end if;
   if rv='1' and s_axi_rready='1' then rv<='0'; end if;
   if s_axi_awvalid='1' and have_aw='0' and bv='0' then
    aw<=s_axi_awaddr; have_aw<='1';
   end if;
   if s_axi_wvalid='1' and have_w='0' and bv='0' then
    wd<=s_axi_wdata; ws<=s_axi_wstrb; have_w<='1';
   end if;
   -- Completion is separate from command acceptance by one clock cycle.
   if busy='1' then
    led<=command(0); completed<=completed+1; busy<='0';
   end if;
   if have_aw='1' and have_w='1' and bv='0' then
    have_aw<='0'; have_w<='0'; bv<='1'; br<="10";
    if aw="000100" and ws="1111" and wd(31 downto 1)=(31 downto 1=>'0') and busy='0' then
     command<=wd; busy<='1'; br<="00";
    end if;
   end if;
   if s_axi_arvalid='1' and rv='0' then
    rv<='1'; rr<="00"; rd<=(others=>'0');
    case s_axi_araddr is
     when "000000" => rd<=x"00010000";
     when "000100" => rd<=command;
     when "001000" => rd(0)<=busy; rd(1)<='1';
     when "001100" => rd(0)<=led;
     when "010000" => rd<=std_logic_vector(completed);
     when others => rr<="10";
    end case;
   end if;
  end if;
 end if;
 end process;
end;
