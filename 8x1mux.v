`timescale 1ns / 1ps
// 8x1 Multiplexer
module mux8x1(
    input  [7:0] d,      // 8 Data inputs
    input  [2:0] sel,    // 3-bit select line
    output y             // Output
);
    assign y = d[sel];   // Select the indexed input
endmodule
