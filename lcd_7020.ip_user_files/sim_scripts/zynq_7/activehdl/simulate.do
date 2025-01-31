onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+zynq_7  -L xilinx_vip -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.zynq_7 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {zynq_7.udo}

run 1000ns

endsim

quit -force
