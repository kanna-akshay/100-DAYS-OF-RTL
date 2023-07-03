//module for tri state buffer (active low)
module tristate_buffer(input i,
                       input e,
					   output reg o);
					   
	always @(*)
	   begin
	     if(e==0)
		    o=i;
		  else
		    o=1'bz;
	   end
	   
endmodule