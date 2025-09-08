module comp(x,y,ceq,cgt,clt);
input [3:0]x,y;
output ceq,cgt,clt;
assign ceq=(x==y);
assign cgt=(x>y);
assign clt=(x<y);
endmodule
