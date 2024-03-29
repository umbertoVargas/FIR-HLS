############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir
set_top fir_filter
add_files fir/fir_filter.cpp
add_files fir/fir_filter.h
add_files -tb fir/fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2"
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
config_export -display_name fir_filte_mod -format ip_catalog -library hls -rtl verilog -vendor UAM -version 1.5
source "./fir/solution2/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -vendor "UAM" -version "1.5" -display_name "fir_filte_mod"
