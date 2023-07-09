// 4 Bit CarryLook Ahead addercode
module carryLookAheadAdder4Bit(A, B, carryIn, carryOut,sum);
	input [3:0] A, B ;
	input  carryIn;
	output [3:0] sum;
	
	
	// output PG;
	// output GG;
	
	output carryOut;
	
	wire[3:0]P ,G ,C;
	
	assign G= A & B;
	assign P= A ^ B;
	assign sum = P ^ C;
	
	assign C[0]=carryIn;
	
	assign C[1]= G[0]|(P[0]|C[0]);
	assign C[2]= G[1]|(P[1]&C[0]|(P[0]&P[1]&C[0]));
	assign C[3]= G[2]|(G[1]&P[2]|(P[2]&P[1]&C[0])|(P[2]&P[0]&P[1]&C[0]));
	assign carryOut=C[3];
	
endmodule