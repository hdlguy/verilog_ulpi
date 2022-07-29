set_property IOSTANDARD LVCMOS25    [get_ports {clkin100}]; # Vadj is 2.5V
set_property PACKAGE_PIN F4         [get_ports {clkin100}]

set_property IOSTANDARD LVCMOS33    [get_ports {led_*}]
set_property PACKAGE_PIN V11        [get_ports {led_blue}]
set_property PACKAGE_PIN V10        [get_ports {led_green}]
set_property PACKAGE_PIN T11        [get_ports {led_yellow}]
set_property PACKAGE_PIN  T9        [get_ports {led_red}]


    //output  logic           ulpi_refclk,
    //output  logic           ulpi_resetn,
    //input   logic           ulpi_clk,
    //inout   logic[7:0]      ulpi_data,
    //output  logic           ulpi_stp,
    //input   logic           ulpi_dir,
    //input   logic           ulpi_nxt

set_property IOSTANDARD LVCMOS33    [get_ports {ulpi_*}]
set_property DRIVE 4                [get_ports {ulpi_refclk}]
set_property SLEW SLOW              [get_ports {ulpi_refclk}]
set_property PACKAGE_PIN  U14       [get_ports {ulpi_refclk}]
set_property PACKAGE_PIN  K13       [get_ports {ulpi_data[7]}]
set_property PACKAGE_PIN  G16       [get_ports {ulpi_data[6]}]
set_property PACKAGE_PIN  H17       [get_ports {ulpi_data[5]}]
set_property PACKAGE_PIN  J14       [get_ports {ulpi_data[4]}]
set_property PACKAGE_PIN  F15       [get_ports {ulpi_data[3]}]
set_property PACKAGE_PIN  E17       [get_ports {ulpi_data[2]}]
set_property PACKAGE_PIN  E15       [get_ports {ulpi_data[1]}]
set_property PACKAGE_PIN  U17       [get_ports {ulpi_data[0]}]
set_property PACKAGE_PIN  H16       [get_ports {ulpi_clk}]
set_property PACKAGE_PIN  L15       [get_ports {ulpi_stp}]
set_property PACKAGE_PIN  L18       [get_ports {ulpi_dir}]
set_property PACKAGE_PIN  J13       [get_ports {ulpi_nxt}]
set_property PACKAGE_PIN  L16       [get_ports {ulpi_resetn}]

