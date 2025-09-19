module regfile(
  input [3:0]addr,
  input [7:0]data_in,
  input we,
  input clk,
  output reg [7:0]data_out);
  reg [7:0]mem[15:0];

  always @(posedge clk) begin
    if(we)
      mem[addr] <= data_in;
    else
      data_out <= mem[addr];
  end
endmodule

module regfile_tb;
  reg [3:0]addr;
  reg [7:0]data_in;
  reg we;
  reg clk;
  wire [7:0]data_out;

  regfile uut(.addr(addr), .data_in(data_in), .we(we), .clk(clk), .data_out(data_out));

  integer i;

  initial clk=0;
  always #5 clk=~clk;

  initial begin
          we =1;
          for(i=0;i<16;i++)
          begin
            addr = i;
            data_in = i*2;
            #10;
          end
          we =0;
          for(i=0;i<16;i++)
          begin 
	     addr = i; #10;
            $display("addr=%0d | data_out=%0d",addr,data_out);
          end
    $finish;
    end
endmodule
