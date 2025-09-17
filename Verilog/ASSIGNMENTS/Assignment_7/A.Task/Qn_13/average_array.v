module average;
reg [7:0]A0,A1,A2,A3;
real avg;

task average(input [7:0]A0,input [7:0]A1,input [7:0]A2,input [7:0]A3,output real avg);
integer sum;
begin
sum=A0+A1+A2+A3;
avg=sum/4.0;
end
endtask

initial begin
A0=13;A1=46;A2=32;A3=42;
#10;average(A0,A1,A2,A3,avg);
$display("Time=%t | A0=%d | A1=%d | A2=%d | A3=%d | AVERAGE=%f" ,$time,A0,A1,A2,A3,avg);
end
endmodule

