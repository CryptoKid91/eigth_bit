`timescale 1ns / 1ps

module register_tb;

	// Inputs
	reg enable;
	reg load;
	reg clk;

	// Bidirs
	wire [7:0] bus;
	reg [7:0] busdata;
	
	assign bus = enable ? 8'bz : busdata;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.bus(bus), 
		.enable(enable), 
		.load(load), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		enable = 1'b0;
		load = 1'b0;
		clk = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk = ~clk;

	end
	
	initial begin
		busdata = 8'b0;
		@(posedge clk);
		busdata = 8'b01010101;
		load = 1'b1;
		@(posedge clk);
		busdata = 8'b0;
		load = 1'b0;
		@(posedge clk);
		enable = 1'b1;
		@(posedge clk);
		enable = 1'b0;
		@(posedge clk);
		$finish;
	end
      
endmodule

