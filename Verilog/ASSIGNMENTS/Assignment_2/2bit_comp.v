module comp_2bit(a,b,eq,gt,lt);
input [1:0]a,b;
output eq,lt,gt;
wire na1,na0,nb0,nb1,c,d,e,f,g,h,i,j,k,l;

//not gates
not g1(na1,a[1]);
not g2(na0,a[0]);
not g3(nb1,b[1]);
not g4(nb0,b[0]);


//and gates

and g5(c,na1,b[1]);
and g6(d,na1,na0,b[0]);
and g7(e,b[1],b[0],na0);
and g8(f,na1,na0,nb1,nb0);
and g9(g,na1,a[0],nb1,b[0]);
and g10(h,a[1],a[0],b[1],b[0]);
and g11(i,a[1],na0,b[1],nb0);
and g12(j,a[1],nb1);
and g13(k,a[0],nb1,nb0);
and g14(l,a[1],a[0],nb0);

//or gates

or g15(lt,c,d,e);
or g16(eq,f,g,h,i);
or g17(gt,j,k,l);

endmodule

