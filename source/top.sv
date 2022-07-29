//
module top (
    input   logic           clkin100,
    //
    output  logic           led_red,
    output  logic           led_yellow,
    output  logic           led_green,
    output  logic           led_blue
);


    assign clk = clkin100;

    logic[26:0] led_count;
    always_ff @(posedge clk) begin
        led_count  <= led_count + 1;
        led_red    <= led_count[26];
        led_yellow <= led_count[25];
        led_green  <= led_count[24];
        led_blue   <= led_count[23];
    end

endmodule


