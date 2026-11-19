#include "command.h"
#include "fpga.h"
#include <stdio.h>
#include <string.h>
void command_execute(const char *line,char *reply,size_t capacity) {
 uint32_t sequence;
 if (!strcmp(line,"LED 0") || !strcmp(line,"LED 1")) {
  unsigned v=(unsigned)(line[4]-'0');
  int rc=fpga_set_led(v,&sequence);
  if(rc==0) snprintf(reply,capacity,"OK LED %u\n",(unsigned)fpga_led());
  else snprintf(reply,capacity,"ERR FPGA_%s\n",rc==-1?"TIMEOUT":"VERSION");
 } else if (!strcmp(line,"STATUS")) {
  snprintf(reply,capacity,"OK STATUS LED %u SEQ %lu VERSION %08lx\n",
   (unsigned)fpga_led(),(unsigned long)fpga_sequence(),(unsigned long)fpga_version());
 } else snprintf(reply,capacity,"ERR COMMAND\n");
}
