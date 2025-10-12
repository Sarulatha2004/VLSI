module moore_1010_overlap(
  input clk, 
  input rst, 
  input x,
  output y);

  parameter s0 = 3'b000;
  parameter s1 = 3'b001;
  parameter s2 = 3'b010;
  parameter s3 = 3'b011;
  parameter s4 = 3'b100;
  
  reg [2:0] state,next_state;

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
              next_state = s1;
           else
              next_state = s2;
         end
      s2: begin
           if(x==1) 
              next_state = s3;
           else
              next_state = s0;
         end
      s3: begin
           if(x==1) 
              next_state = s1;
           else       
              next_state = s4;
         end
      s4: begin
	      if(x==1)
		      next_state = s3;
	      else
		      next_state = s0;
      end

      default: next_state = s0;
    endcase
  end
  assign y = (state==s4) && (x==0)? 1:0;
endmodule
