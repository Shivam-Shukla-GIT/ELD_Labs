onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_cmt_opt

do {wave.do}

view wave
view structure
view signals

do {clk_cmt.udo}

run -all

quit -force
