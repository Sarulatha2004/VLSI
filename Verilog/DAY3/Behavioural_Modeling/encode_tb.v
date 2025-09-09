module tb_encoder4to2;
    reg [3:0] d;
    wire [1:0] y;
    encode uut (.d(d),.y(y));

    initial begin
    $dumpfile("encode_wave.vcd");
    $dumpvars(0, tb_encoder4to2);
    $monitor("Time=%0t | d=%b => y=%b", $time, d, y);
        d = 4'b0001; #10;
        d = 4'b0010; #10;
        d = 4'b0100; #10;
        d = 4'b1000; #10;
        d = 4'b0000; #10;  
        d = 4'b1010; #10;

        $finish;
    end
endmodule

