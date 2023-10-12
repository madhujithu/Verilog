`include "mux2x1.v"
module tb;
reg i0,i1,sel;
wire y;
mux2x1 mux(i0,i1,sel,y);
integer delayvalue;
initial begin
  repeat(5)begin
  {i0,i1,sel}=$random;
  delayvalue =$urandom_range(5,9);
  #delayvalue;
  end
 end
 endmodule
