// SR flip flop
module SR_ff(input s,r,rst,clk,preset,clear,
          output reg q,
		  output qbar);
		  
always @(negedge clk or negedge rst) 
 begin
   if(!rst)
       q=1'b0;
	else if(!clear)
	   q=1'b0;
	else if(!preset)
	    q=1'b1;
	else 
	  begin
	  case({s,r})
	  0: q=q;
	  1: q=1'b0;
	  2: q=1'b1;
	  3: q=1'bx;
	  endcase
   end
 end
 
    assign qbar=~q;
endmodule 
	  
	  