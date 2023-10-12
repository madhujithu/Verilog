module mux2x1(i0,i1,sel,y);
input i0,i1,sel;
output y;
 wire n1,n2,n3;
 and g1(n1,i1,sel);
 and g2(n3,n1,i0);
 not g3(n2,sel);
 or g4(y,n1,n3);
endmodule
