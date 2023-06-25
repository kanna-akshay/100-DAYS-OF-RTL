//n-bit adder using half adder and full adder
module adder_8bit(input d0,
                   input d1,
                   input d2,
                   input d3,
                   input d4,
                   input d5,
                   input d6,
                   input d7,
				   output [2:0]sum,
				   output cout);
				   
	wire sum1,sum2,sum3,sum4,sum5,sum6,sum7;
	wire cout1,cout2,cout3,cout4,cout5,cout6,cout7;
				   
		full_adder FA1(d0,d1,d2,sum1,cout1);              
		full_adder FA2(d3,d4,d5,sum2,cout2);              
        half_adder HA3(d6,d7,sum3,cout3);                 
		full_adder FA4(sum1,sum2,sum3,sum4,cout4);        
		full_adder FA5(cout1,cout2,cout3,sum5,cout5);     
        half_adder HA6(sum5,cout4,sum6,cout6);
        half_adder HA7(cout5,cout6,sum7,cout7);

    assign sum ={sum7,sum6,sum4};
	assign cout= cout7;
	
	
endmodule
		
		
		