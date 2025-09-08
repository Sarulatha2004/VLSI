module shift(a,l_sh,r_sh);
input [3:0]a;
output [3:0]l_sh,r_sh;
assign l_sh=a<<1;
assign r_sh=a>>1;
endmodule
