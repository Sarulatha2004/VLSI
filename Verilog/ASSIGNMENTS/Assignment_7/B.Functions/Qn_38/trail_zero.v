module count_trail_zeroes;
  reg [7:0] in;
  wire [3:0] count;

  function integer count_zeroes;
    input [7:0] A;
    integer i;
    begin :count_block
      count_zeroes = 0;
      for (i=0; i<=7; i=i+1) begin 
        if (A[i] == 1'b0)
          count_zeroes = count_zeroes + 1;
        else
          disable count_block;  
      end
    end
  endfunction

  assign count = count_zeroes(in);

  initial begin
    $monitor("TIME=%0t | in=%b | count_of_trailing_zeros=%d",$time,in,count);
    in=8'b00001000; #10;
    in=8'b00100110; #10;
    in=8'b00000001; #10;
    in=8'b11100000; #10;
    $finish;
  end
endmodule

