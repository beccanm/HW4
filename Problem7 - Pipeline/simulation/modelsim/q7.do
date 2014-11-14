# load with ns resolution
vsim +altera -do Problem_4_30_run_msim_rtl_vhdl.do -l msim_transcript -gui -t ns work.problem_4_30

# add waves
add wave -position end sim:/problem_4_30/CLOCK_50 
add wave -position end  -radix unsigned sim:/problem_4_30/X
add wave -position end  -radix unsigned sim:/problem_4_30/Y
add wave -position end  -radix unsigned sim:/problem_4_30/P

# set clock with period of 50ns
force -freeze sim:/problem_4_30/CLOCK_50 0 0, 1 {25 ns} -r 50

# (0-110ns) initialize X and Y to 0 and wait 1 clock cycle to ensure that it remains 0
force -deposit /X 10#0 
force -deposit /Y 10#0 

# (110-160ns) set X = 10, Y = 5 
force -deposit /X 10#10 110
force -deposit /Y 10#5 110

# (160-210ns) set X = 14, Y = 3 
force -deposit /X 10#14 160
force -deposit /Y 10#3 160

# (210-260ns) set X = 15, Y = 15 
force -deposit /X 10#15 210
force -deposit /Y 10#15 210

# run simulation
run 400