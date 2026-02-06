module Half_adder(
	input a,
	input b,
	output sum,
	output carry
);

assign sum = a^b;
assign carry = a&b;
endmodule

module Full_adder(
	input a,
	input b,
	input c,
	output sum,
	output carry
);

assign sum=a^b^c;
assign carry=(a&b) | (b&c) | (c&a);
endmodule


module array_multi(
	input [3:0]a,
	input [3:0]b,
	output [7:0]o
);

wire [3:0]p0,p1,p2,p3;
wire [5:0]s;
wire [10:0]c;



genvar i;

generate for (i=0;i<4;i=i+1) begin
	and a0(p0[i],a[i],b[0]);
	and a1(p1[i],a[i],b[1]);
	and a2(p2[i],a[i],b[2]);
	and a3(p3[i],a[i],b[3]);
end
endgenerate

assign o[0]=p0[0];
Half_adder H1(p1[0],p0[1],o[1],c[0]);
Half_adder H2(p1[3],c[2],s[2],c[3]);
Half_adder H3(p2[0],s[0],o[2],c[4]);
Half_adder H4(p3[0],s[3],o[3],c[8]);

Full_adder F1(p1[1],p0[2],c[0],s[0],c[1]);
Full_adder F2(p1[2],p0[3],c[1],s[1],c[2]);
Full_adder F3(p2[1],s[1],c[4],s[3],c[5]);
Full_adder F4(p2[2],s[2],c[5],s[4],c[6]);
Full_adder F5(p2[3],c[3],c[6],s[5],c[7]);
Full_adder F6(p3[1],s[4],c[8],o[4],c[9]);
Full_adder F7(p3[2],s[5],c[9],o[5],c[10]);
Full_adder F8(p3[3],c[7],c[10],o[6],o[7]);
endmodule
