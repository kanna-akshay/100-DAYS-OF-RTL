// JK flip flop
module JK(input J,K,rst,clk,
          output reg q,
		  output qbar);
		  
always @(posedge clk) 
 begin
   if(!rst)
       q=1'b0;
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
	  