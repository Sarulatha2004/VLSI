module tb_demux4to1;

    reg din;
    reg [1:0] sel;
    wire [3:0] y;
    demux4to1 uut (.din(din),.sel(sel),.y(y));

    initial begin
        din = 1; sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        din = 0; sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | din=%b sel=%b => y=%b", $time, din, sel, y);
    end

endmodule

