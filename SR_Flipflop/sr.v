// SR flip flop
module sr(input s,r,rst,clk,
          output reg q,
		  output qbar);
		  
always @(posedge clk) 
 begin
   if(!rst)
       q=1'b0;
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
	  
	  