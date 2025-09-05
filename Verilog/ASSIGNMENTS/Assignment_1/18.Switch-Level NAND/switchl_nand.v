module nand_gate(a,b,o);
input a,b;
output o;
supply0 gnd;
supply1 vcc;
wire w;
pmos p1(o,vcc,a);
pmos p2(o,vcc,b);
nmos n1(w,gnd,a);
nmos n2(o,w,b);
endmodule
