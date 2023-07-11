// carry skip adder of 16 bit using Carry Look Ahead Adder
module CSA_16bit(input [15:0] Data1,
                 input [15:0] Data2,
                 input carryIn,
				 output reg [15:0] sum,
				 output reg carryOut);
				 
	reg carryIn_0=1'b0;
	reg carryIn_1=1'b1;
	reg carryOut2,carryOut3;
	wire carryOut1,carryOut2_0,carryOut2_1,carryOut3_0,carryOut3_1,carryOut4_0,carryOut4_1;
	wire [15:4]sum_0,sum_1;
	wire [3:0]sum0;
    	

	CLA  A1(Data1[3:0], Data2[3:0], carryIn, carryOut1,sum0[3:0]);
	CLA  A2(Data1[7:4], Data2[7:4], carryIn_0, carryOut2_0,sum_0 [7:4]);
	CLA  A3(Data1[7:4], Data2[7:4], carryIn_1, carryOut2_1,sum_1 [7:4]);
	CLA  A4(Data1[11:8], Data2[11:8], carryIn_0, carryOut3_0,sum_0 [11:8]);
	CLA  A5(Data1[11:8], Data2[11:8], carryIn_1, carryOut3_1,sum_1 [11:8]);
	CLA  A6(Data1[15:12], Data2[15:12], carryIn_0, carryOut4_0,sum_0 [15:12]);
	CLA  A7(Data1[15:12], Data2[15:12], carryIn_1, carryOut4_1,sum_1 [15:12]);
	
	
	always @(*)
	 begin
	   sum[3:0] =sum0 [3:0];
	   if(carryOut1)
	      begin
		    sum[7:4] = sum_1[7:4];
            carryOut2 = carryOut2_1;
            end
        else
          begin		
		    sum[7:4] = sum_0[7:4];
            carryOut2 = carryOut2_0;
            end

        if(carryOut2)
 	      begin
		    sum[11:8] = sum_1[11:8];
            carryOut3 = carryOut3_1;
            end
        else
          begin		
		    sum[11:8] = sum_0[11:8];
            carryOut3 = carryOut3_0;
            end           		
				 
           if(carryOut3)
 	      begin
		    sum[15:12] = sum_1[15:12];
            carryOut = carryOut4_1;
            end
        else
          begin		
		    sum[15:12] = sum_0[15:12];
            carryOut = carryOut4_0;
            end               
			
	end
	
endmodule