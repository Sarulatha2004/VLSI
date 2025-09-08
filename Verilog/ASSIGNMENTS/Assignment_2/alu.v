// Half adder
module half_adder(input a,b, output sum,carry);
xor x1(sum,a,b);
and a1(carry,a,b);
endmodule

   // Full adder from 2 half adders
module full_adder(input a,b,cin, output sum,cout);
wire s1,c1,c2;
half_adder ha1(.a(a),.b(b),.sum(s1),.carry(c1));
half_adder ha2(.a(s1),.b(cin),.sum(sum),.carry(c2));
or o1(cout,c1,c2);
endmodule

   // 4-bit ripple carry adder
module ripple_adder_4(input [3:0]A,B, input cin,
                      output [3:0] Sum, output cout,overflow);
wire c1,c2,c3;
full_adder fa0(.a(A[0]),.b(B[0]),.cin(cin),.sum(Sum[0]),.cout(c1));
full_adder fa1(.a(A[1]),.b(B[1]),.cin(c1),.sum(Sum[1]),.cout(c2));
full_adder fa2(.a(A[2]),.b(B[2]),.cin(c2),.sum(Sum[2]),.cout(c3));
full_adder fa3(.a(A[3]),.b(B[3]),.cin(c3),.sum(Sum[3]),.cout(cout));
xor x_ovf(overflow,c3,cout);
endmodule

   // 2:1 MUX
module mux2to1(input a,b,sel, output y);
wire nsel,w0,w1;
not n1(nsel, sel);
and a1(w0,a,nsel);
and a2(w1,b,sel);
or  o1(y,w0,w1);
endmodule

   // 4:1 MUX 
module mux4to1(input i0,i1,i2,i3, input [1:0]sel, output y);
wire w0,w1,w2,w3, n0,n1;
not n_0(n0,sel[0]);
not n_1(n1,sel[1]);
and a0(w0,i0,n1,n0);
and a1(w1,i1,n1,sel[0]);
and a2(w2,i2,sel[1],n0);
and a3(w3,i3,sel[1],sel[0]);
or  o1(y,w0,w1,w2,w3);
endmodule

   // 4-bit ALU
module ALU_struct(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] F,      // select bits
    output [3:0] Result,
    output CarryOut,
    output Overflow
);

wire [3:0] B_in, Sum, AndRes, OrRes, XorRes, NorRes, Mux4Res;

// Adder or Subtractor based on F[0] & F[1] for add 1 sub 1
xor x0(B_in[0], F[1], B[0]);
xor x1(B_in[1], F[1], B[1]);
xor x2(B_in[2], F[1], B[2]);
xor x3(B_in[3], F[1], B[3]);
ripple_adder_4 adder(.A(A),.B(B_in),.cin(F[0]),.Sum(Sum),.cout(CarryOut),.overflow(Overflow));

// Bitwise logic
and a0(AndRes[0], A[0], B[0]);
and a1(AndRes[1], A[1], B[1]);
and a2(AndRes[2], A[2], B[2]);
and a3(AndRes[3], A[3], B[3]);

or o0(OrRes[0], A[0], B[0]);
or o1(OrRes[1], A[1], B[1]);
or o2(OrRes[2], A[2], B[2]);
or o3(OrRes[3], A[3], B[3]);

not n0(NorRes[0], OrRes[0]);
not n1(NorRes[1], OrRes[1]);
not n2(NorRes[2], OrRes[2]);
not n3(NorRes[3], OrRes[3]);

xor x4(XorRes[0], A[0], B[0]);
xor x5(XorRes[1], A[1], B[1]);
xor x6(XorRes[2], A[2], B[2]);
xor x7(XorRes[3], A[3], B[3]);

//4to1Mux for Logic Function selection based on F[1:0]
mux4to1 m0[3:0](.i0(AndRes), .i1(OrRes), .i2(NorRes), .i3(XorRes), .sel(F[1:0]), .y(Mux4Res));  //Array Instantiaton
 
//2to1Mux for select Arithmetic or Logic based on F[2]
mux2to1 m4[3:0](.a(Sum), .b(Mux4Res), .sel(F[2]), .y(Result));

endmodule
