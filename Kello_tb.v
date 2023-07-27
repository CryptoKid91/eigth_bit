`timescale 1ns / 1ps
module Kello_tb;

	// Inputs
	reg CLK_IN1;
	reg hlt;
	reg advance_i;

	// Outputs
	wire CLK_OUT1;

	// Instantiate the Unit Under Test (UUT)
	Clock uut (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.hlt(hlt), 
		.advance_i(advance_i)
	);

	initial begin
		// Initialize Inputs
		CLK_IN1 = 0;
		hlt = 0;
		advance_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 CLK_IN1 = ~CLK_IN1;
	end
      
	initial begin
		#2000 // Wait for couple slow clock pulses
		hlt = 1;
		#1000
		advance_i = 1;
		#1000
		advance_i = 0;
		#1000
		advance_i = 1;
		#1000
		hlt = 0;
		#1000
		advance_i = 0;
		#1000
		advance_i = 1;
		#1000
		hlt = 0;
		#1000
		advance_i = 0;
		#1000
		$finish;
	end
endmodule

