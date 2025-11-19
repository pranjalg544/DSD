`timescale 1ns / 1ps
module full_subtractor(
input a,
input b,
input bin, // borrow in
output diff,
output bout // borrow out
);
// diff = a - b - bin (mod 2)
assign diff = a ^ b ^ bin;
// borrow out occurs when a < (b + bin)
assign bout = (~a & b) | ((~(a ^ b)) & bin) | ((~a) & bin);
// simplified form often used: bout = (~a & b) | (bin & ~(a ^ b));
endmodule
