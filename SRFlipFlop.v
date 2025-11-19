`timescale 1ns / 1ps
module sr_flipflop(
input clk,
input S,
input R,
input rst, // synchronous active-high reset
output reg Q
);
always @(posedge clk) begin
if (rst)
Q <= 1'b0;
else begin
if (S & ~R) Q <= 1'b1;
else if (~S & R) Q <= 1'b0;
else if (S & R) Q <= 1'bx; // invalid
// if S=R=0 hold
end
end
endmodule
