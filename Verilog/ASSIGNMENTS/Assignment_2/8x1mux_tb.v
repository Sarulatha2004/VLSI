
module tb_mux8to1;
    reg [7:0] d;
    reg [2:0] sel;
    wire y;
    mux8to1_using_4to1 uut (.d(d), .sel(sel), .y(y));

    initial begin
        $dumpfile("mux8to1_wave.vcd");  
        $dumpvars(0, tb_mux8to1);
	$display(" d          sel      y");
	$monitor(" %b          %b         %b",d,sel,y);

        d = 8'b1011_0110;
        sel = 3'b000; #10; 
        sel = 3'b001; #10; 
        sel = 3'b010; #10; 
        sel = 3'b011; #10; 
        sel = 3'b100; #10; 
        sel = 3'b101; #10; 
        sel = 3'b110; #10; 
        sel = 3'b111; #10; 


    $finish;
    end
endmodule

