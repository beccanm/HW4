# load with ns resolution
vsim +altera -do MISR_8_run_msim_rtl_vhdl.do -l msim_transcript -gui -t ns work.misr_8

# add waves
add wave -position end sim:/misr_8/CLOCK_50
add wave -position end  -radix unsigned sim:/misr_8/Z
add wave -position end  -radix unsigned sim:/misr_8/Q
add wave -position end  -radix unsigned sim:/misr_8/Qint

# set clock with period of 50ns
force -freeze sim:/misr_8/CLOCK_50 0 0, 1 {25 ns} -r 50

# (0-110ns) initialize Qint and Z to 0 and wait 1 clock cycle to ensure that it remains 0
force -deposit /Z 10#0 0
force -deposit /Qint 10#0 0

# (110-500ns) apply test sequence (in 8-bit unsigned values) of Z = 101, 67, 212, 78, 255, 5, 29, 32 
force -deposit /Z 10#145 110, 10#32 160, 10#100 210, 10#35 260, 10#245 310, 10#2 360, 10#24 410, 10#30 460

# (500-610ns) reinitialize Q and Z to 0
force -deposit /Qint 10#0 510
force -deposit /Z 10#0 510

# (610-1000ns) change test sequence by 1 to ensure different signature.  Z = 100, 67, 212, 78, 255, 5, 29, 32
force -deposit /Z 10#146 610, 10#32 660, 10#100 710, 10#35 760, 10#245 810, 10#2 860, 10#24 910, 10#30 960

# (1010-1100ns) reinitialize Q and Z to 0
force -deposit /Qint 10#0 1010
force -deposit /Z 10#0 1010

# (1110-1500ns) reapply 1st test sequence to ensure same signature
force -deposit /Z 10#145 1110, 10#32 1160, 10#100 1210, 10#35 1260, 10#245 1310, 10#2 1360, 10#24 1410, 10#30 1460

# run simulation
run 1500