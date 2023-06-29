// full adder using half adder 

module adder_4bit(a,b,cin,sum,cout);

   input [3:0]a,b;
   input cin;
   output [3:0]sum;
   output cout;
   wire [2:0]t;
 
 
  rpa adder1(a[0],b[0],cin,sum[0],t[0]);
  rpa adder2(a[1],b[1],t[0],sum[1],t[1]);
  rpa adder3(a[2],b[2],t[1],sum[2],t[2]);
  rpa adder4(a[3],b[3],t[2],sum[3],cout);

endmodule