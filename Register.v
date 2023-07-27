`timescale 1ns / 1ps

module Register #(parameter WIDTH = 8)(
    inout [7:0] bus,
	 output reg [WIDTH - 1:0] register,
    input enable,
    input load,
    input clk,
	 input rst
    );
	
	assign bus = enable ? {{(8 - WIDTH){1'b0}}, register} : 8'bz;
	
	always @(posedge clk) begin
		if (rst) begin
			register <= {WIDTH{1'b0}};
		end
		if (load) begin
			register <= bus[WIDTH - 1:0];
		end
	end
	

endmodule
