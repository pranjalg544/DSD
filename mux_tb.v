`timescale 1ns / 1ps
`timescale 1ns / 1ps
// mux_tb.v - testbench for mux2to1 and mux4to1

module mux_tb;
  // 2:1 MUX signals
  reg a2, b2, sel2;
  wire y2;

  // 4:1 MUX signals
  reg [3:0] d4;
  reg [1:0] sel4;
  wire y4;

  // instantiate
  mux2to1 u2 (.a(a2), .b(b2), .sel(sel2), .y(y2));
  mux4to1 u4 (.d(d4), .sel(sel4), .y(y4));

  initial begin
    $display("Starting MUX test...");
    $monitor("Time=%0t | 2:1 a=%b b=%b sel=%b => y=%b | 4:1 d=%b sel=%b => y=%b",
             $time, a2, b2, sel2, y2, d4, sel4, y4);

    // 2:1 test vectors
    a2 = 0; b2 = 0; sel2 = 0; d4 = 4'b0000; sel4 = 2'b00; #10;
    a2 = 0; b2 = 1; sel2 = 0; d4 = 4'b0001; sel4 = 2'b01; #10;
    a2 = 1; b2 = 0; sel2 = 0; d4 = 4'b0010; sel4 = 2'b10; #10;
    a2 = 1; b2 = 1; sel2 = 0; d4 = 4'b0100; sel4 = 2'b11; #10;
    sel2 = 1; d4 = 4'b1000; sel4 = 2'b00; #10; // 2:1 select b
    a2 = 0; b2 = 1; sel2 = 1; d4 = 4'b1010; sel4 = 2'b01; #10;
    a2 = 1; b2 = 0; sel2 = 1; d4 = 4'b1110; sel4 = 2'b10; #10;
    a2 = 1; b2 = 1; sel2 = 1; d4 = 4'b1111; sel4 = 2'b11; #10;

    $display("MUX test finished.");
    $finish;
  end
endmodule

module mux_tb(

    );
endmodule
