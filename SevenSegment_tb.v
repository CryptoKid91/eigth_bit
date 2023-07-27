`timescale 1ns / 1ps
module SevenSegment_tb;

	// Inputs
	reg clk;
	reg hex;
	reg neg;
	reg [7:0] bus;

	// Outputs
	wire [7:0] segment;
	wire [3:0] digit;

	// Instantiate the Unit Under Test (UUT)
	SevenSegmentDisplayDriver uut (
		.clk(clk), 
		.hex_i(hex),
		.neg_i(neg),
		.bus_i(bus), 
		.segment(segment), 
		.digit(digit)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		hex = 0;
		neg = 0;
		bus = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk = ~clk;
	end
	
	initial begin
		#1987
		bus = 8'd123;
		#1995
		neg = 1;
		bus = 8'b1010_1000;
		#2002
		bus = 8'b0;
		hex = 1'b1;
		#2005
		neg = 0;
		bus = 8'hff;
		#2000
		bus = 8'hab;
		#2004
		$finish;
	end
      
endmodule

