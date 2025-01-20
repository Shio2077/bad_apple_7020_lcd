# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/bad_apple_app_system/_ide/scripts/debugger_bad_apple_app-default.tcl
# 
# 
# Usage with xsct:
# In an external shell use the below command and launch symbol server.
# symbol_server -S -s tcp::1534
# To debug using xsct, launch xsct and run below command
# source /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/bad_apple_app_system/_ide/scripts/debugger_bad_apple_app-default.tcl
# 
connect -path [list tcp::1534 tcp:10.0.0.8:3121]
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT3 210357A7D00EA" && level==0 && jtag_device_ctx=="jsn-JTAG-SMT3-210357A7D00EA-23727093-0"}
fpga -file /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/bad_apple_app/_ide/bitstream/top.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/top_bd_wrapper/export/top_bd_wrapper/hw/top.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/bad_apple_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/bad_apple_app/Debug/bad_apple_app.elf
configparams force-mem-access 0
bpadd -addr &main
