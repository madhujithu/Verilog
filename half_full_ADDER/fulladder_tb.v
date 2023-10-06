`include "fulladder.v";
module tb;
reg a,b,c;
wire sum,carry;
integer delay_value;
fulladder fa(a,b,c,sum,carry);
 initial begin
   repeat(10) begin
   {a,b,c}=$random;

   delay_value=$urandom_range(5,10);
   #delay_value;
   $display("input- a = %b b = %b c = %b output- sum = %b carry = %b",a,b,c,sum,carry);
   end
 end
endmodule

