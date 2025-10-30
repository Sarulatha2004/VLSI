module gates(
input A,B,C,D,E,
output Y);
wire n_B,n_C,n_D,AND_out1,AND_out2,AND_out3,AND_out4,AND_out5,AND_out6,OR_out1,OR_out2;
not #4 (n_B,B);
not #4 (n_C,C);
not #4 (n_D,D);
and #3 (AND_out1,n_B,n_C);
and #3 (AND_out2,A,B);
and #3 (AND_out3,n_B,C);
and #3 (AND_out4,A,AND_out1);
and #3 (AND_out5,AND_out2,E);
and #3 (AND_out6,n_D,C);
or  #2 (OR_out1,AND_out4,AND_out5);
or  #2 (OR_out2,AND_out3,AND_out6);
or  #2 (Y,OR_out1,OR_out2);
endmodule

module gates_tb;
reg A,B,C,D,E;
wire Y;
gates uut(.A(A), .B(B), .C(C), .D(D), .E(E), .Y(Y));


initial begin
$monitor("Time=%t | A=%b | B=%b | C=%b |D=%b | E=%b | Y=%b ",$time,A,B,C,D,E,Y);
A=0; B=1;C=1; D=0; E=1;
$monitoroff; #50;
$monitoron;
#100;
$finish;
end
endmodule

