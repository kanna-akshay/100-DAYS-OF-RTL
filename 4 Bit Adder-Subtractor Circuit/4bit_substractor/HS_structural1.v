//Structural representaion of Half_substract

module halfsubstract_struct(input a,b,output diff,borr);
wire t0;
 xor G1(diff,a,b);
 not G2(t0,a);
 and G3(borr,t0,b);
 
endmodule