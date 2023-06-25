// Test bench for Full Adder
module tb_fullsubtractor();

reg a;
reg b;
reg bout;

wire diff,bin;

//instantiating the module 
full_subtractor DUT(a,b,bout,diff,bin);

task stimulus(input d1,d2,b1);
 begin
   a=d1;
   b=d2;
   bout=b1;
  end
 endtask
 
initial 
  begin
     $monitor("A=%b B=%b BorrowOut=%b: Difference=%b BorrowIn=%b",a,b,bout,diff,bin);
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