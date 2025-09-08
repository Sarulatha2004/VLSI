module tb_FA_4bit;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
FA_4bit uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
$dumpfile("FA_wave.vcd");
$dumpvars(0,tb_FA_4bit);
$display(" A  B Cin | Sum Cout");
$monitor( " %b  %b  %b  | %b  %b",a,b,cin,sum,cout );
a=4'b0101; b=4'b1101; cin=1'b0;#10;
a=4'b0111; b=4'b1111; cin=1'b1;#10;
a=4'b1101; b=4'b1011; cin=1'b0;#10;
a=4'b1111; b=4'b1000; cin=1'b1;#10;
a=4'b0001; b=4'b1001; cin=1'b0;#10;
$finish;
end 
endmodule
