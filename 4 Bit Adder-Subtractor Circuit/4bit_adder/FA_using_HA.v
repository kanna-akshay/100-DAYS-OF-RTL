// full adder using half adder 

module FA_using_HA(input a,b,cin ,output sum,cout);
  wire [2:0]t;

  halfadder_struct HA1(a,b,t[0],t[1]);
  halfadder_struct HA2(t[0],cin,sum,t[2]);
  
  or G1(cout,t[1],t[2]);
  
endmodule