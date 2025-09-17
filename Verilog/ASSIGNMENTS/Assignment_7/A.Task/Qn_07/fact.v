module factorial;
reg [3:0]n;
reg [255:0]fact;

task task_fact( input [3:0]n,output [255:0]fact);
integer i;
begin
	fact=1;
for(i=1;i<=n;i++)
 fact=fact*i;
end
endtask

initial begin
n=15;
#10 task_fact(n,fact);
$display("Time=%t |n=%0d | Factorial of the number=%0d ",$time,n,fact);
end
endmodule

