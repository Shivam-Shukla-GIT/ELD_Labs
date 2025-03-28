onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xfft_32 -L xil_defaultlib -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_13 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_13 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L cmpy_v6_0_17 -L floating_point_v7_0_16 -L xfft_v9_1_2 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xfft_32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xfft_32.udo}

run -all

endsim

quit -force
