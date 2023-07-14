// D flip flop With Asynchronous Reset
module D_ff(input D,rst,clk,enable,
          output reg q,
		  output qbar);
		  
always @(posedge clk or negedge rst) 
 begin
   if(!rst)
       q=1'b0;
	else if(enable) 
	  q<=D;
	else
	  q<=q;
 end
 
    assign qbar=~q;
endmodule 
	  