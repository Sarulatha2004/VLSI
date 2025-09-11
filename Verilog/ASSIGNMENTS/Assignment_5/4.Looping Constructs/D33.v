module parity_for;
  reg [7:0] x;
  reg parity;
  integer i;
  initial begin
    parity = 0; x=8'b11100111;
    for (i=0; i<8; i=i+1)
      parity = parity^ x[i];
    $display(" Data=%b | Parity = %0b", x,parity);
  end
endmodule

