#include "fpga.h"
#include "xil_io.h"
#include "xiltimer.h"
#define BASE 0x40000000U
uint32_t fpga_version(void) { return Xil_In32(BASE); }
uint32_t fpga_led(void) { return Xil_In32(BASE+12)&1; }
uint32_t fpga_sequence(void) { return Xil_In32(BASE+16); }
int fpga_set_led(unsigned value, uint32_t *sequence) {
 XTime start,now;
 uint32_t before=fpga_sequence();
 if(value>1 || fpga_version()!=0x10000) return -2;
 XTime_GetTime(&start);
 Xil_Out32(BASE+4,value);
 do {
  uint32_t count=fpga_sequence();
  if(count==before+1U && !(Xil_In32(BASE+8)&1) && fpga_led()==value) {
   *sequence=count; return 0;
  }
  XTime_GetTime(&now);
 } while(now-start < COUNTS_PER_SECOND/100); /* 10 ms */
 return -1;
}
