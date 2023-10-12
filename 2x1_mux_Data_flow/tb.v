`include "mux2x1.v"
module tb;
reg  i0,i1,sel;
wire y;
integer i;
mux2x1 mux(i0,i1,sel,y);
initial begin
  for(i=0;i<=5;i=i+1)begin
  {sel}=i;
  {i0,i1}=$random;
  $display("inputs- i0= %b, i1= %b ,sel= %b ,outputs- y= %b",i0,i1,sel,y);
  #10;
  end
  end 
 endmodule
