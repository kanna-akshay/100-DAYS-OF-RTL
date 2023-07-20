// MOD 10 counter usign 7490
module Counter_mod10(input MS1,MS2,MR1,MR2,rst,Clk,
                    output [3:0] Q,Qbar);
					
					
	IC_7490 IC_7490(MS1,MS2,MR1,MR2,rst,Clk,Q[0],Q,Qbar);
	
endmodule
    