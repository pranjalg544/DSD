`timescale 1ns / 1ps
`timescale 1ns / 1ps
// encoder_decoder.v - 4->2 priority encoder (active-high inputs) and 2->4 decoder

// 4-to-2 Priority Encoder
// Priority: in[3] highest ... in[0] lowest
// If no inputs asserted, valid = 0 and code = 2'b00
module priority_encoder_4to2 (
  input  wire [3:0] in,
  output reg  [1:0] code,
  output reg        valid
);
  always @(*) begin
    valid = 1'b0;
    code  = 2'b00;
    if (in[3]) begin valid = 1'b1; code = 2'b11; end
    else if (in[2]) begin valid = 1'b1; code = 2'b10; end
    else if (in[1]) begin valid = 1'b1; code = 2'b01; end
    else if (in[0]) begin valid = 1'b1; code = 2'b00; end
    else begin valid = 1'b0; code = 2'b00; end
  end
endmodule

// 2-to-4 Decoder (one-hot), active high
module decoder_2to4 (
  input  wire [1:0] in,
  input  wire       en,   // enable
  output wire [3:0] out
);
  assign out = en ? (4'b0001 << in) : 4'b0000;
endmodule

module encoder_decoder(

    );
endmodule
