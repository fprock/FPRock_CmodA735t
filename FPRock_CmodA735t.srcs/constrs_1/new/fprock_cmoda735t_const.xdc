set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_sda_io]
set_property PULLUP true [get_ports iic_rtl_scl_io]
set_property PULLUP true [get_ports iic_rtl_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_txd]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rtl_0_txd]
set_property PACKAGE_PIN W7 [get_ports uart_rtl_0_rxd]
set_property PACKAGE_PIN U7 [get_ports uart_rtl_0_txd]

set_property PACKAGE_PIN U8 [get_ports iic_rtl_scl_io]
set_property PACKAGE_PIN M3 [get_ports uart_rtl_rxd]
set_property PACKAGE_PIN L3 [get_ports uart_rtl_txd]

set_property PACKAGE_PIN V8 [get_ports iic_rtl_sda_io]
