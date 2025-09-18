module signed_val;
reg signed [7:0]A;
reg  [7:0]Res;

function [7:0]abs_val(input signed [7:0]A);
begin
if(A<0)
  abs_val=-A;
else
  abs_val=A;
end
endfunction

initial begin

$monitor("Time=%t | A=%d | Res=%d",$time,A,Res);
A=45;Res=abs_val(A);#10;
A=-25;Res=abs_val(A);#10;
A=128;Res=abs_val(A);#10;
A=29;Res=abs_val(A);#10;
#100;
$finish;
end
endmodule

