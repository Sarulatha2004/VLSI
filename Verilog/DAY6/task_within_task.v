module task_within_task;
reg [7:0]A,B;
reg [7:0]Y;

task add_task(input [7:0]x,input [7:0]y, output [7:0]out);
begin
  out=x+y;
end
endtask
task double_add_task(input [7:0]A, input [7:0]B, output [7:0]Sum);
reg [7:0]temp;
begin
 add_task(A,B,temp);
 Sum=temp*2;
 end
endtask

initial begin
A=8'd12;B=8'd22;#10;
add_task(A,B,Y);
$display("Time=%t   | A=%b(%d)  |  B=%b(%d)   |  Sum=%b(%d)  " ,$time,A,A,B,B,Y,Y);
double_add_task(A,B,Y);
$display("Time=%t   | A=%b(%d)  |  B=%b(%d)   |  Double_Sum=%b(%d)  " ,$time,A,A,B,B,Y,Y);
end
 
endmodule

