# clock and reset ----------------------------------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN T18 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

# 7 segment LED ------------------------------------------------------------------------------------
set_property PACKAGE_PIN W4 [get_ports {to_7_seg_sel_n[3]}]
set_property PACKAGE_PIN V4 [get_ports {to_7_seg_sel_n[2]}]
set_property PACKAGE_PIN U4 [get_ports {to_7_seg_sel_n[1]}]
set_property PACKAGE_PIN U2 [get_ports {to_7_seg_sel_n[0]}]
set_property PACKAGE_PIN W7 [get_ports {to_7_seg_n[7]}]
set_property PACKAGE_PIN W6 [get_ports {to_7_seg_n[6]}]
set_property PACKAGE_PIN U8 [get_ports {to_7_seg_n[5]}]
set_property PACKAGE_PIN V8 [get_ports {to_7_seg_n[4]}]
set_property PACKAGE_PIN U5 [get_ports {to_7_seg_n[3]}]
set_property PACKAGE_PIN V5 [get_ports {to_7_seg_n[2]}]
set_property PACKAGE_PIN U7 [get_ports {to_7_seg_n[1]}]
set_property PACKAGE_PIN V7 [get_ports {to_7_seg_n[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_sel_n[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_sel_n[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_sel_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_sel_n[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[2]}]

# bottom -------------------------------------------------------------------------------------------
set_property PACKAGE_PIN U18 [get_ports bottom]
set_property IOSTANDARD LVCMOS18 [get_ports bottom]




set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {to_7_seg_n[0]}]
