############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project BME280_CompAccellerator
set_top compensator
add_files hls_src/BME280_comp_vals_h.dat
add_files hls_src/BME280_Compensation.h
add_files hls_src/BME280_Compensation.c
open_solution "solution1"
set_part {xc7a35t-cpg236-1}
create_clock -period 10 -name default
source "./BME280_CompAccellerator/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog
