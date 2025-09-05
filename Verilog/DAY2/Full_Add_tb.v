module tb_full_add;
reg a,b,cin;
wire sum,cout;
Full_add uut( .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$dumpfile("Full_add_wave.vcd");
$dumpvars(0, tb_full_add);
$display(" a  b cin  |  sum  cout ");
$monitor(" %b %b %b  |  %b  %b  ",a,b,cin,sum,cout);
a=0; b=0; cin=0; #10;
a=0; b=0; cin=1; #10;
a=0; b=1; cin=0; #10;
a=0; b=1; cin=1; #10;
a=1; b=0; cin=0; #10;
a=1; b=0; cin=1; #10;
a=1; b=1; cin=0; #10;
a=1; b=1; cin=1; #10;
$finish;
end 
endmodule
