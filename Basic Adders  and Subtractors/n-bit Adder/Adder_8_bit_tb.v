// Test bench for Half Adder
module tb_adder_8bit();

reg d0;
reg d1;
reg d2;
reg d3;
reg d4;
reg d5;
reg d6;
reg d7;

wire [2:0]sum;
wire cout;

//instantiating the module 
adder_8_bit    DUT(d0,d1,d2,d3,d4,d5,d6,d7,sum,cout);

task stimulus(input [7:0]a);
 begin
  d0= a[0];
  d1= a[1];
  d2= a[2];
  d3= a[3];
  d4= a[4];
  d5= a[5];
  d6= a[6];
  d7= a[7];
   
  end
 endtask
 
initial 
  begin
     $monitor("d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b : Sum=%b Carryout=%b",d0,d1,d2,d3,d4,d5,d6,d7,sum,cout);
	end
	
initial 
  begin
   
       stimulus(11100011);
   #10 stimulus(00011111);
   #10 stimulus(00000001);
   #10 stimulus($random);
   #10 stimulus($random);
   #10 stimulus($random);
   #10 stimulus($random);
   #10 stimulus($random);
   #10 stimulus($random);
  
  #20 $finish;
  end
  
endmodule