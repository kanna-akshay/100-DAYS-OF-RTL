// 4 Bit CarryLook Ahead addercode
module CLA(a, b, carryIn, carryOut,sum);
	input [3:0] a, b ;
	input  carryIn;
	output [3:0] sum;
	
	
	// output PG;
	// output GG;
	
	output carryOut;
	
	wire[3:0]p ,g ,c;
	
  assign p=a^b;
  assign g=a&b;


assign c[0]=carryIn;
assign c[1]= g[0]|(p[0]&c[0]);
assign c[2]= g[1] | (p[1]&g[0]) | p[1]&p[0]&c[0];
assign c[3]= g[2] | (p[2]&g[1]) | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&c[0];
assign carryOut= g[3] | (p[3]&g[2]) | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&c[0];
assign sum=p^c;
	
endmodule