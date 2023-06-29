//Structural representaion of Half_adder

module halfadder_struct(input a,b,output sum,carry);
 xor G1(sum,a,b);
 and G2(carry,a,b);
 
endmodule