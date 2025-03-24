onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_fs3_opt

do {wave.do}

view wave
view structure
view signals

do {vio_fs3.udo}

run -all

quit -force
