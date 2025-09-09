module mux4to1(i0,i1,i2,i3,s1,s0,y);
input i0,i1,i2,i3;
input s1,s0;
output y;
assign y=(s1)?((s0)?i3:i2):((s0)?i1:i0);
endmodule

