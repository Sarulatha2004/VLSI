module factorial_task_tb;
  reg [3:0] num;        
  reg [31:0] result;    

 
  task factorial_task(input [3:0] n, output [31:0] fact);
    integer i;
    begin
      fact = 1;
      for (i = 1; i <= n; i = i + 1) begin
        fact = fact * i;
      end
    end
  endtask

  initial begin
	  num=0;
	  repeat(10) begin
	#10;
    factorial_task(num, result); 
    $display("Time=%t, Factorial of %0d using TASK = %0d",$time, num, result);
      num=num+1;
      end
  end
endmodule

