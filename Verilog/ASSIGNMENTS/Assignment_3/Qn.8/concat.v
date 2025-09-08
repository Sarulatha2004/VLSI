module concat(a,b,c,y);
input a;
input [1:0]b,c;
output [2:0]y;
assign y={a,b[0],c[1]};
endmodule
