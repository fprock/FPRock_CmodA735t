# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_compensator_io {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
temp_comp { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
pres_comp { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
hum_comp { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
temp_raw { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
pres_raw { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
hum_raw { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
}
dict set axilite_register_dict compensator_io $port_compensator_io


