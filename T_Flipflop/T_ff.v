// T flip flop With Asynchronous Reset
module T_ff(input T,rst,clk,enable,
          output reg q,
		  output qbar);
		  
always @(posedge clk or negedge rst) 
 begin
   if(!rst)
       q=1'b0;
	else if(enable)
      case(T)
	   1'b0: q=q;
	   1'b1: q=qbar;
	  endcase
	else
	  q=q;
 end
 
    assign qbar=~q;
endmodule 
	  