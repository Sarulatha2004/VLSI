module wire_assign;
wire a,b;
assign a=1'b1;
assign b=a;
initial begin
$display("Time=%0t a=%b b=%b",$time,a,b);
$finish;
end 
endmodule
