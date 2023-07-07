module mux4x1#(parameter INPUTS=4,SEL=2)
              (input [INPUTS-1:0]i,
			   input [SEL-1:0]s,
			      output y);
	wire t0,t1;
	
  mux2_1 m1(s[0],i[0],i[1],t0);
  mux2_1 m2(s[0],i[2],i[3],t1);
  mux2_1 m3(s[1],t0,t1,y);
  
  endmodule
  
  
  
			   