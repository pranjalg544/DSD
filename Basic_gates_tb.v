module basic_gates_tb;
  reg a, b;
  wire and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out;

  basic_gates uut(a, b, and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out);

  initial begin
    $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
              $time, a, b, and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out);

    a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=0;
    #10 a=1; b=1;
    #10 $finish;
  end
endmodule



module Basic_gates_tb(

    );
endmodule
