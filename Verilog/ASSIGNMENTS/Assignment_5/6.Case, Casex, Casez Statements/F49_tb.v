module tb_bus_decoder;
  reg [3:0] addr;
  wire [7:0] data;

  bus_decoder uut(.addr(addr), .data(data));

  initial begin
    $dumpfile("bus_decoder.vcd");  
    $dumpvars(0, tb_bus_decoder);
    $monitor("Time=%0t | addr=%b | data=%b", $time, addr,data);
    addr = 4'b0000; #10;   
    addr = 4'b0001; #10;  
    addr = 4'b0010; #10;   
    addr = 4'b0011; #10; 
    addr = 4'b0100; #10;    
    addr = 4'b1111; #10;   

    #50 $finish;
  end
endmodule

