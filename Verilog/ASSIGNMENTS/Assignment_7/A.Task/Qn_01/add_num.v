module add_num;
reg [7:0]A,B;
reg [8:0]Sum;

task sum_task(input [7:0]A,input [7:0]B, output [8:0]out);
begin
 out=A+B;
end 
endtask

initial begin

$monitor("Time=%t | A=%b(%d) | B=%b(%d)| Sum=%b(%d)" ,$time,A,A,B,B,Sum,Sum);
A=8'd14; B=8'd34;
sum_task(A,B,Sum);
#10;A=8'd34; B=8'd12;
sum_task(A,B,Sum);
#10;A=8'd31; B=8'd54;
sum_task(A,B,Sum);
#10;A=8'd25; B=8'd44;
sum_task(A,B,Sum);
#10;A=8'd24; B=8'd84;
sum_task(A,B,Sum);
#100;
$finish;
end 
endmodule
