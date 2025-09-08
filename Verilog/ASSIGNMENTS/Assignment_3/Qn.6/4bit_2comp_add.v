module twocomp_4bit(x,y,cin,sum,cout);
input [3:0]x,y;
input cin;
output [3:0]sum;
output cout;
wire t;
assign t=y^{4{cin}};
assign {cout,sum}=x+y+cin;
endmodule
