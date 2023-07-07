module mux8x1#(parameter INPUTS=8,SEL=3)
              (input [INPUTS-1:0]i,
			   input [SEL-1:0]s,
			      output y);
	wire t0,t1;
	
  mux4x1 m1(i[3:0],s[1:0],t0);
  mux4x1 m2(i[7:4],s[1:0],t1);
  mux2_1 m3(s[2],t0,t1,y);
  
  endmodule