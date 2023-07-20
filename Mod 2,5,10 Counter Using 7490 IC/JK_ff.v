// JK flip flop
module JK_ff(input J,K,rst,clk,preset,clear,
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
	  case({J,K})
	  0: q=q;
	  1: q=1'b0;
	  2: q=1'b1;
	  3: q=qbar;
	  endcase
   end
 end
 
    assign qbar=~q;
endmodule 
	  