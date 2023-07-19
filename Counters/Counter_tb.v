// Test Bench for a synchrounous counter
module s_counter_tb();

parameter N=4;

reg clk,pause,reset,upDown;
wire [N-1:0] count;

S_Counter DUT(.clk(clk),
              .reset(reset),
			  .pause(pause),
			  .upDown(upDown),
			  .count(count));

always #5 clk=~clk; 
 
task initialize();
 begin
   clk=1'b0;
   reset=1'b0;
   pause=1'b0;
  end
endtask
   
task Pause();
  begin
   pause=1'b1;
   end
endtask

task Continue();
 begin 
 pause=1'b0;
 end
  endtask

task upcount(); 
 begin   
  upDown=1'b1;initialize();
  
   #14 reset=1;
   
   #59 Pause();
   #10 Continue();
end
endtask 

task downcount(); 
 
begin 
  upDown=1'b0;initialize();
  
   #14 reset=1;
   
   #59 Pause();
   #10 Continue();
 end
endtask 


initial
 begin
  upcount();
  
#60 downcount();

#20 $finish;

end

endmodule

  
