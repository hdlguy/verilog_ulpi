set_property IOSTANDARD LVCMOS25    [get_ports {clkin100}]; # Vadj is 2.5V
set_property PACKAGE_PIN F4         [get_ports {clkin100}]

set_property IOSTANDARD LVCMOS33    [get_ports {led_*}]
set_property PACKAGE_PIN V11        [get_ports {led_blue}]
set_property PACKAGE_PIN V10        [get_ports {led_green}]
set_property PACKAGE_PIN T11        [get_ports {led_yellow}]
set_property PACKAGE_PIN  T9        [get_ports {led_red}]


