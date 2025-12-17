module sync_fifo (
  input clk,rstn,
  input w_en,r_en,
  input [7:0]data_in,
  output reg [7:0]data_out,
  output full,empty
);
  
  reg [3:0]w_ptr,r_ptr;
  reg [7:0]fifo[8];
  
  always @(posedge clk)
    begin
      if(!rstn)
        begin
          w_ptr <=0;
          r_ptr<=0;
          data_out<=0;
        end
    end
  
  always @(posedge clk) begin
    if(w_en & !full)
      begin
        fifo[w_ptr[2:0]] <=data_in;
        w_ptr <=w_ptr +1;
      end
  end
  
  always @(posedge clk)
    begin
      if(r_en & !empty)
        begin
          data_out <=fifo[r_ptr[2:0]];
          r_ptr <=r_ptr +1;
        end
    end
  
  assign full=({~w_ptr[3],w_ptr[2:0]}=={r_ptr[3:0]});
  assign empty=(w_ptr[3:0] == r_ptr[3:0]);
endmodule
          
