`timescale 1ns / 1ps
`timescale 1ns / 1ps
// encoder_decoder_tb.v - testbench for priority encoder and decoder

module encoder_decoder_tb;
  reg [3:0] pe_in;
  wire [1:0] pe_code;
  wire pe_valid;

  reg [1:0] dec_in;
  reg       dec_en;
  wire [3:0] dec_out;

  priority_encoder_4to2 pe(.in(pe_in), .code(pe_code), .valid(pe_valid));
  decoder_2to4 dec(.in(dec_in), .en(dec_en), .out(dec_out));

  initial begin
    $display("Starting encoder/decoder test...");
    $monitor("Time=%0t | PE in=%b valid=%b code=%b | DEC in=%b en=%b out=%b",
             $time, pe_in, pe_valid, pe_code, dec_in, dec_en, dec_out);

    // Priority Encoder tests
    pe_in = 4'b0000; #10;
    pe_in = 4'b0001; #10;
    pe_in = 4'b0010; #10;
    pe_in = 4'b0011; #10; // priority should pick bit 1
    pe_in = 4'b0100; #10;
    pe_in = 4'b1000; #10;
    pe_in = 4'b1010; #10; // priority should pick bit 3
    pe_in = 4'b0000; #10;

    // Decoder tests
    dec_en = 0; dec_in = 2'b00; #10;
    dec_en = 1; dec_in = 2'b00; #10;
    dec_in = 2'b01; #10;
    dec_in = 2'b10; #10;
    dec_in = 2'b11; #10;
    dec_en = 0; dec_in = 2'b11; #10;

    $display("Encoder/Decoder test finished.");
    $finish;
  end
endmodule


module encoder_decoder_tb(

    );
endmodule
