vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/AMD/Vivado/2022.2/data/xilinx_vip/include" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl" "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl" "+incdir+D:/AMD/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl" "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl" "+incdir+D:/AMD/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl" "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl" "+incdir+D:/AMD/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl" "+incdir+../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl" "+incdir+D:/AMD/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/zynq_7/ip/zynq_7_processing_system7_0_0/sim/zynq_7_processing_system7_0_0.v" \
"../../../bd/zynq_7/sim/zynq_7.v" \

vlog -work xil_defaultlib \
"glbl.v"

