// substractor_4bit 

module substractor_4bit(a,b,Bout,diff,Bin);

   input [3:0]a,b;
   input Bout;
   output [3:0]diff;
   output Bin;
   wire [2:0]t;
 
  rps sub1(a[0],b[0],Bout,diff[0],t[0]);
  rps sub2(a[1],b[1],t[0],diff[1],t[1]);
  rps sub3(a[2],b[2],t[1],diff[2],t[2]);
  rps sub4(a[3],b[3],t[2],diff[3],Bin);

endmodule