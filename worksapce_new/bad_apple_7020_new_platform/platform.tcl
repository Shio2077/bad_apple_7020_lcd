# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/hydrangea/project/AMD/bad_apple_7020_lcd/worksapce_new/bad_apple_7020_new_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/hydrangea/project/AMD/bad_apple_7020_lcd/worksapce_new/bad_apple_7020_new_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {bad_apple_7020_new_platform}\
-hw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/hydrangea/project/AMD/bad_apple_7020_lcd/worksapce_new}

platform write
platform generate -domains 
platform active {bad_apple_7020_new_platform}
domain active {zynq_fsbl}
bsp reload
bsp config use_lfn "1"
bsp config use_strfunc "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 4.8
bsp config use_lfn "1"
bsp config use_strfunc "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform clean
platform generate
bsp reload
platform clean
domain active {zynq_fsbl}
bsp reload
platform generate
platform active {bad_apple_7020_new_platform}
domain active {zynq_fsbl}
bsp reload
bsp reload
platform generate -domains 
bsp reload
domain active {standalone_domain}
bsp reload
