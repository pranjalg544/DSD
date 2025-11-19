`timescale 1ns / 1ps


// TB: Boolean Expression
module tb_boolean_expr;
reg A,B,C;
wire F;
boolean_expr uut(A,B,C,F);
initial begin
{A,B,C}=0;
repeat(8) begin
#10 {A,B,C} = {A,B,C} + 1;
end
#10 $finish;
end
endmodule