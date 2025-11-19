`timescale 1ns / 1ps
// 3-to-8 decoder with enable
module decoder3to8(
input [2:0] in,
input en,
output reg [7:0] out
);
always @(*) begin
out = 8'b0;
if (en)
out[in] = 1'b1;
end
endmodule
