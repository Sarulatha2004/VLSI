module sub_num;
reg [7:0]A,B;
reg signed [8:0]Sub;

task sub_task(input [7:0]A,input [7:0]B, output [8:0]out);
begin
 out=A-B;
end 
endtask

initial begin

$monitor("Time=%t | A=%b(%d) | B=%b(%d)| Sub=%b(%d)" ,$time,A,A,B,B,Sub,Sub);
A=8'd74; B=8'd34;
sub_task(A,B,Sub);
#10;A=8'd54; B=8'd12;
sub_task(A,B,Sub);
#10;A=8'd31; B=8'd54;
sub_task(A,B,Sub);
#10;A=8'd75; B=8'd44;
sub_task(A,B,Sub);
#10;A=8'd24; B=8'd84;
sub_task(A,B,Sub);
#100;
$finish;
end 
endmodule
