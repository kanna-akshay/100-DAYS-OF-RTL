//Full subtractor using Half subtractor
module FS_using_HS(input a,
                   input b,
				   input bout,
				   output diff,
				   output bin);
		
      wire w1,w2,w3;		
				   
	 half_subtractor HA1(a,b,w1,w2);
	 half_subtractor HA2(w1,bout,diff,w3);
	 
	 assign bin= w2|w3;

endmodule
			