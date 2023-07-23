//mod counter Asyncronous
module IC_7490(input MS1,MS2,MR1,MR2,rst,CP0_bar,CP1_bar,
               output [3:0] Q,Qbar);
    
	wire Set,Clr,s;
	
	
	nand g1(Set,MS1,MS2);
	nand g2(Clr,MR1,MR2);
	and  g3(s,Q[1],Q[2]);
	
	//mod 2 counter
	JK_ff JK1(1'b1,1'b1,rst,CP0_bar,Set,Clr,Q[0],Qbar[0]);
	
   //mod 5 counter	
	JK_ff JK2(Qbar[3],1'b1,rst,CP1_bar,Set,Clr,Q[1],Qbar[1]);
	JK_ff JK3(1'b1,1'b1,rst,Q[1],Set,Clr,Q[2],Qbar[2]);
	SR_ff SR1(s,Q[3],rst,CP1_bar,Set,Clr,Q[3],Qbar[3]);
	

endmodule	