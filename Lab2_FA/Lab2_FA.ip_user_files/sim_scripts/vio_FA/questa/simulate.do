onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_FA_opt

do {wave.do}

view wave
view structure
view signals

do {vio_FA.udo}

run -all

quit -force
