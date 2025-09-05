module real_val;
real delta;
initial begin
$monitor("time=%0t : delta=%.2f : delta=%0d",$time,delta,delta);
delta=4e10;#10;
delta=2.18;#10;
$finish;
end
endmodule
