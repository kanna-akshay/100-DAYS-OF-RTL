// Test Bench for a synchrounous counter
module s_counter_tb();



reg MS1,MS2,MR1,MR2,rst,Clk;
wire [3:0] Q,Qbar;



//Counter_mod2 C1(MS1,MS2,MR1,MR2,rst,Clk,Q,Qbar);
//Counter_mod5 C1(MS1,MS2,MR1,MR2,rst,Clk,Q,Qbar);
Counter_mod10 C1(MS1,MS2,MR1,MR2,rst,Clk,Q,Qbar);

always #5 Clk=~Clk; 
 
task initialize();
 begin
   MS1=1'b0;
   MS2=1'b0;
   MR1=1'b0;
   MR2=1'b0;
   rst=1'b0;
  end
endtask
   
initial
 begin
  Clk=1'b0;
 initialize();

#10 rst=1'b1;  

#100 $finish;

end

endmodule

  
