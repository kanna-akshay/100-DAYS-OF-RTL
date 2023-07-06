module demux1x4#(parameter INPUTS=4,SEL=2)
              (output [INPUTS-1:0]i,
			   input [SEL-1:0]s,
			   input e,
			   input y);
		wire [3:0]t;
	assign sbar=~s[1];
  demux1_2 m1(s[0],y,sbar,t[0],t[1]);
  demux1_2 m2(s[0],y,s[1],t[2],t[3]);
      assign i[0]=t[0]&e;
      assign i[1]=t[1]&e;
      assign i[2]=t[2]&e;
      assign i[3]=t[3]&e;
     
  endmodule