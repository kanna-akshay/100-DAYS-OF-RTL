// MOD 2 counter usign 7490
module Counter_mod2(input rst,Clk,
                    output [3:0] Q,Qbar);
					
					
	IC_7490 IC_7490(1'b0,1'b0,1'b0,1'b0,rst,Clk,1'b1,Q,Qbar);
	
endmodule
    