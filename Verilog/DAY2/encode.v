module encode(a,y);
input [3:0]a;
output [1:0]y;
assign y[1]=a[3]+a[2];
assign y[0]=a[3]+a[1];
endmodule
