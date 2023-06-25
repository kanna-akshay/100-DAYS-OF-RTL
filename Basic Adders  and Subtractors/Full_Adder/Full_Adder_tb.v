// Test bench for Full Adder
module tb_fulladder();

reg a;
reg b;
reg cin;

wire sum,cout;

//instantiating the module 
full_adder DUT(a,b,cin,sum,cout);

task stimulus(input d1,d2,c1);
 begin
   a=d1;
   b=d2;
   cin=c1;
  end
 endtask
 
initial 
  begin
     $monitor("A=%b B=%b Carryin=%b: Sum=%b Carryout=%b",a,b,cin,sum,cout);
	end
	
initial 
  begin
   
       stimulus(0,0,0);
   #10 stimulus(0,0,1);
   #10 stimulus(0,1,0);
   #10 stimulus(0,1,1);
   #10 stimulus(1,0,0);
   #10 stimulus(1,0,1);
   #10 stimulus(1,1,0);
   #10 stimulus(1,1,1);
  
  #20 $finish;
  end
  
endmodule