`timescale 1ns / 1ps
`timescale 1ns / 1ps
// mux.v - contains 2:1 and 4:1 multiplexers

module mux2to1 (
  input  wire a,
  input  wire b,
  input  wire sel,
  output wire y
);
  assign y = sel ? b : a;
endmodule

module mux4to1 (
  input  wire [3:0] d,   // d[3]..d[0]
  input  wire [1:0] sel, // sel[1:0]
  output wire y
);
  assign y = (sel == 2'b00) ? d[0] :
             (sel == 2'b01) ? d[1] :
             (sel == 2'b10) ? d[2] :
                              d[3];
endmodule


module mux(

    );
endmodule
