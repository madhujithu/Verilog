`include "mux41.v"
module tb;
 reg a,b,c,d,s0,s1;
 wire y;
 integer delayvalue;
 mux41 mux(a,b,c,d,s0,s1,y);
  initial begin
   repeat(15)begin
   {a,b,c,d,s0,s1}=$random;
   delayvalue =$urandom_range(5,10);
   #delayvalue;
$display("inputs- a = %b b = %b c=%b d=%b s0=%b s1=%b output- y = %b",a,b,c,d,s0,s1,y);
   end
  end
endmodule
