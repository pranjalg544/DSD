// TB: Basic Gates
module tb_basic_gates;
reg a,b;
wire and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out;
basic_gates uut(a,b,and_out,or_out,not_a,nand_out,nor_out,xor_out,xnor_out);
initial begin
a=0; b=0;
#10 a=1; b=0;
#10 a=0; b=1;
#10 a=1; b=1;
#10 $finish;
end
endmodule