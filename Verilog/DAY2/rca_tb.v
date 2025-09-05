module tb_rca;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
rca uut( .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$dumpfile("rca_wave.vcd");
$dumpvars(0, tb_rca);
$display(" a  b cin  |  sum  cout ");
$monitor(" %b %b %b  |  %b  %b  ",a,b,cin,sum,cout);
a=4'b1010; b=4'b1001; cin=0;#10;
a=4'b1001; b=4'b1101; cin=1;#10;
a=4'b1010; b=4'b1111; cin=0;#10;
a=4'b1001; b=4'b0011; cin=1;#10;
a=4'b0110; b=4'b1001; cin=1;#10;
a=4'b1110; b=4'b0111; cin=0;#10;
a=4'b1010; b=4'b1101; cin=1;#10;
a=4'b1010; b=4'b1111; cin=1;#10;

$finish;
end 
endmodule
