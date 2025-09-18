module and_all_bits;
  reg [7:0] data;
  reg result;
  function and_fn(input [7:0] d);
    integer i;
    reg temp;
    begin
      temp = 1'b1;            
      for (i = 0; i < 8; i = i + 1)
        temp = temp && d[i];     
      and_fn = temp;               
    end
  endfunction

  initial begin
    $monitor("Time=%0t | data=%b | AND=%b", $time, data, result);

    data = 8'b11111111; result = and_fn(data); #10; 
    data = 8'b10111111; result = and_fn(data); #10; 
    data = 8'b00000000; result = and_fn(data); #10; 
    data = 8'b11001111; result = and_fn(data); #10;

    #50 $finish;
  end
endmodule

