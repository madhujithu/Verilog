module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

wire n1,n2,n3,n4;
 xor g1(n1,a,b);
 xor g2(sum,n1,c);
  and g3(n2,a,c);
  and g4(n3,a,b);
  and g5(n4,b,c);
  or g6(carry,n2,n3,n4);
endmodule


