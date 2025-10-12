module mealy_1110_overlap(
  input clk, 
  input rst, 
  input x,
  output y);

  parameter s0 = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  parameter s3 = 2'b11;
  
  reg [1:0] state,next_state;

  always @(posedge clk or posedge rst) begin
    if(rst) begin 
      state <= s0;
    end
    else 
      state <= next_state;
  end
  
  always @(state or x) begin
    case(state)
      s0: begin
           if(x==1)
              next_state = s1;
           else       
              next_state = s0;
         end
      s1: begin
           if(x==1) 
              next_state = s2;
           else
              next_state = s0;
         end
      s2: begin
           if(x==1) 
              next_state = s3;
           else
              next_state = s0;
         end
      s3: begin
           if(x==1) 
              next_state = s3;
           else       
              next_state = s0;
         end
      default: next_state = s0;
    endcase
  end
  assign y = (state==s3) && (x==0)? 1:0;
endmodule
