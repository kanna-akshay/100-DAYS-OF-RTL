module demux1x8#(parameter INPUTS=8,SEL=3)
              (output [INPUTS-1:0]i,
			   input [SEL-1:0]s,
			   input e,
			   input y);
		wire t;
      assign t=y&e;
	assign sbar=~s[2];
  demux1x4 m1(i[3:0],s[1:0],sbar,t);
  demux1x4 m2(i[7:4],s[1:0],s[2],t);
      
     
  endmodule