`timescale 1ns / 1ps
module counter_4bit(
input clk,
input rst, // synchronous active-high reset
input en,
output reg [3:0] q
);
always @(posedge clk) begin
if (rst) q <= 4'b0;
else if (en) q <= q + 1'b1;
end
endmodule
