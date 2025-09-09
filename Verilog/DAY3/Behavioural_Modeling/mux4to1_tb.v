module tb_mux4to1;

    reg [3:0] d;
    reg [1:0] sel;
    wire y;
    mux4to1 uut (.d(d),.sel(sel),.y(y));

    initial begin
        d = 4'b0000; sel = 2'b00;
        #10 d = 4'b1010; sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t | d=%b sel=%b => y=%b", $time, d, sel, y);
    end

endmodule

