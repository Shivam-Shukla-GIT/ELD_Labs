onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.vio_count xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {vio_count.udo}

run -all

quit -force
