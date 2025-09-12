module tb_case_compare;
  reg [2:0] s;
  reg [7:0] out_case, out_casex, out_casez;

  always @(s) begin
    case(s)
      3'b100: out_case = 8'b00110011;
      3'b101: out_case = 8'b10101010;
      default: out_case = 8'b01010101;
    endcase
  end

  always @(s) begin
    casex(s)
      3'b1x0: out_casex = 8'b11001100; 
      3'b101: out_casex = 8'b00111011;
      default: out_casex = 8'b11100001;
    endcase
  end

  always @(s) begin
    casez(s)
      3'b1?0: out_casez = 8'b10001101;
      3'b101: out_casez = 8'b00110010;
      default: out_casez = 8'b11000101;
    endcase
  end

  initial begin
    $dumpfile("case_compare.vcd");
    $dumpvars(0, tb_case_compare);
    $monitor("T=%0t | sel=%b | case=%b casex=%b casez=%b",$time,s,out_case,out_casex,out_casez);

    s=3'b100; #5;
    s=3'b101; #5;
    s=3'b1x0; #5;
    s=3'b1z0; #5;
    $finish;
  end
endmodule

