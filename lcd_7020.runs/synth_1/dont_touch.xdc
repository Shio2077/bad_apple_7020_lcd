# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/zynq_7_wrapper.xdc

# XDC: new/zynq_7_pl.xdc

# Block Designs: bd/zynq_7/zynq_7.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==zynq_7 || ORIG_REF_NAME==zynq_7} -quiet] -quiet

# IP: bd/zynq_7/ip/zynq_7_processing_system7_0_0/zynq_7_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==zynq_7_processing_system7_0_0 || ORIG_REF_NAME==zynq_7_processing_system7_0_0} -quiet] -quiet

# XDC: d:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/lcd_7020.gen/sources_1/bd/zynq_7/ip/zynq_7_processing_system7_0_0/zynq_7_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==zynq_7_processing_system7_0_0 || ORIG_REF_NAME==zynq_7_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: d:/Projects/prj/AMD/lcd_7020/zynq_7020_lcd/lcd_7020.gen/sources_1/bd/zynq_7/zynq_7_ooc.xdc
