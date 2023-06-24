module logic_gate_Dataflow(input A,
                           input B,
						   output Y_and,
						   output Y_nand,
						   output Y_nor,
						   output Y_or,
						   output Y_xnor,
						   output Y_xor);
  
 assign Y_and=A&B;
 assign Y_nand=~(A&B);
 assign Y_or=A|B;
 assign Y_nor=~(A|B);
 assign Y_xor=A^B;
 assign Y_xnor=~(A^B);
 
endmodule
