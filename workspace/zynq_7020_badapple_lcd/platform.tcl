# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Projects\prj\AMD\bad_apple_7020_lcd\workspace\zynq_7020_badapple_lcd\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Projects\prj\AMD\bad_apple_7020_lcd\workspace\zynq_7020_badapple_lcd\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynq_7020_badapple_lcd}\
-hw {D:\Projects\prj\AMD\bad_apple_7020_lcd\top.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/Projects/prj/AMD/bad_apple_7020_lcd/workspace}

platform write
platform generate -domains 
platform active {zynq_7020_badapple_lcd}
domain active {zynq_fsbl}
bsp reload
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 5.3
bsp config use_mkfs "true"
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp removelib -name xilrsa
bsp setlib -name xilrsa -ver 1.8
bsp removelib -name xilffs
bsp write
bsp reload
catch {bsp regenerate}
bsp write
platform clean
platform clean
platform clean
platform clean
bsp setlib -name xilffs -ver 5.3
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
catch {bsp regenerate}
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
