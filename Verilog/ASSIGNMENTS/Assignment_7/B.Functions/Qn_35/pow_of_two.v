module power_of_two;
reg [7:0]A;
integer is_power2;
function integer pow_of_2(input [7:0]A);
begin
if(A > 0 && ((A & (A - 1)) == 0))
begin
  pow_of_2=1;
  $display("%d is power of two",A);
end
else
begin
 pow_of_2=0;
 $display("%d is not power of two",A);
end
end
endfunction

initial begin
	is_power2=0;
$monitor("Time=%t |A=%d  | is_power2=%d",$time,A,is_power2);
A=8'd25;is_power2=pow_of_2(A);#10;
A=8'd16;is_power2=pow_of_2(A);#10;
A=8'd100;is_power2=pow_of_2(A);#10;
A=8'd64;is_power2=pow_of_2(A);#10;
A=8'd28;is_power2=pow_of_2(A);#10;
A=8'd111;is_power2=pow_of_2(A);#10;
#100;
$finish;
end
endmodule

