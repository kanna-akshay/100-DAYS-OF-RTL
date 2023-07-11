module ripple_carry_adder(input [3:0] D1,
                          input [3:0] D2,
						  input cin,
						  output [3:0]sum,
						  output cout);
						  
		wire [2:0] carry;
		
		full_adder  FA1(D1[0],D2[0],cin,sum[0],carry[0]);
		full_adder  FA2(D1[1],D2[1],carry[0],sum[1],carry[1]);
		full_adder  FA3(D1[2],D2[2],carry[1],sum[2],carry[2]);
		full_adder  FA4(D1[3],D2[3],carry[2],sum[3],cout);
		
endmodule
		