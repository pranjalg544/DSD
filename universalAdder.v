`timescale 1ns / 1ps
// Universal Adder/Subtractor with Overflow Detection
module universal_adder #(
    parameter WIDTH = 8
)(
    input  [WIDTH-1:0] A, B,
    input              mode,         // 0 = Add, 1 = Subtract
    output [WIDTH-1:0] RESULT,
    output             carry_out,
    output             overflow
);

    wire [WIDTH-1:0] B_mod;
    wire cin;
    wire [WIDTH:0] sum_ext;

    assign B_mod = mode ? ~B : B;   // Invert B for subtraction
    assign cin   = mode;            // Add carry for subtraction (2's complement)

    assign sum_ext = {1'b0, A} + {1'b0, B_mod} + cin;  
    assign RESULT  = sum_ext[WIDTH-1:0];
    assign carry_out = sum_ext[WIDTH];  

    // Overflow detection for signed numbers:
    assign overflow = (A[WIDTH-1] == B_mod[WIDTH-1]) && 
                      (RESULT[WIDTH-1] != A[WIDTH-1]);

endmodule

