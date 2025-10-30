
module tb_clk_divider;
    reg clk_50mhz;
    reg rst;
    wire clk_100hz;

    clk_divider uut (
        .clk_50mhz(clk_50mhz),
        .rst(rst),
        .clk_100hz(clk_100hz)
    );

    always #10 clk_50mhz = ~clk_50mhz;

    initial begin
	$dumpfile("clk_div.vcd");
	$dumpvars;
        clk_50mhz = 0;
        rst = 1;

       
        #100;
        rst = 0;
        #30_000_000;  
        $finish;
   end
    initial begin

	$monitor("Time=%0t | rst=%b  | clk_100hz=%b",$time,rst,clk_100hz);
    end

endmodule

