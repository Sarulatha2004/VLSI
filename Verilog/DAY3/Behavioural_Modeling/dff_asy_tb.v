module tb_dff;
    reg clk, reset, d;
    wire q;
    dff_async_reset uut (.clk(clk),.reset(reset),.d(d),.q(q));
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 0; d = 0;
        #5 reset = 1;
        #7 reset = 0; d = 1;
        #10 d = 0;
        #20 d = 1;
        #5 reset = 1;
        #20 reset = 0;
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b reset=%b d=%b | q=%b",
                  $time, clk, reset, d,q);
    end

endmodule

