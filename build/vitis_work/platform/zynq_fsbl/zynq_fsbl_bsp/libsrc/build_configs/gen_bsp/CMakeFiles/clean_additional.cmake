# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "T:\\build\\vitis_work\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
