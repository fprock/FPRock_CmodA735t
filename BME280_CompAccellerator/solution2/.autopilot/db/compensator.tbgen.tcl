set moduleName compensator
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compensator}
set C_modelType { void 0 }
set C_modelArgList {
	{ temp_comp float 32 regular {axi_slave 1}  }
	{ pres_comp float 32 regular {axi_slave 1}  }
	{ hum_comp float 32 regular {axi_slave 1}  }
	{ temp_raw int 32 regular {axi_slave 0}  }
	{ pres_raw int 32 regular {axi_slave 0}  }
	{ hum_raw int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "temp_comp", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "temp_comp","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "pres_comp", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pres_comp","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "hum_comp", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hum_comp","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":32}, "offset_end" : {"out":39}} , 
 	{ "Name" : "temp_raw", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "temp_raw","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "pres_raw", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pres_raw","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "hum_raw", "interface" : "axi_slave", "bundle":"compensator_io","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hum_raw","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_compensator_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_compensator_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_compensator_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_compensator_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_compensator_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_compensator_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_compensator_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_compensator_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_compensator_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "compensator_io", "role": "AWADDR" },"address":[{"name":"compensator","role":"start","value":"0","valid_bit":"0"},{"name":"compensator","role":"continue","value":"0","valid_bit":"4"},{"name":"compensator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"temp_raw","role":"data","value":"40"},{"name":"pres_raw","role":"data","value":"48"},{"name":"hum_raw","role":"data","value":"56"}] },
	{ "name": "s_axi_compensator_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "AWVALID" } },
	{ "name": "s_axi_compensator_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "AWREADY" } },
	{ "name": "s_axi_compensator_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "WVALID" } },
	{ "name": "s_axi_compensator_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "WREADY" } },
	{ "name": "s_axi_compensator_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compensator_io", "role": "WDATA" } },
	{ "name": "s_axi_compensator_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "compensator_io", "role": "WSTRB" } },
	{ "name": "s_axi_compensator_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "compensator_io", "role": "ARADDR" },"address":[{"name":"compensator","role":"start","value":"0","valid_bit":"0"},{"name":"compensator","role":"done","value":"0","valid_bit":"1"},{"name":"compensator","role":"idle","value":"0","valid_bit":"2"},{"name":"compensator","role":"ready","value":"0","valid_bit":"3"},{"name":"compensator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"temp_comp","role":"data","value":"16"}, {"name":"temp_comp","role":"valid","value":"20","valid_bit":"0"},{"name":"pres_comp","role":"data","value":"24"}, {"name":"pres_comp","role":"valid","value":"28","valid_bit":"0"},{"name":"hum_comp","role":"data","value":"32"}, {"name":"hum_comp","role":"valid","value":"36","valid_bit":"0"}] },
	{ "name": "s_axi_compensator_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "ARVALID" } },
	{ "name": "s_axi_compensator_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "ARREADY" } },
	{ "name": "s_axi_compensator_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "RVALID" } },
	{ "name": "s_axi_compensator_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "RREADY" } },
	{ "name": "s_axi_compensator_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "compensator_io", "role": "RDATA" } },
	{ "name": "s_axi_compensator_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "compensator_io", "role": "RRESP" } },
	{ "name": "s_axi_compensator_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "BVALID" } },
	{ "name": "s_axi_compensator_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "BREADY" } },
	{ "name": "s_axi_compensator_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "compensator_io", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compensator_io", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "compensator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_comp", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pres_comp", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "hum_comp", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_raw", "Type" : "None", "Direction" : "I"},
			{"Name" : "pres_raw", "Type" : "None", "Direction" : "I"},
			{"Name" : "hum_raw", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_compensator_io_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_fptrubkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_fptrubkb_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_fptrubkb_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_dmul_cud_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_dmul_cud_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_ddiv_dEe_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_sitodeOg_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_sitodfYi_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_1g8j_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_1hbi_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_sdiv_ibs_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_1jbC_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_5kbM_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_1lbW_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_mmb6_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mac_mncg_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mac_mocq_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_mpcA_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_mqcK_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_mrcU_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compensator_mul_msc4_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compensator {
		temp_comp {Type O LastRead -1 FirstWrite 101}
		pres_comp {Type O LastRead -1 FirstWrite 101}
		hum_comp {Type O LastRead -1 FirstWrite 101}
		temp_raw {Type I LastRead 0 FirstWrite -1}
		pres_raw {Type I LastRead 0 FirstWrite -1}
		hum_raw {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "102", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
