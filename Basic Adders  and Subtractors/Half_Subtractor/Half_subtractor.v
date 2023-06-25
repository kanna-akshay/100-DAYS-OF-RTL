//Half subtractor
module half_subtractor(input a,
                  input b,
				  output diff,
				  output bin);
				  
	assign diff = a^b;
	assign bin = (~a)&b;
	
endmodule