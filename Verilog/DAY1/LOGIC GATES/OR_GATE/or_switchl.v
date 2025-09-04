module or_gate(a,b,o);
input a,b;
output o;
wire w;
supply0 gnd;
supply1 vcc;
pmos p1(w,vcc,a);
pmos p2(y,w,b);
pmos p3(o,vcc,y);
nmos n1(y,gnd,a);
nmos n2(y,gnd,b);
nmos n3(o,gnd,y);
endmodule
