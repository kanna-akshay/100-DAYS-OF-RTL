// Test bench for Half Adder
module tb_halfadder();

reg a;
reg b;

wire sum,cout;

//instantiating the module 
half_adder DUT(a,b,sum,cout);

task stimulus(input d1,d2);
 begin
   a=d1;
   b=d2;
  end
 endtask
 
initial 
  begin
     $monitor("A=%b B=%b : Sum=%b Carryout=%b",a,b,sum,cout);
	end
	
initial 
  begin
   
       stimulus(0,0);
   #10 stimulus(0,1);
   #10 stimulus(1,0);
   #10 stimulus(1,1);
  
  #20 $finish;
  end
  
endmodule