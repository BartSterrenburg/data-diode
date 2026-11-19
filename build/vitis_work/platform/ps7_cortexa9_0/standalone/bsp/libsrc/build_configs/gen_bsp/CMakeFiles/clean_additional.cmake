# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\lwipopts.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\sleep.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\xemac_ieee_reg.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\xemacpsif_hw.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\xiltimer.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\xlwipconfig.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\include\\xtimer_config.h"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\lib\\liblwip220.a"
  "T:\\build\\vitis_work\\platform\\ps7_cortexa9_0\\standalone\\bsp\\lib\\libxiltimer.a"
  )
endif()
