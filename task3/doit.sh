rm -rf obj_dir
rm -f f1_fsm.vcd

# This line now includes clktick.sv
verilator -Wall --cc --trace f1_fsm.sv clktick.sv --exe f1_fsm_tb.cpp

# The rest of the file is correct
make -j -C obj_dir/ -f Vf1_fsm.mk Vf1_fsm
obj_dir/Vf1_fsm