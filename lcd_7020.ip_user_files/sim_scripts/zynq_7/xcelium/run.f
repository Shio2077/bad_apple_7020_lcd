-makelib xcelium_lib/xilinx_vip -sv \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/AMD/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../lcd_7020.gen/sources_1/bd/zynq_7/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zynq_7/ip/zynq_7_processing_system7_0_0/sim/zynq_7_processing_system7_0_0.v" \
  "../../../bd/zynq_7/sim/zynq_7.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

