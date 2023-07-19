// Synchronous Counter of modulus 15(i.e 0 to 15)
module S_Counter #(parameter N=4)(input clk,reset,pause,upDown,
                   output reg [N-1:0]count);
				 
always @(posedge clk )
 begin
 if(upDown)
    begin
     if(!reset)
       begin
      count<=4'b0000;
    end
    
     else if(pause)
        begin 
        count<=count;
     end
     else
        begin
      count<=count+4'b0001;
     end
     
    end
    
 else
     begin
   if(!reset)
     begin
	   count<=4'b1111;
	 end
	 
   else if(pause)
      begin 
	     count<=count;
	  end
   else
      begin
	   count<=count-1'b0001;
	  end
	  
   end
 
 end
 
 endmodule