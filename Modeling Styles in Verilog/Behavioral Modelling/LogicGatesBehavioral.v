// Behavioral code for Logic gates
module logic_gate_behavioral(input A,
                           input B,
                           output reg Y_and,
						   output reg Y_nand,
						   output reg Y_nor,
						   output reg Y_or,
						   output reg Y_xnor,
						   output reg Y_xor);
  
always @(A or B)
 begin
  Y_and=A&B;
  Y_nand=~(A&B);
  Y_or=A|B;
  Y_nor=~(A|B);
  Y_xor=A^B;
  Y_xnor=~(A^B);
  end;
endmodule