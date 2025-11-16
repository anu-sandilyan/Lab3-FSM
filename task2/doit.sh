rm -rf obj_dir_task2
rm -f f1_fsm.vcd

verilator -Wall --cc --trace f1_fsm.sv --exe f1_fsm.cpp
make -j -C obj_dir_task2/ -f Vf1_fsm.mk Vf1_fsm
obj_dir_task2/Vf1_fsm