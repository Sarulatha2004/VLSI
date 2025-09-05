module tb_tff_udp;
reg t,clk;
wire q;
tff_udp uut( .q(q), .t(t), .clk(clk));
initial begin
$dumpfile("tff_udp_wave.vcd");
$dumpvars(0, tb_tff_udp);
$display(" t  clk  q");
$monitor(" %b  %b  %b",t,clk,q);
t=0; clk=0; 
#10; t=1;
#10; t=0;
#10; t=1;
#10; t=0;
$finish;
end
always #10 clk= ~clk;
endmodule

