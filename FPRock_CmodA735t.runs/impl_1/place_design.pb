
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3354.7422default:default2
0.0002default:default2
204672default:default2
263052default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 974caaeb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.04 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20467 ; free virtual = 263052default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3354.7422default:default2
0.0002default:default2
204702default:default2
263082default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: b41ef03c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20461 ; free virtual = 263032default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 16b15fdad
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20436 ; free virtual = 262792default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 16b15fdad
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20436 ; free virtual = 262792default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 16b15fdad
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20436 ; free virtual = 262792default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 17678f491
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:05 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20407 ; free virtual = 262502default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
u
7Found %s candidate LUT instances to create LUTNM shape
536*physynth2
7472default:defaultZ32-1018h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
3452default:default2!
nets or cells2default:default2
482default:default2
cells2default:default2
2972default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
12default:default2
net2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
7design_1_i/microblaze_0/U0/MicroBlaze_Core_I/sync_reset7design_1_i/microblaze_0/U0/MicroBlaze_Core_I/sync_reset2default:default2
122default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
12default:default2
net2default:default2
122default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
122default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.082default:default2
00:00:00.082default:default2
3354.7422default:default2
0.0002default:default2
203912default:default2
262382default:defaultZ17-722h px? 
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
122default:default2
nets2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[0]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[0]2default:default2
52default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[6]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[6]2default:default2
32default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[2]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[2]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[0]_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[0]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[1]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[1]2default:default2
52default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[4]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[4]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[3]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[3]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[7]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[7]2default:default2
32default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[8]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[8]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[9]mdesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[9]2default:default2
42default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
ndesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[10]ndesign_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/EX_Op2_reg[0]_0[10]2default:default2
52default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
`design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[31]`design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[31]2default:default2
52default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
122default:default2
nets2default:default2
502default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
122default:default2!
nets or cells2default:default2
502default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.052default:default2
00:00:00.052default:default2
3354.7422default:default2
0.0002default:default2
203912default:default2
262372default:defaultZ17-722h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/ENA_I?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/ENA_I2default:default2?
?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_1	?design_1_i/microblaze_0_local_memory/lmb_bram/U0/inst_blk_mem_gen/gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen/valid.cstr/ramloop[15].ram.r/prim_noinit.ram/DEVICE_7SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.TDP_SP36_NO_ECC_ATTR.ram_i_12default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[9]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[9]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[22]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[22]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[3]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[3]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[28]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[28]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[13]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[13]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[18]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[18]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[8]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[8]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[23]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[23]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[7]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[7]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[24]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[24]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[15]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[15]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[16]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[16]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[6]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[6]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[25]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[25]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[14]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[14]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[17]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[17]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[2]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[29]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[29]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[11]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[20]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[20]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[10]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[10]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[21]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[21]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[4]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[4]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[27]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[27]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[12]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[12]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[19]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[19]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[5]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_TLBS.IB_Fetch_1_reg[5]2default:default2?
|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[26]_INST_0	|design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Instr_Addr[26]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
Hdesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[3]Hdesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[3]2default:default2?
Odesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[3]_INST_0	Odesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[3]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Line_WE[0].New_Data_Write_Gen[1].New_Data_Write_LUT/WEB[0]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Line_WE[0].New_Data_Write_Gen[1].New_Data_Write_LUT/WEB[0]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Line_WE[0].New_Data_Write_Gen[1].New_Data_Write_LUT/Using_FPGA.Native	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Line_WE[0].New_Data_Write_Gen[1].New_Data_Write_LUT/Using_FPGA.Native2default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/ADDRBWRADDR[3]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/ADDRBWRADDR[3]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/Using_FPGA.Native_i_10__4	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/Using_FPGA.Native_i_10__42default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][2]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][2]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_1__173	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_1__1732default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
Hdesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[2]Hdesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[2]2default:default2?
Odesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[2]_INST_0	Odesign_1_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/U0/BRAM_WEN_A[2]_INST_02default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][9]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][9]2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_5__7	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_5__72default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][0]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][0]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_3__30	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_3__302default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/ADDRBWRADDR[7]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/ADDRBWRADDR[7]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/Using_FPGA.Native_i_6__6	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Using_DCache.Using_WriteBack.DCache_wb_I1/Cache_Interface_I1/Using_FPGA.Native_i_6__62default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][4]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][4]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_10__5	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_10__52default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][10]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][10]2default:default2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_4__19	?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_4__192default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2?
?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][7]?design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_Virtual_Memory.last_Valid_Instr_Tag_Addr_reg[0][7]2default:default2?
design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_7__9	design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Decode_I/jump_logic_I1/MUXCY_JUMP_CARRY6/Using_FPGA.Native_i_7__92default:default8Z32-117h px? 
?
;Identified %s candidate %s for critical-cell optimization.
46*physynth2
432default:default2
nets2default:defaultZ32-46h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[1]_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[1]2default:default2
12default:default8Z32-81h px? 
?
+Net %s was not replicated. - no resolution
314*physynth2?
_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[6]_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[6]2default:default8Z32-571h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[8]_design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[8]2default:default2
12default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
`design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[14]`design_1_i/microblaze_0/U0/MicroBlaze_Core_I/Performance.Core/Data_Flow_I/Operand_Select_I/Q[14]2default:default2
12default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
32default:default2
nets2default:default2
32default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
32default:default2!
nets or cells2default:default2
32default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
3354.7422default:default2
0.0002default:default2
203912default:default2
262372default:defaultZ17-722h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3354.7422default:default2
0.0002default:default2
203922default:default2
262382default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |           48  |            297  |                   345  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |           12  |              0  |                     1  |           0  |           1  |  00:00:01  |
|  Fanout                                           |           50  |              0  |                    12  |           0  |           1  |  00:00:01  |
|  Critical Cell                                    |            3  |              0  |                     3  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          113  |            297  |                   361  |           0  |           9  |  00:00:02  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 1499321e2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:00:18 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20391 ; free virtual = 262372default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1b7b9171f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:54 ; elapsed = 00:00:19 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20389 ; free virtual = 262362default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1b7b9171f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:54 ; elapsed = 00:00:19 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20398 ; free virtual = 262452default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 240124ef8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:56 ; elapsed = 00:00:20 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20393 ; free virtual = 262402default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 10325a22b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:01 ; elapsed = 00:00:22 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20389 ; free virtual = 262362default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1c42cb8a1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:01 ; elapsed = 00:00:22 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20389 ; free virtual = 262362default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1416988f9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:22 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20389 ; free virtual = 262362default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 139f3db42
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:05 ; elapsed = 00:00:24 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20389 ; free virtual = 262362default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 1ec2263a9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:09 ; elapsed = 00:00:27 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20378 ; free virtual = 262262default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 275c86e50
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:10 ; elapsed = 00:00:28 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20379 ; free virtual = 262272default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.8 Pipeline Register Optimization | Checksum: ced63253
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:10 ; elapsed = 00:00:28 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20379 ; free virtual = 262272default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 140760912
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:31 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20379 ; free virtual = 262272default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 140760912
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:31 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20379 ; free virtual = 262272default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 19d9f9fa6
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 19d9f9fa6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:26 ; elapsed = 00:00:34 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20373 ; free virtual = 262212default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.4702default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1dbb1e17f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:46 ; elapsed = 00:00:48 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1dbb1e17f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:46 ; elapsed = 00:00:48 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1dbb1e17f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:46 ; elapsed = 00:00:48 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1dbb1e17f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:46 ; elapsed = 00:00:48 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3354.7422default:default2
0.0002default:default2
203642default:default2
262122default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 197ab8ac9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:47 ; elapsed = 00:00:48 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 197ab8ac9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:47 ; elapsed = 00:00:49 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20364 ; free virtual = 262122default:defaulth px? 
=
(Ending Placer Task | Checksum: c72ce2c7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:47 ; elapsed = 00:00:49 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20361 ; free virtual = 262092default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1512default:default2
192default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:01:492default:default2
00:00:502default:default2
3354.7422default:default2
0.0002default:default2
203822default:default2
262302default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3354.7422default:default2
0.0002default:default2
203822default:default2
262302default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:032default:default2
00:00:012default:default2
3354.7422default:default2
0.0002default:default2
203152default:default2
262082default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2u
a/home/chrispy/workspace/FPRock_CmodA735t/FPRock_CmodA735t.runs/impl_1/design_1_wrapper_placed.dcp2default:defaultZ17-1381h px? 
k
%s4*runtcl2O
;Executing : report_io -file design_1_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.11 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20371 ; free virtual = 26233
*commonh px? 
?
%s4*runtcl2?
xExecuting : report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2l
XExecuting : report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.14 . Memory (MB): peak = 3354.742 ; gain = 0.000 ; free physical = 20373 ; free virtual = 26236
*commonh px? 


End Record