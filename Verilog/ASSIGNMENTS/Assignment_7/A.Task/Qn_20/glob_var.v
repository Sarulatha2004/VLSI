module glob_var;
reg [3:0]A,B;
reg [4:0]Glob_var;

task glob_task;
input [3:0]x,y;
begin
 Glob_var=x+y;
end
endtask

initial begin
$monitor("Time=%t | A=%d | B=%d | Glob_var(sum)=%d",$time, A,B,Glob_var);
A=4'd6;B=4'd12; glob_task(A,B);#10
A=4'd3;B=4'd12; glob_task(A,B);#10
A=4'd6;B=4'd10; glob_task(A,B);#10
A=4'd9;B=4'd8; glob_task(A,B);#10
#100
$finish;
end 
endmodule
