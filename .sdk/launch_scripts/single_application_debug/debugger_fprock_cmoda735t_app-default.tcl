connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328AFE28AA" && level==0} -index 0
fpga -file /home/chrispy/workspace/FPRock_CmodA735t/FPRock_CmodA735t_app/_ide/bitstream/download.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/chrispy/workspace/FPRock_CmodA735t/FPRock_CmodA735t_app/Debug/FPRock_CmodA735t_app.elf
bpadd -addr &main
