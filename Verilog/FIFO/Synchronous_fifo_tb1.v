module sync_fifo_tb;

  reg clk, rstn;
  reg w_en, r_en;
  reg [7:0] data_in;
  wire [7:0] data_out;
  wire full, empty;


  reg [7:0] ref_mem [0:255];   
  int wr_idx, rd_idx;

  sync_fifo uut (
    .clk(clk),
    .rstn(rstn),
    .w_en(w_en),
    .r_en(r_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
  );

  always #5 clk = ~clk;

  initial begin
    clk = 0;
    rstn = 0;
    w_en = 0;
    data_in = 0;
    wr_idx = 0;

    $dumpfile("FIFO.vcd");
    $dumpvars;

    repeat(10) @(posedge clk);
    rstn = 1;

    repeat(2) begin
      for (int i = 0; i < 30; i++) begin
        @(posedge clk);
        w_en = (i % 2 == 0);

        if (w_en && !full) begin
          data_in = $urandom;
          ref_mem[wr_idx] = data_in; 
          wr_idx++;
        end
      end
      #50;
    end
  end

  initial begin
    r_en = 0;
    rd_idx = 0;

    repeat(20) @(posedge clk);
    rstn = 1;

    repeat(2) begin
      for (int i = 0; i < 30; i++) begin
        @(posedge clk);
        r_en = (i % 2 == 0);

        if (r_en && !empty) begin
          #1;

          if (data_out !== ref_mem[rd_idx]) begin
            $error("Time=%0t FAIL : Expected=%h Got=%h",
                   $time, ref_mem[rd_idx], data_out);
          end
          else begin
            $display("Time=%0t PASS : Expected=%h Data=%h",
                     $time,ref_mem[rd_idx], data_out);
          end
          rd_idx++;
        end
      end
      #50;
    end

    $finish;
  end

endmodule
