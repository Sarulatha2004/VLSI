module tb_comparator;
    parameter N = 4;
    reg  [N-1:0] A, B;
    wire eq, gt, lt;
    comparator #(N) uut (.A(A), .B(B), .eq(eq), .gt(gt), .lt(lt));

    initial begin
        $dumpfile("comparator_wave.vcd");
        $dumpvars(0, tb_comparator);
        $monitor(" A=%b; B=%b; | eq=%b; gt=%b; lt=%b",A,B,eq,gt,lt); 
       
        A = 4'b0101; B = 4'b0101; #10; 
        A = 4'b1001; B = 4'b0011; #10;
        A = 4'b0010; B = 4'b0111; #10;

        A = 4'b1111; B = 4'b0000; #10;  
        A = 4'b0001; B = 4'b1110; #10;  
        A = 4'b1010; B = 4'b1010; #10;

        $finish;
    end

endmodule

