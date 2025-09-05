module time_sim;
time t;
initial begin
$monitor("time=%0t : t=%t",$time,t);
t=$time;#10;
t=$time;#20;
t=$time;#10;
$finish;
end
endmodule
