`timescale 1ns/1ps
module tb_div_by_5;

    reg clk, reset, x;
    wire y;

 
    div_by_5 dut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    always #5 clk = ~clk;  

    initial begin
       
        $monitor("Time=%0t |clk=%b| reset=%b | x=%b | y=%b | state=%b",
                 $time,clk, reset, x, y, dut.state);

       
        clk = 0;
        reset = 1;
        x = 0;

       
        #10 reset = 0;

       
        #10 x = 1;  
        #10 x = 0;  
        #10 x = 1;  
        #10 x = 0;  
        #10 x = 1;
	#10 x = 0;
	#10 x = 1;

	#10 reset =1;

	#10 reset=0;
	 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	
        
        #10 $finish;
    end
endmodule

       
     
