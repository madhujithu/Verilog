`include "halfadder.v"
module tb();
 reg a,b;
 wire s,c;
 integer delay_value;
 halfadder ha(a,b,s,c);
 initial begin
  repeat(10)begin
  {a,b} = $random();
  delay_value = $urandom_range(5,15);
  #delay_value;
  $display("input a= %b, b= %b, output s= %b,c= %b",a,b,s,c);
 end
 end
endmodule

