module nor_gate(a,b,o);
input a,b;
output o;
wire w;
supply0 gnd;
supply1 vcc;
pmos p1(w,vcc,a);
pmos p2(o,w,b);
nmos n1(o,gnd,a);
nmos n2(o,gnd,b);
endmodule
