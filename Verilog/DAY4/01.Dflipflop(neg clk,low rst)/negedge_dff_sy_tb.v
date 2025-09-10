module tb_dff;
    reg clk, reset, d;
    wire q;
    dff_sync_reset uut (.clk(clk),.reset(reset),.d(d),.q(q));
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dff_wave.vcd");
	$dumpvars;
        reset = 1; d = 0;
        #2 reset = 0;
        #7 reset = 0; d = 1;
        #10 d = 0;
        #10 d = 1;
        #5 reset = 1;
        #10 reset = 0;
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b reset=%b d=%b | q=%b",
                  $time, clk, reset, d,q);
    end

endmodule
