module mem_inital;
  reg [7:0] mem [0:15];
  integer i;
  initial begin
    i = 0;
    repeat (16) begin
      mem[i] = i;
      $display("Mem[%b]=%d(%b)",i,mem[i],mem[i]);
      i = i + 1;
    end
  end

endmodule

