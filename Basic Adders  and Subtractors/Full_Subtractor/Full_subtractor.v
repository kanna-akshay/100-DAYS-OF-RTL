//Full subtractor
module full_subtractor(input a,
                  input b,
				  input bout,
				  output diff,
				  output bin);
				  
	
	assign diff =a^b^bout;
	assign bin= ((~a)&b)|(bout&(a~^b));
	
endmodule