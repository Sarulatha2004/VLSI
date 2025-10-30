module ripple_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

ripple_carry uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
       $monitor("A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b",a,b,cin,sum,cout);
       #10;  a=4; b=5; cin=0;
       #10;  a=6; b=7; cin=1;
       #10;  a=3; b=8; cin=0;
       #10;  a=11; b=5; cin=1; 
 #100;
$finish;
end
endmodule
