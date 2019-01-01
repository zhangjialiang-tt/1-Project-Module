#---------  ------------#

#1.exit modelsim simulation
quit -sim

#2.clear messages
.main clear

#3.delete the existing work dir
if [file exists work] {vdel -all}

#--------- create library and mapping ------------#
#4.creat work dir
vlib work

#5.
vmap work work

#6.complie .v files
vlog -work work ./*.v
vlog -work work ./../src/*.v
# vlog -work work ./quartus_lib/220model.v
# vlog -work work ./quartus_lib/altera_mf.v
#vlog -work work ./../core/*.v

#7.start simulation
vsim -voptargs=+acc work.tb_x

#8.add waves
	#add -divider { name }
add wave -group xx -radix unsigned tb_x/*
add wave -group xx -radix unsigned tb_x/inst_top/*

#9.run
run 100us