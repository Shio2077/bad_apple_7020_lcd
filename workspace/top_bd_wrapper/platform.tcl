# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/top_bd_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace/top_bd_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {top_bd_wrapper}\
-hw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top_bd_wrapper.xsa}\
-out {/home/hydrangea/project/AMD/bad_apple_7020_lcd/workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {top_bd_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp setlib -name xilffs -ver 4.8
bsp write
bsp reload
catch {bsp regenerate}
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp config use_lfn "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform generate
platform clean
platform clean
platform generate
platform clean
platform active {top_bd_wrapper}
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform generate
platform generate -domains 
platform clean
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform config -updatehw {/home/hydrangea/project/AMD/bad_apple_7020_lcd/top.xsa}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
