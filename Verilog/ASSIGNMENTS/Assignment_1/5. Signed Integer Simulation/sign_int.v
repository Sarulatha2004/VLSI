module sign_int;
integer i;
initial begin
$monitor("time=%0t : i(binary)=%b : i(decimal)=%d",$time,i[7:0],i);
i=45;#10;
i=87;#10;
i=12;#10;
$finish;
end 
endmodule
