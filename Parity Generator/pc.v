//parity checker 
module parc(input [7:0]Din,
            output parity,
            output [8:0]Dout);
			
	//even parity
	 
	 assign parity=Din[7]^Din[6]^Din[5]^Din[4]^Din[3]^Din[2]^Din[1]^Din[0];
	 assign Dout={Din,parity};
	 
endmodule
	 