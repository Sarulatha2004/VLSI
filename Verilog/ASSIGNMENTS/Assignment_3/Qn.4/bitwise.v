module bitwise_op(x,y,a,b,c,d,e);
input x,y;
output a,b,c,d,e;
assign a=~x;
assign b=x&y;
assign c=x|y;
assign d=x^y;
assign e=x~^y;
endmodule
