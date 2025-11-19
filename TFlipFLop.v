`timescale 1ns / 1ps
module t_flipflop(
input clk,
input rst,
input T,
output reg Q
);
always @(posedge clk) begin
if (rst) Q <= 1'b0;
else if (T) Q <= ~Q;
else Q <= Q;
end
endmodule
