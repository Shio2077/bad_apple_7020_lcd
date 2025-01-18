# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Projects\prj\AMD\lcd_7020\zynq_7020_lcd\workspace\app_zynq7_lcd_system\_ide\scripts\debugger_app_zynq7_lcd-default_1.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Projects\prj\AMD\lcd_7020\zynq_7020_lcd\workspace\app_zynq7_lcd_system\_ide\scripts\debugger_app_zynq7_lcd-default_1.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT3-210357A7D00EA-23727093-0"}
fpga -file D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/workspace/app_zynq7_lcd/_ide/bitstream/zynq_7_wrapper_new.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/workspace/zynq7_lcd/export/zynq7_lcd/hw/zynq_7_wrapper_new.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/workspace/app_zynq7_lcd/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/workspace/app_zynq7_lcd/Release/app_zynq7_lcd.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
