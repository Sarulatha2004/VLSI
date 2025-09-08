module tb_encode;
reg E3,E2,E1,E0;
wire Y1,Y0;
encode uut(.E0(E0), .E1(E1), .E2(E2), .E3(E3), .Y1(Y1), .Y0(Y0));
initial begin
$dumpfile("encode_wave.vcd");
$dumpvars(0, tb_encode);
$monitor(" %b %b %b %b | %b   %b", E3,E2,E1,E0,Y1,Y0);
E3=0;E2=0;E1=0;E0=1;#10;
E3=0;E2=0;E1=1;E0=0;#10;
E3=0;E2=1;E1=0;E0=0;#10;
E3=1;E2=0;E1=0;E0=0;#10;
E3=1;E2=0;E1=0;E0=1;#10;
E3=1;E2=0;E1=1;E0=0;#10;
E3=1;E2=1;E1=0;E0=0;#10;
E3=1;E2=0;E1=1;E0=0;#10;
$finish;
end 
endmodule
