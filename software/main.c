#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xgpiops.h"
#include "sleep.h"
#include "platform.h"
#include "platform_config.h"
#include "netif/xadapter.h"
#include "lwip/init.h"
#include "lwip/tcp.h"
#include "lwip/priv/tcp_priv.h"
#include "fpga.h"
#include "tcp_server.h"
struct netif netif_instance;
struct netif *echo_netif=&netif_instance;
extern volatile int TcpFastTmrFlag,TcpSlowTmrFlag;
/* Read these symbols using JTAG; no UART required for diagnosis. */
volatile unsigned diagnostic_stage=0;
volatile unsigned diagnostic_heartbeat=0;
volatile unsigned diagnostic_version=0;
static XGpioPs gpio;
int main(void) {
 ip_addr_t ip,mask,gw;
 unsigned char mac[6]={0x02,0x5a,0x37,0x02,0x00,0x02};
 diagnostic_stage=1;
 init_platform();
 diagnostic_version=fpga_version();
 if(diagnostic_version!=0x10000) {diagnostic_stage=0xe001;while(1);}
 diagnostic_stage=2;
 XGpioPs_Config *cfg=XGpioPs_LookupConfig(XPAR_XGPIOPS_0_BASEADDR);
 if(!cfg || XGpioPs_CfgInitialize(&gpio,cfg,cfg->BaseAddr)!=XST_SUCCESS) {
  diagnostic_stage=0xe002;while(1);
 }
 /* PS PHY reset: MIO 46, active-low (R21 sheet 2/8). */
 XGpioPs_WritePin(&gpio,46,0);
 XGpioPs_SetDirectionPin(&gpio,46,1);
 XGpioPs_SetOutputEnablePin(&gpio,46,1);
 usleep(20000); XGpioPs_WritePin(&gpio,46,1);usleep(100000);
 diagnostic_stage=3;
 lwip_init();
 IP4_ADDR(&ip,192,168,2,2);IP4_ADDR(&mask,255,255,255,0);IP4_ADDR(&gw,0,0,0,0);
 if(!xemac_add(echo_netif,&ip,&mask,&gw,mac,PLATFORM_EMAC_BASEADDR)) {
  diagnostic_stage=0xe003;while(1);
 }
 diagnostic_stage=4;
 netif_set_default(echo_netif);
 netif_set_up(echo_netif);
 if(tcp_server_start()!=0){diagnostic_stage=0xe004;while(1);}
 diagnostic_stage=5;
 while(1) {
  if(TcpFastTmrFlag){tcp_fasttmr();TcpFastTmrFlag=0;}
  if(TcpSlowTmrFlag){tcp_slowtmr();TcpSlowTmrFlag=0;}
  xemacif_input(echo_netif);
  diagnostic_heartbeat++;
 }
}
