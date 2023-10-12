module mux41(a,b,c,d,s0,s1,y);
input a,b,c,d,s0,s1;
output y;
 wire s0bar,s1bar,n1,n2,n3,n4;
  not g1(s0bar,s0);
  not g2(s1bar,s1);

  and g3 (n1,s0bar,s1bar,a);
  and g4 (n2,s0bar,s1,b);
  and g5 (n3,s0,s1bar,c);
  and g6 (n4,s0,s1,d);
  or g7 (y,n1,n2,n3,n4);
  endmodule

