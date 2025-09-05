module not_gate(a,o);
input a;
output o;
supply0 gnd;
supply1 vcc;
pmos p1(o,vcc,a);
nmos n1(o,gnd,a);
endmodule
