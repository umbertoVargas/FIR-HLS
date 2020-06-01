############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode ap_ctrl_none "fir_filter"
set_directive_interface -mode axis -register -register_mode both "fir_filter" datain
set_directive_interface -mode axis -register -register_mode both "fir_filter" dataout
set_directive_pipeline "fir_filter/loop_left"
set_directive_pipeline "fir_filter/loop_right"
