module tb_count_a_zero;
    reg [15:0] data;
    wire [3:0] out;

    count_a_zero uut (.data(data), .out(out));

    initial begin
        $monitor("Time=%0t data=%b | Count_of_Zeros=%d", $time, data, out);

        data = 16'b1010101010110000;  #10;
        data = 16'b1111111111111111;  #10;
        data = 16'b0000000000000000;  #10;
        data = 16'b1100110011001100;  #10;
        $finish;
    end
endmodule

