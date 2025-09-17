module clk_toggle;
reg clk;

task clk_gen(input clk);
integer i;
begin
for(i=1;i<=10;i++)
	begin
		#10 clk=~clk;
		$display("Time=%t | clk=%b",$time,clk);
	end
end
endtask
initial begin
clk=0;
$display("Time=%t |clk=%b |",$time,clk);
clk_gen(clk);
#100 $finish;
end
endmodule
