`timescale 1ns / 1ps
module SevenSegmentDisplayDriver(
	input  clk,               // Clock
	input  hex_i,             // Hexadesimal output instead of decimal
	input  neg_i,             // Allow negative numbers in 2s complement
	input  [7:0] bus_i,       // Bus input
   output reg [7:0] segment, // Segment led anodes
   output reg [3:0] digit    // Digit common cathodes
   );
	
	reg [11:0] bcd;
	wire [7:0] data;
	wire [4:0] value [2:0];

	// Convert negative 2s complement to positive number for display
	assign data = (neg && bus[7]) ? ~bus + 1 : bus;

	// If hex input is set, display hex directly, otherwise display bcd output.
	assign value[2] = hex ? 5'h10             : {1'h0, bcd[11:8]};
	assign value[1] = hex ? {1'h0, data[7:4]} : {1'h0, bcd[7:4]};
	assign value[0] = hex ? {1'h0, data[3:0]} : {1'h0, bcd[3:0]};
	
	// As the display clock is faster than the clock used by rest of the system,
	// we are crossing clock domain and thus need some flip-flops to buffer the data
	reg hex, hex_tmp, neg, neg_tmp;
	reg [7:0] bus, bus_tmp;
	always @(posedge clk) begin
		hex_tmp <= hex_i;
		hex <= hex_tmp;
		
		neg_tmp <= neg_i;
		neg <= neg_tmp;
		
		bus_tmp <= bus_i;
		bus <= bus_tmp;
	end
	
	// Decimal to BCD converter
	integer i;
	always @(*) begin
		bcd=0;		 	
		for (i=0;i<8;i=i+1) begin
			if (bcd[3:0]  >= 5) bcd[11:0] = bcd[11:0] + 3; // If any of BCD digits is >= 5, add three to it
			if (bcd[7:4]  >= 5) bcd[11:4] = bcd[11:4] + 3;
			if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
			bcd = {bcd[10:0],data[7-i]};                   // Shift one bit, and shift in a bit from input 
		end
	end
	
	// Counter
	reg [5:0] counter_d = 0;
	reg [5:0] counter_q = 0;
	always @(*) begin
    counter_d = counter_q + 1'b1;
   end
	always @(posedge clk) begin
		counter_q <= counter_d;
   end

	// 7-segment decoder
	always @(*)
	case(counter_q[5:4])
		2'b00:
			begin
			digit = 4'b1110;
			segment = SevenSeg(value[0]);
			end
		2'b01:
			begin
			digit = 4'b1101;
			segment = SevenSeg(value[1]);
			end
		2'b10:
			begin
			digit = 4'b1011;
			segment = SevenSeg(value[2]);
			end
		2'b11:
			begin
			digit = 4'b0111;
			segment = SevenSeg((neg && bus[7]) ? 5'h11 : 5'h10);
			end
	endcase	
	
	function [7:0] SevenSeg;
		input [4:0] val;
		case(val)
			5'h0: SevenSeg = 8'h7e;
			5'h1: SevenSeg = 8'h30;
			5'h2: SevenSeg = 8'h6d;
			5'h3: SevenSeg = 8'h79;
			5'h4: SevenSeg = 8'h33;
			5'h5: SevenSeg = 8'h5b;
			5'h6: SevenSeg = 8'h5f;
			5'h7: SevenSeg = 8'h70;
			5'h8: SevenSeg = 8'h7f;
			5'h9: SevenSeg = 8'h7b;
			5'ha: SevenSeg = 8'h77;
			5'hb: SevenSeg = 8'h1f;
			5'hc: SevenSeg = 8'h4e;
			5'hd: SevenSeg = 8'h3d;
			5'he: SevenSeg = 8'h4f;
			5'hf: SevenSeg = 8'h47;
			5'h10: SevenSeg = 8'h00; // Empty
			5'h11: SevenSeg = 8'h01; // Minus sign
			default: SevenSeg = 8'h00;
		endcase
	endfunction

endmodule
