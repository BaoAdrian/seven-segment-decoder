## This part is to activate or deactive ANODE of each display digit
set_property IOSTANDARD LVCMOS33 [get_ports {en_out[0]}]
set_property PACKAGE_PIN U2 [get_ports {en_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_out[1]}]
set_property PACKAGE_PIN U4 [get_ports {en_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_out[2]}]
set_property PACKAGE_PIN V4 [get_ports {en_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_out[3]}]
set_property PACKAGE_PIN W4 [get_ports {en_out[3]}]

##This part is to assign a pin number to 100MHz clock signal
set_property PACKAGE_PIN W5 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]

##This part is to assign pin numbers for 7-bit input number
##Number[6] - Most Significant Bit (MSB) => SW6 (pin W14)
##Number[0] - Least Siginificant Bit (LSB) => SW0 (pin V17)
set_property IOSTANDARD LVCMOS33 [get_ports {Number[6]}]
set_property PACKAGE_PIN W14 [get_ports {Number[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[5]}]
set_property PACKAGE_PIN V15 [get_ports {Number[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[4]}]
set_property PACKAGE_PIN W15 [get_ports {Number[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[3]}]
set_property PACKAGE_PIN W17 [get_ports {Number[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[2]}]
set_property PACKAGE_PIN W16 [get_ports {Number[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[1]}]
set_property PACKAGE_PIN V16 [get_ports {Number[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Number[0]}]
set_property PACKAGE_PIN V17 [get_ports {Number[0]}]

##This part is to assign pin numbers for 7 segments of the digit display
set_property IOSTANDARD LVCMOS33 [get_ports {out7[6]}]
set_property PACKAGE_PIN W7 [get_ports {out7[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[5]}]
set_property PACKAGE_PIN W6 [get_ports {out7[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[4]}]
set_property PACKAGE_PIN U8 [get_ports {out7[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[3]}]
set_property PACKAGE_PIN V8 [get_ports {out7[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[2]}]
set_property PACKAGE_PIN U5 [get_ports {out7[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[1]}]
set_property PACKAGE_PIN V5 [get_ports {out7[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out7[0]}]
set_property PACKAGE_PIN U7 [get_ports {out7[0]}]
