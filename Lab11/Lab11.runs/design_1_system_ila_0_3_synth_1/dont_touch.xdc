# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: D:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/design_1_system_ila_0_3.xci
# IP: The module: 'design_1_system_ila_0_3' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/bd_f74c.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c || ORIG_REF_NAME==bd_f74c} -quiet] -quiet

# IP: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/bd_f74c_ila_lib_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] -quiet

# IP: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_1/bd_f74c_g_inst_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c_g_inst_0 || ORIG_REF_NAME==bd_f74c_g_inst_0} -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/design_1_system_ila_0_3_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'design_1_system_ila_0_3'. Do not add the DONT_TOUCH constraint.
set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/bd_f74c_ila_lib_0_ooc.xdc

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/bd_f74c_ooc.xdc

# IP: D:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/design_1_system_ila_0_3.xci
# IP: The module: 'design_1_system_ila_0_3' is the root of the design. Do not add the DONT_TOUCH constraint.

# Block Designs: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/bd_f74c.bd
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c || ORIG_REF_NAME==bd_f74c} -quiet] -quiet

# IP: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/bd_f74c_ila_lib_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] -quiet

# IP: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_1/bd_f74c_g_inst_0.xci
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==bd_f74c_g_inst_0 || ORIG_REF_NAME==bd_f74c_g_inst_0} -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/design_1_system_ila_0_3_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'design_1_system_ila_0_3'. Do not add the DONT_TOUCH constraint.
#dup# set_property DONT_TOUCH TRUE [get_cells inst -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==bd_f74c_ila_lib_0 || ORIG_REF_NAME==bd_f74c_ila_lib_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/ip/ip_0/bd_f74c_ila_lib_0_ooc.xdc

# XDC: d:/Drive_D/ELD2023/Lab10/Lab10.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_3/bd_0/bd_f74c_ooc.xdc
