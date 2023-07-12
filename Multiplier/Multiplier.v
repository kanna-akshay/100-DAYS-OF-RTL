//  multiplier 2 four bit multipler

module multiplier (input [3:0] a,b,
                              output [7:0] y);
							  
	wire [3:0] t0,t1,t2,t3,s;
	wire c1,c2,c3,c4,c5,c6,c7;
	
	assign t0 = b[0]? a : 4'h0;
	assign t1 = b[1]? a : 4'h0;
	assign t2 = b[2]? a : 4'h0;
	assign t3 = b[3]? a : 4'h0;
	
	
	assign y[0] = t0[0];
	
 halfadder_struct  ha1(t0[1],t1[0],y[1],c1);
 
 full_adder fa1(t0[2],t1[1],t2[0],s[0],c2);
 
 add4_bit ad4({t0[3],t1[2],t2[1],t3[0]},s[1],{c4,c3});
 
 full_adder fa2(t1[3],t2[2],t3[1],s[2],c5);
 
 full_adder fa3(t2[3],t3[2],c4,s[3],c6);
 
 ripple_carry_adder rpa1(s,{c5,c3,c2,c1},1'b0,y[5:2],c7);
 
 full_adder fa4(t3[3],c6,c7,y[6],y[7]);
 
 endmodule
 
 
 
 
 
 
 
 