//four bit adder structural representation using half adder and full adder

module add4_bit(a,sum,cout);

 input  [3:0]a;
 output sum;
 output [1:0]cout;
 wire [2:0]t;

  full_adder FA1(a[2],a[1],a[0],t[0],t[1]);
  halfadder_struct HA1(t[0],a[3],sum,t[2]);
  halfadder_struct HA2(t[1],t[2],cout[0],cout[1]);

  //assign Y={[1:0]cout,sum};

endmodule 