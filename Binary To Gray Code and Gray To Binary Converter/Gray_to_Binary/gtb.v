//binary to gray decoder
module gtb(input [3:0]g,
           output [3:0]b);
		   
	assign b[3]=g[3];
	assign b[2]=b[3]^g[2];
	assign b[1]=b[2]^g[1];
	assign b[0]=g[0]^b[1];
	
endmodule