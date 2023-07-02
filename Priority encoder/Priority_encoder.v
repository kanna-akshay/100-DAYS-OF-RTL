module priority_encoder(input [7:0]i,
                        output reg [2:0]y);
			
		
	always @(i)
	   begin
	     if(i>=128)   y=7;
		 else if(i>=64 & i<128)  y=6;
		 else if(i>=32 & i<64)  y=5;
		 else if(i>=16 & i<32)  y=4;
		 else if(i>=8 & i<16)  y=3;
		 else if(i>=4 & i<8)  y=2;
		 else if(i>=2 & i<4)  y=1;
		 else if(i>=0 & i<2)  y=0;
                 else y=0;
		 
		end
	endmodule