module reg_proc;
reg a,b;
initial begin
a=1'b1;
b=a;
$display("time=%0t a=%b b=%b",$time,a,b);
$finish;
end 
endmodule
