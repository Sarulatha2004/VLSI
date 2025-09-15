module tb_siso;
reg clk,si,rst;
wire so;
wire [2:0]q;
siso_right_3 uut(.clk(clk), .si(si), .rst(rst), .so(so), .q(q));
initial begin
$dumpfile("siso_wave.vcd");
$dumpvars;
$monitor("Time=%t | clk=%b | si=%b |  rst=%b  |  so=%b  |  q=%b", $time,clk,si,rst,so,q);
 clk=1;
 rst=0; si=1;#5;
 rst=0; si=0;#5;
 rst=0; si=0;#5;
 rst=0; si=1;#5;
 rst=0; si=0;#5;
 rst=0; si=1;#5;
 rst=0; si=0;#5;
 rst=0; si=1;#5;
#50 $finish;
end
always #5 clk=~clk;
endmodule
