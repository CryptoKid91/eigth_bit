`timescale 1ns / 1ps

module InstructionRegister(
    inout [7:0] bus,
	 output reg [7:0] register,
    input enable,
    input load,
    input clk,
	 input rst
    );
	
	assign bus = enable ? {4'b0, register[3:0]} : 8'bz;
	
	always @(posedge clk) begin
		if (rst) begin
			register <= 8'b0;
		end
		if (load) begin
			register <= bus[7:0];
		end
	end
	

endmodule
