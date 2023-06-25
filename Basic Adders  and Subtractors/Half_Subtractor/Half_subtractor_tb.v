// Test bench for Half Adder
module tb_halfsubtractor();

reg a;
reg b;

wire diff,bin;

//instantiating the module 
half_subtractor DUT(a,b,diff,bin);

task stimulus(input d1,d2);
 begin
   a=d1;
   b=d2;
  end
 endtask
 
initial 
  begin
     $monitor("A=%b B=%b : Difference=%b BorrowIn=%b",a,b,diff,bin);
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