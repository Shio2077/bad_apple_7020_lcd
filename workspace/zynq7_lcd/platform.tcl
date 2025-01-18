# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Projects\prj\AMD\lcd_7020\zynq_7020_lcd\workspace\zynq7_lcd\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Projects\prj\AMD\lcd_7020\zynq_7020_lcd\workspace\zynq7_lcd\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynq7_lcd}\
-hw {D:\Projects\prj\AMD\lcd_7020\zynq_7020_lcd\zynq_7_wrapper_new.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/workspace}

platform write
platform generate -domains 
platform active {zynq7_lcd}
platform generate
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
bsp write
domain active {standalone_domain}
bsp setlib -name xilffs -ver 4.8
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform active {zynq7_lcd}
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform generate -domains 
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform clean
platform generate
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform clean
platform generate
platform active {zynq7_lcd}
platform clean
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform clean
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform generate
platform clean
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {zynq7_lcd}
platform config -updatehw {D:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/zynq_7_wrapper_new.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform active {zynq7_lcd}
platform config -updatehw {D:/Projects/prj/AMD/zynq_merg_v1/zynq_7_wrapper_new.xsa}
platform generate
platform clean
platform generate
