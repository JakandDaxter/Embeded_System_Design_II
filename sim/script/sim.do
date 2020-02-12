vlib work
vcom -93 -work work ../../src/Top.vhd
vcom -93 -work work ../src/tb_Top.vhd
vsim -voptargs=+acc tb_Top
do wave.do
run 100 ms