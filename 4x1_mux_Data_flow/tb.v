`include "mux4x1.v"
module tb;
reg i0,i1,i2,i3,sel1,sel0;
wire y;
 integer i;
 mux4x1 mux4x1(i0,i1,i2,i3,sel1,sel0,y);
 initial begin
   for(i=0 ; i<=3 ; i = i+1)begin
  {sel1,sel0}= i;
  {i0,i1,i2,i3}= $random;
  #5
  $display ("inputs-i0 = %b,i1 = %b,i2 = %b,i3 = %b,sel1 = %b,sel0 = %b,output- y = %b",i0,i1,i2,i3,sel0,sel1,y);
   end
 end
endmodule

