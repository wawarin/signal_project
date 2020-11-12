onerror {exit -code 1}
vlib work
vlog -work work Top_DAC.vo
vlog -work work dac_waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Top_DAC_vlg_vec_tst -voptargs="+acc"
vcd file -direction Top_DAC.msim.vcd
vcd add -internal Top_DAC_vlg_vec_tst/*
vcd add -internal Top_DAC_vlg_vec_tst/i1/*
run -all
quit -f
