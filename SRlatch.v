`timescale 1ns / 1ps
module sr_latch_nand(
    input S,
    input R,
    output Q,
    output Qbar
);
    wire q_int, qbar_int;

    assign q_int   = ~(S & qbar_int);  // NAND implementation
    assign qbar_int = ~(R & q_int);    // NAND implementation

    assign Q = q_int;
    assign Qbar = qbar_int;
endmodule
