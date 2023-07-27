`timescale 1ns / 1ps

module RAM(
    inout [7:0] bus,
    input [3:0] addr,
    input enable,
    input write,
    input clk
    );

	reg [7:0] RAM [15:0]; //16:n 8-bittisen rekisterin array
	
	assign bus = enable ? RAM[addr] : 8'bz;
	
	initial begin
		$readmemh("memory.mem", RAM, 0, 15); //Muistin alustus
	end
	
	always @(posedge clk) begin
		if (write) begin
			RAM[addr] <= bus;
		end
	end

endmodule
