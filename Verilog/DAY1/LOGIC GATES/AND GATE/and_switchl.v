module and_gate(a,b,o);
input a,b;
output o;
supply0 gnd;
supply1 vcc;
wire w,y;
pmos p1(y,vcc,a);
pmos p2(y,vcc,b);
pmos p3(o,vcc,y);
nmos n1(w,gnd,a);
nmos n2(y,w,b);
nmos n3(o,gnd,y);
endmodule

