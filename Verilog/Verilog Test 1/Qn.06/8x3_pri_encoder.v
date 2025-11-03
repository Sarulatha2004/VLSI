module pri_encoder(d,y);
input[7:0] d;
output reg [2:0]y;
always @(*) 
begin
casez(d)
 8'b1???????: 
          begin
           y=3'b111;
          end
 8'b01??????:
          begin
           y=3'b110;
          end
 8'b001?????:
          begin
           y=3'b101;
          end
 8'b0001????:
          begin
           y=3'b100;
          end
 8'b00001???:
          begin
           y=3'b011;
          end
 8'b000001??:
          begin
           y=3'b010;
          end
 8'b0000001?:
          begin
            y=3'b001;
          end
 8'b0000000?:
          begin
            y=3'b000;
          end
 default y=3'bxxx;
endcase

end
endmodule
