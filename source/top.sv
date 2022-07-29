//
module top (
    input   logic           clkin100,
    //
    output  logic           led_red,
    output  logic           led_yellow,
    output  logic           led_green,
    output  logic           led_blue,
    //
    output  logic           ulpi_refclk,
    output  logic           ulpi_resetn,
    input   logic           ulpi_clk,
    inout   logic[7:0]      ulpi_data,
    output  logic           ulpi_stp,
    input   logic           ulpi_dir,
    input   logic           ulpi_nxt
);

    logic clk, clk13;    
    clk_wiz clk_wiz_inst (.clk_in1(clkin100), .clkout100(clk), .clkout13(clk13), .locked());
    
    logic clk13q;
    ODDR #(.DDR_CLK_EDGE("SAME_EDGE"), .INIT(1'b0), .SRTYPE("SYNC")) refclk_ODDR_inst (.Q(clk13q), .C(clk13), .CE(1'b1), .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0));
    OBUF refclk_OBUF_inst (.I(clk13q), .O(ulpi_refclk));

    logic[26:0] led_count;
    always_ff @(posedge clk) begin
        led_count  <= led_count + 1;
        led_red    <= led_count[26];
    end

    logic[26:0] ulpi_count;
    always_ff @(posedge ulpi_clk) begin
        ulpi_count  <= ulpi_count + 1;
        led_blue    <= ulpi_count[26];
    end
    
    assign led_yellow = 0;
    assign led_green = 0;
    assign ulpi_resetn = 1;
    assign ulpi_stp = 0;

endmodule


