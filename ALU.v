`timescale 1ns / 1ps

module ALU(
   output [7:0] bus,
	output ZF, // Zero flag
	output CF, // Carry flag
   input [7:0] a,
   input [7:0] b,
   input Eo,
   input Su
   );

	reg [8:0] sum;
	 
	assign bus = Eo ? sum[7:0] : 8'bz;
	assign ZF = sum[7:1] == 0 ? 1'b1 : 1'b0;
	assign CF = sum[8];
	
	always @(*) begin
		if (Su) begin
			sum <= a - b;
		end else begin
			sum <= a + b;
		end
	end

endmodule
