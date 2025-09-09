module tb_pri_encode;
    reg [3:0] d;
    wire [1:0] y;
    wire v;
    pri_encode uut (.d(d),.y(y),.v(v));

    initial begin
        $dumpfile("pri_encode_wave.vcd");
        $dumpvars(0,tb_pri_encode); 
        d = 4'b0001; #10; 
        d = 4'b0010; #10; 
        d = 4'b0100; #10; 
        d = 4'b1000; #10; 

        d = 4'b1010; #10;  
        d = 4'b0111; #10;   
        d = 4'b0000; #10;
        d = 4'b1z00; #10;
        d = 4'b1x10; #10;	

        $finish;
    end

    initial begin
        $monitor("Time=%0t | d=%b => y=%b valid=%b", $time, d, y, v);
    end

endmodule

