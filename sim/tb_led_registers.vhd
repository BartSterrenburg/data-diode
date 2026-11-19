library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all;
entity tb_led_registers is end;
architecture test of tb_led_registers is
 signal clk:std_logic:='0';
 signal resetn,av,ar, wv,wr,bv,br,rv,rr,rvalid,rready,led:std_logic:='0';
 signal aa,ra:std_logic_vector(5 downto 0):=(others=>'0');
 signal wd,rd:std_logic_vector(31 downto 0):=(others=>'0');
 signal ws:std_logic_vector(3 downto 0):="1111";
 signal bp,rp:std_logic_vector(1 downto 0);
begin
 clk<=not clk after 5 ns;
 dut:entity work.led_registers port map(clk,resetn,aa,"000",av,ar,wd,ws,wv,wr,bp,bv,br,ra,"000",rv,rr,rd,rp,rvalid,rready,led);
 process
 procedure tick is begin wait until rising_edge(clk);wait for 1 ns;end;
 procedure write_reg(addr:natural;value:natural;data_first:boolean:=false;strobes:std_logic_vector(3 downto 0):="1111";response:std_logic_vector(1 downto 0):="00") is
 begin
  aa<=std_logic_vector(to_unsigned(addr,6));wd<=std_logic_vector(to_unsigned(value,32));ws<=strobes;
  if data_first then
   wv<='1';tick;wv<='0';tick;tick;av<='1';tick;av<='0';
  else
   av<='1';tick;av<='0';tick;tick;wv<='1';tick;wv<='0';
  end if;
  while bv/='1' loop tick;end loop;
  assert bp=response report "wrong write response" severity failure;
  tick;tick;assert bv='1' report "lost B response under stall" severity failure;
  br<='1';tick;br<='0';tick;
 end;
 procedure read_reg(addr:natural;expected:natural;response:std_logic_vector(1 downto 0):="00") is
 variable saved:std_logic_vector(31 downto 0);
 begin
  ra<=std_logic_vector(to_unsigned(addr,6));rv<='1';tick;rv<='0';
  while rvalid/='1' loop tick;end loop;
  assert unsigned(rd)=expected and rp=response report "read mismatch at "&integer'image(addr) severity failure;
  saved:=rd;tick;tick;
  assert rvalid='1' and rd=saved report "read response changed under stall" severity failure;
  rready<='1';tick;rready<='0';tick;
 end;
 begin
 tick;tick;assert led='1' severity failure;resetn<='1';tick;
 read_reg(0,65536);read_reg(8,2);read_reg(12,0);read_reg(16,0);
 write_reg(4,1);assert led='0' severity failure;read_reg(12,1);read_reg(16,1);
 write_reg(4,0,true);assert led='1' severity failure;read_reg(12,0);read_reg(16,2);
 write_reg(4,1,false,"0001","10");read_reg(16,2);
 write_reg(4,2,false,"1111","10");read_reg(16,2);
 write_reg(0,1,false,"1111","10");read_reg(0,65536);
 read_reg(20,0,"10");
 for n in 1 to 20 loop write_reg(4,n mod 2,n mod 2=0);end loop;
 read_reg(16,22);
 -- Reset while one half of a write is pending; it must never execute afterwards.
 av<='1';aa<="000100";tick;av<='0';resetn<='0';tick;resetn<='1';tick;
 read_reg(16,0);read_reg(12,0);assert led='1' severity failure;
 report "PASS: reset, LED, sequence, AW/W skew, backpressure, invalid accesses" severity note;
 stop;
 end process;
 process begin wait for 100 us;assert false report "simulation timeout" severity failure;end process;
end;
