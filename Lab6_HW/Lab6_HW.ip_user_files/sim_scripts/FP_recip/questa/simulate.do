onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FP_recip_opt

do {wave.do}

view wave
view structure
view signals

do {FP_recip.udo}

run -all

quit -force
