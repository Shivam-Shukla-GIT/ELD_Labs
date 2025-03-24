onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib floating_point_add_opt

do {wave.do}

view wave
view structure
view signals

do {floating_point_add.udo}

run -all

quit -force
