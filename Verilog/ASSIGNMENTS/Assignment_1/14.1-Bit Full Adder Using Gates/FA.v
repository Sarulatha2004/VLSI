module Full_Adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire w,x,y,z;
xor g1(w,a,b);
xor g2(s,w,cin);
and g3(x,a,b);
and g4(y,b,cin);
and g5(z,a,cin);
or g6(cout,x,y,z);
endmodule

