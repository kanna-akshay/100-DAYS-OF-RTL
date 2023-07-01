//comparing 2 2_bit numbers
module comp_2bit(input [1:0]a,b,
                 input e,
                 output lt,eq,gt);
	
	wire lt1,lt2,gt1,gt2,eq1;
	
	comp c1(a[1],b[1],e,lt1,eq1,gt1);
	comp c2(a[0],b[0],eq1,lt2,eq,gt2);
	or   g1(lt,lt1,lt2);
	or   g2(gt,gt1,gt2);
	
 endmodule
    