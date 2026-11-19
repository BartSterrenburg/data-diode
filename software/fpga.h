#ifndef FPGA_H
#define FPGA_H
#include <stdint.h>
int fpga_set_led(unsigned value, uint32_t *sequence);
uint32_t fpga_led(void);
uint32_t fpga_sequence(void);
uint32_t fpga_version(void);
#endif
