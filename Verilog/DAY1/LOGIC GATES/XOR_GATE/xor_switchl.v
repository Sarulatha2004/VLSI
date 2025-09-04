module xor_gate(a,b,o);
input a,b;
output o;
wire x,y;
not(y,a);
not(x,b);
cmos(o,a,x,b);
cmos(o,y,b,x);
endmodule
