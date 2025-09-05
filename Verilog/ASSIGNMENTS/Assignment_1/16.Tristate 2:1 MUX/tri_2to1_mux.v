module tri_2to1_mux(a,b,o,s);
input a,b,s;
output o;
bufif0(o,a,s);
bufif1(o,b,s);
endmodule

