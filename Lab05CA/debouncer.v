`timescale 1ns / 1ps

module debouncer #(
    parameter DELAY_COUNTS = 21'd2_000_000
)(
    input wire clk,
    input wire pbin,
    output reg pbout = 1'b0
);

    reg [20:0] count = 21'd0;
    reg sync_0 = 1'b0;
    reg sync_1 = 1'b0;

    // Two-stage synchronizer
    always @(posedge clk) begin
        sync_0 <= pbin;
        sync_1 <= sync_0;
    end

    // Debounce counter
    always @(posedge clk) begin
        if (sync_1 == pbout) begin
            count <= 21'd0;
        end
        else begin
            count <= count + 21'd1;

            if (count >= DELAY_COUNTS) begin
                pbout <= sync_1;
                count <= 21'd0;
            end
        end
    end

endmodule