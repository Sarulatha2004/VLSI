module xnor_gate(a,b,o);
input a,b;
output o;
wire x,y;
not(y,a);
not(x,b);
cmos(o,a,b,x);
cmos(o,y,x,b);
endmodule
