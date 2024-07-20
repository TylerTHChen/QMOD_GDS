transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../QMOD_GDS_Nexy.gen/sources_1/ip/clk_wiz_0_1" -l xpm -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../QMOD_GDS_Nexy.gen/sources_1/ip/clk_wiz_0_1" -l xpm -l xil_defaultlib \
"../../../QMOD_GDS_Nexy.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_clk_wiz.v" \
"../../../QMOD_GDS_Nexy.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../QMOD_GDS_Nexy.gen/sources_1/ip/clk_wiz_0_1" -l xpm -l xil_defaultlib \
"../../../../waves.sv" \

vlog -work xil_defaultlib \
"glbl.v"
