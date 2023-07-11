module CSA_TB();

reg [15:0] data1,data2;
reg carryin;
wire [15:0]sum;
wire carryout;

CSA_16bit DUT(data1, data2, carryin, sum, carryout);

initial 
begin
    #5 data1=16'h0;data2=16'h0;carryin=1'b0;
	#1 $display("%b %b %b:%b %b :%d",data1,data2,carryin,carryout,sum,{carryout,sum});
repeat(5)
  begin 
    #5 data1=$random;data2=$random;carryin=$random;
	#1 $display("%b %b %b:%b %b :%d",data1,data2,carryin,carryout,sum,{carryout,sum});
   end
    #5 data1=16'hffff;data2=16'hffff;carryin=0;
	#1 $display("%b %b %b:%b %b :%d",data1,data2,carryin,carryout,sum,{carryout,sum});
   
   #10 $finish;
  end
endmodule