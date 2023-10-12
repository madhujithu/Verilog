module mux4x1(i0,i1,i2,i3,sel1,sel0,y);
input i0,i1,i2,i3,sel1,sel0;
output y;
 assign y = (~sel1 & ~sel0 & i0) |  (sel1 & ~sel0 & i1)| (~sel1 & sel0 & i2)| (sel1 & sel0 & i3);
 endmodule
