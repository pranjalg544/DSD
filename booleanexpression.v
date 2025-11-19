`timescale 1ns / 1ps

// Example: implement F = A'B + AC
module boolean_expr(
input A,
input B,
input C,
output F
);
assign F = (~A & B) | (A & C);
endmodule
