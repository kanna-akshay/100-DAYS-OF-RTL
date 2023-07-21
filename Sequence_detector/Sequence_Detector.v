// Sequence Deterctor 011
module Seq_det(input  Seq_in,clk,reset,
               output reg Seq_out);
			   
			   
	parameter S0=2'b00,
	          S1=2'b01,
			  S2=2'b10,
			  S3=2'b11;
			  
reg [1:0] Present_state,next_state;
always @(posedge clk or negedge reset)
     begin 
	   if(!reset)
	    Present_state<=S0;
	   else
	    Present_state<=next_state;
	  end
	  
always @(Present_state,Seq_in)
  begin
    case(Present_state)
	  S0:begin
	    if(Seq_in==0)
		next_state =S1;
		else 
		next_state=S0;
		end
	  S1:begin
	    if(Seq_in==1)
		next_state=S2;
		else
		next_state=S1;
		end
      S2:begin
	    if(Seq_in==1)
		next_state=S3;
		else
		next_state=S0;
		end
	  S3:next_state=S0;

	 default:next_state=S0;
	 
	 endcase
end
	
always @(Present_state)
begin
 case(Present_state)
    S0: Seq_out =1'b0;
    S1: Seq_out =1'b0;
    S2: Seq_out =1'b0;
    S3: Seq_out =1'b1;
default: Seq_out=1'b0;
endcase
end

endmodule
	