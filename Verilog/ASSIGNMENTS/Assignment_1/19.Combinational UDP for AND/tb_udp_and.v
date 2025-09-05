module tb_udp_and;
reg a,b;
wire o;
udp_and uut( .a(a), .b(b), .o(o));
initial begin
$dumpfile("udp_wave.vcd");
$dumpvars(0, tb_udp_and);
$display("Time :  a  b : o");
$monitor(" %0t :  %b %b : %b",$time,a,b,o);
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
$finish;
end 
endmodule

