// full adder using half adder 

module FS_using_HS(input a,b,Bout ,output diff,Bin);
  wire [2:0]t;

  halfsubstract_struct Hs1(a,b,t[0],t[1]);
  halfsubstract_struct Hs2(t[0],Bout,diff,t[2]);
  
  or G1(Bin,t[1],t[2]);
  
endmodule