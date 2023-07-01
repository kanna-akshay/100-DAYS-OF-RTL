//2-bit comparator 
module comp(input a,b,e,
            output lt,eq,gt);

wire eql,l,g;

xnor g1(eql,a,b);
and  g2(l,~a,b);
and  g3(g,a,~b);
and  g4(eq,eql,e);
and  g5(gt,g,e);
and  g6(lt,l,e);

endmodule