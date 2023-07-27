`timescale 1ns / 1ps

module ProgramCounter(
    inout [7:0] bus,
	 input clk,
    input jmp,
    input ce,
    input co,
	 input rst
    );

	reg [3:0] counter = 4'b0000;
	assign bus = co ? {4'b0, counter} : 8'bz;
	
	always @(posedge clk) begin
		if (rst) begin
			counter <= 4'b0000;
		end
		if (jmp) begin
			counter <= bus[3:0];
		end
		if (ce) begin
			counter <= counter + 1;
		end
	end

endmodule
