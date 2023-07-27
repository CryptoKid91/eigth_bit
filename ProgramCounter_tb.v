`timescale 1ns / 1ps

module ProgramCounter_tb;

	// Inputs
	reg clk;
	reg jmp;
	reg ce;
	reg co;

	// Bidirs
	wire [7:0] bus;
	reg [7:0] busdata;
	
	assign bus = co ? 8'bz : busdata;

	// Instantiate the Unit Under Test (UUT)
	ProgramCounter uut (
		.bus(bus), 
		.clk(clk), 
		.jmp(jmp), 
		.ce(ce), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		jmp = 0;
		ce = 0;
		co = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk = ~clk;
	end
      
	initial begin
		busdata = 8'b0;
		ce = 1;
		@(posedge clk);
		co = 1;
		@(posedge clk);
		co = 0;
		ce = 0;
		@(posedge clk);
		busdata = 8'b01010101;
		jmp = 1;
		@(posedge clk);
		ce = 1;
		@(posedge clk);
		@(posedge clk);
		co = 1;
		@(posedge clk);
		$finish;
	end
		
endmodule

