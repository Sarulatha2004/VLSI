module even_odd_tb;

reg clk,rst,in;
wire even1,even0,odd1, odd0;

even_odd uut(.clk(clk), .rst(rst), .in(in), .even0(even0), .even1(even1), .odd0(odd0), .odd1(odd1));
initial clk=0;

always #5 clk=~clk;

initial begin

$monitor("Time= %t | clk=%b | rst = %b |in=%b | even0=%b | even1=%b | odd0=%b | odd1=%b",$time,clk,rst,in, even0,even1,odd0,odd1);

rst=1;
in=0;
#10
rst=0;
#10

in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=0;#10
in=1;#10
in=1;#10
in=0;#10
in=0;#10
in=1;#10
in=0;#10
in=0;#10
in=1;#10

$finish;
end
endmodule 
