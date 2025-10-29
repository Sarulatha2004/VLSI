module bin2bcd(
input clk,
input rst,
input start,
input [7:0]in,
output reg [11:0]bcd_out,
output reg done
);

reg [7:0]bin_in;
reg [2:0]count;
reg [2:0]state,next_state;
reg [1:0]digit_index;

parameter IDLE=0;
parameter SHIFT=1;
parameter SHIFT_INDEX_CHECK=2;
parameter ADD_3=3;
parameter DIGIT_INDEX_CHECK=4;
parameter BCD_DONE=5;

always @ (posedge clk or posedge rst)
begin
	if(rst)begin
		bin_in<=0;
		count <=0;
		digit_index <=0;
		done <=0;
		bcd_out <=0;
		state <=IDLE;
	end
	else begin
		state <= next_state;
		case(state)
		IDLE:
		begin
			done<=0;
		
			if(start)
			begin
				bin_in <=in;
				bcd_out <=0;
				count <=0;
				digit_index <=0;
				
			end
				
		end

		SHIFT:
		begin
			bcd_out <= bcd_out << 1;
			bcd_out[0] <= bin_in[7];
		        bin_in <= bin_in << 1;
		end

		SHIFT_INDEX_CHECK:
		begin
			if(count ==7)
				count <=0;
			else
				count <= count + 1;
		end

		ADD_3:
		begin
			if(bcd_out[(digit_index*4)+:4] >=5)
				bcd_out[(digit_index*4)+:4] <= bcd_out[(digit_index*4)+:4]+3;
		end

		DIGIT_INDEX_CHECK:
		begin
			if(digit_index==2)
				digit_index <=0;
			else
				digit_index <= digit_index +1;
		end
		BCD_DONE:
		begin
			done <=1;
		end
	endcase
end
end


always @(*) 
begin
	case(state)
		IDLE:
		begin
			if(start)
				next_state <= SHIFT;
			else
				next_state <= IDLE;
		end

		SHIFT:
		begin
			next_state <= SHIFT_INDEX_CHECK;
		end

		SHIFT_INDEX_CHECK:
		begin
			if(count==7)
				next_state <= BCD_DONE;
			else
				next_state <= ADD_3;
		end

		ADD_3:
		begin
			next_state <= DIGIT_INDEX_CHECK;
		end
		DIGIT_INDEX_CHECK:
		begin
			if(digit_index == 2)
				next_state <= SHIFT;
			else
				next_state <= ADD_3;
		end

		BCD_DONE:
		begin
			next_state <= IDLE;
		end
		default: next_state <= IDLE;
	endcase
end
endmodule






