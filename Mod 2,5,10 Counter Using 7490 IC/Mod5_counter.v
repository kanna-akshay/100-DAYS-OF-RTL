// MOD 5 counter usign 7490
module Counter_mod5(input MS1,MS2,MR1,MR2,rst,Clk,
                    output [3:0] Q,Qbar);
					
					
	IC_7490 IC_7490(MS1,MS2,MR1,MR2,rst,1'b1,Clk,Q,Qbar);
	
endmodule
    