set moduleName fir_filter
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fir_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ datain_data_V int 32 regular {axi_s 0 volatile  { datain Data } }  }
	{ datain_last_V int 1 regular {axi_s 0 volatile  { datain Last } }  }
	{ dataout_data_V int 32 regular {axi_s 1 volatile  { dataout Data } }  }
	{ dataout_last_V int 1 regular {axi_s 1 volatile  { dataout Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "datain_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "datain.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "datain_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "datain.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "dataout_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dataout.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "dataout_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataout.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ datain_TDATA sc_in sc_lv 32 signal 0 } 
	{ datain_TVALID sc_in sc_logic 1 invld 1 } 
	{ datain_TREADY sc_out sc_logic 1 inacc 1 } 
	{ datain_TLAST sc_in sc_lv 1 signal 1 } 
	{ dataout_TDATA sc_out sc_lv 32 signal 2 } 
	{ dataout_TVALID sc_out sc_logic 1 outvld 3 } 
	{ dataout_TREADY sc_in sc_logic 1 outacc 3 } 
	{ dataout_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "datain_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "datain_data_V", "role": "default" }} , 
 	{ "name": "datain_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "datain_last_V", "role": "default" }} , 
 	{ "name": "datain_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "datain_last_V", "role": "default" }} , 
 	{ "name": "datain_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "datain_last_V", "role": "default" }} , 
 	{ "name": "dataout_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dataout_data_V", "role": "default" }} , 
 	{ "name": "dataout_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataout_last_V", "role": "default" }} , 
 	{ "name": "dataout_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataout_last_V", "role": "default" }} , 
 	{ "name": "dataout_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataout_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "fir_filter",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "datain_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "datain_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "datain_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataout_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dataout_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataout_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "shift_reg_left_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "shift_reg_right_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_left_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shift_reg_right_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_datain_data_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_datain_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataout_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataout_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fir_filter {
		datain_data_V {Type I LastRead 10 FirstWrite -1}
		datain_last_V {Type I LastRead 10 FirstWrite -1}
		dataout_data_V {Type O LastRead -1 FirstWrite 7}
		dataout_last_V {Type O LastRead -1 FirstWrite 7}
		shift_reg_left_V {Type IO LastRead -1 FirstWrite -1}
		c {Type I LastRead -1 FirstWrite -1}
		shift_reg_right_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "132", "Max" : "132"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	datain_data_V { axis {  { datain_TDATA in_data 0 32 } } }
	datain_last_V { axis {  { datain_TVALID in_vld 0 1 }  { datain_TREADY in_acc 1 1 }  { datain_TLAST in_data 0 1 } } }
	dataout_data_V { axis {  { dataout_TDATA out_data 1 32 } } }
	dataout_last_V { axis {  { dataout_TVALID out_vld 1 1 }  { dataout_TREADY out_acc 0 1 }  { dataout_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
