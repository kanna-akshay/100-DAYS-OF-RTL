module CLATB();

reg [3:0]a,b;
reg carryin;
wire [3:0]sum;
wire carryout;

carryLookAheadAdder4Bit DUT(a, b, carryin, carryout,sum);

initial 
begin
    #5 a=4'h0;b=4'h0;carryin=1'b0;
	#1 $display("%b %b %b:%b %b :%d",a,b,carryin,carryout,sum,{carryout,sum});
repeat(5)
  begin 
    #5 a=$random;b=$random;carryin=$random;
	#1 $display("%b %b %b:%b %b :%d",a,b,carryin,carryout,sum,{carryout,sum});
   end
    #5 a=4'hf;b=4'hf;carryin=0;
	#1 $display("%b %b %b:%b %b :%d",a,b,carryin,carryout,sum,{carryout,sum});
   
   #10 $finish;
  end;
endmodule
    
	