`timescale 1ns / 1ps
module priority_encoder_8to3(
input [7:0] d, // d[7] highest priority
output reg [2:0] code,
output reg valid
);
always @(*) begin
valid = |d;
casex (d)
8'b1xxxxxxx: code = 3'd7;
8'b01xxxxxx: code = 3'd6;
8'b001xxxxx: code = 3'd5;
8'b0001xxxx: code = 3'd4;
8'b00001xxx: code = 3'd3;
8'b000001xx: code = 3'd2;
8'b0000001x: code = 3'd1;
8'b00000001: code = 3'd0;
default: code = 3'd0;
endcase
end
endmodule
