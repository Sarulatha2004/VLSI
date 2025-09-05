module mux4x1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3,s1,s0;
output y;
wire ns1,ns0;
wire a,b,c,d;
//not gate

not g1(ns1,s1);
not g2(ns0,s0);

//and gate

and g3(a,ns1,ns0,i0);
and g4(b,ns1,s0,i1);
and g5(c,s1,ns0,i2);
and g6(d,s1,s0,i3);

//or gate

or g7(y,a,b,c,d);
endmodule
