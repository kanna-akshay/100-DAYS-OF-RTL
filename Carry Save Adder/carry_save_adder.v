//carry Save Adder
module carry_save_adder(input [3:0] a,b,c,d,
                        output [4:0]sum,
						output cout);
						
						
	wire [3:0] s0;
	wire [3:0] c0,c1;
	wire [2:0] s1;
	
	full_adder  FA1(a[0],b[0],c[0],s0[0],c0[0]);
	full_adder  FA2(a[1],b[1],c[1],s0[1],c0[1]);
	full_adder  FA3(a[2],b[2],c[2],s0[2],c0[2]);
	full_adder  FA4(a[3],b[3],c[3],s0[3],c0[3]);
	
	
	full_adder  FA5(d[0],s0[0],1'b0,sum[0],c1[0]);
	full_adder  FA6(d[1],s0[1],c0[0],s1[0],c1[1]);
	full_adder  FA7(d[2],s0[2],c0[1],s1[1],c1[2]);
	full_adder  FA8(d[3],s0[3],c0[2],s1[2],c1[3]);
	
	ripple_carry_adder rca1(.D1(c1[3:0]),.D2({c0[3],s1[2:0]}),.cin(1'b0),.sum(sum[4:1]),.cout(cout));
	
	endmodule