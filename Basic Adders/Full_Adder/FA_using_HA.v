//Full Adder using Half Adder
module FA_using_HA(input a,
                   input b,
				   input cin,
				   output sum,
				   output cout);
		
      wire w1,w2,w3;		
				   
	 half_adder HA1(a,b,w1,w2);
	 half_adder HA2(w1,cin,sum,w3);
	 
	 assign cout= w2|w3;

endmodule
				   