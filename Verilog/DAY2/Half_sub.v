module Half_sub(a,b,dif,bor);
input a,b;
output dif,bor;
assign dif=a^b;
assign bor=~a&b;
endmodule
