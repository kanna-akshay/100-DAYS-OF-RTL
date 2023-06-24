// structural behaviour of gates in verilog

module logic_gate_struct(input A,
                         input B,
						 output Y_and,
						 output Y_nand,
						 output Y_nor,
						 output Y_or,
						 output Y_xnor,
						 output Y_xor);
  
  and G1(Y_and,A,B);
  nand G2(Y_nand,A,B);
  or G3(Y_or,A,B);
  nor G4(Y_nor,A,B);
  xor G5(Y_xor,A,B);
  xnor G6(Y_xnor,A,B);
 
endmodule

