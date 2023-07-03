//module for single unit of memory 1-bit storage
module reg_cell(input i,
                input rd_bar,
				input wr_bar,
				input en,
				input clk,
				output o);
	reg rd_en;
	reg q,q_bar;
	wire d;
	
	tristate_buffer tsb1(i,wr_bar,d);
	tristate_buffer tsb2(q,rd_en,o);
	
	always @(posedge clk)
	   begin 
	    if((~wr_bar)&en)
		   q<=d;
		 else
		   q<=q;
	  end
	  
	 always @(*)
	   begin
          rd_en=(~en)|rd_bar;	   
	      q_bar= ~q;
		end
		
endmodule