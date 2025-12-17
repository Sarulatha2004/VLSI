

module sync_fifo_tb;
  
  reg clk,rstn;
  reg w_en,r_en;
  
  reg[7:0]data_in;
  reg[7:0]data_out;
  
  wire full,empty;
  
  reg [7:0]wdata_q[$],wdata;
  
  sync_fifo uut(.clk(clk),.rstn(rstn),.w_en(w_en),.r_en(r_en),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));
  
  always #5 clk=~clk;
  
  initial begin
  clk=1'b0;
    $dumpfile("FIFO.vcd");
    $dumpvars;
    rstn=1'b0;
  w_en=1'b0;
  data_in=0;
    
    repeat(10)
      @(posedge clk);
      rstn=1'b1;
      repeat(2) begin
        for(int i=0;i<30;i++) begin
          @(posedge clk);
          w_en=(i%2==0)?1'b1:1'b0;
          if(w_en & !full)begin
            data_in=$urandom;
            wdata_q.push_back(data_in);
          end
        end
        #50;
      end
  end
  
  
  initial begin
    
    clk=1'b0;rstn=1'b0;
    r_en=1'b0;
    
    repeat(20) @(posedge clk);
    rstn=1'b1;
    
    repeat(2) begin
      for(int i=0;i<30;i++)
        begin
          @(posedge clk);
          r_en=(i%2 == 0)?1'b1:1'b0;
          
          if(r_en & !empty) begin
            #1;
            wdata =wdata_q.pop_front();
            
            if(data_out !== wdata)
              $error("Time=%0t:Comparison failed :expected wr_data= %h, rd_data = %h", $time, wdata, data_out);
            else
              $display("Time=%0t: Comparision passed:wr_data=%h and rd_data = %h",$time, wdata, data_out);
          end
        end
      #50;
    end
    $finish;
  end
endmodule
            
  
