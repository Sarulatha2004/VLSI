module tb_mux4to1_param;
    parameter N = 4;
    reg  [N-1:0] i0, i1, i2, i3;
    reg  [1:0] sel;
    wire [N-1:0] y;
    mux4to1_param #(N) uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .sel(sel), .y(y));
    initial begin
        $dumpfile("mux4to1_param_wave.vcd");  
        $dumpvars(0, tb_mux4to1_param);
        $monitor("i0=%b; i1=%b;  i2=%b;  i3=%b; sel=%b;  |  y=%b",i0,i1,i2,i3,sel,y);

        i0 = 4'b0001;
        i1 = 4'b0010;
        i2 = 4'b0100;
        i3 = 4'b1000;

	sel = 2'b00; #10;
	sel = 2'b01; #10;
	sel = 2'b10; #10;
	sel = 2'b11; #10;

        $finish;
    end

endmodule

