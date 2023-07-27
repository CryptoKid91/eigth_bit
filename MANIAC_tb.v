`timescale 1ns / 1ps
module MANIAC_tb;

	// Inputs
	reg clk_32;
	reg PORTB0;
	reg PORTB1;
	reg SW4;
	reg SW3;
	reg SW2;

	// Outputs
	wire [7:0] LEDS;
	wire [11:0] PORTA;

	// Instantiate the Unit Under Test (UUT)
	MANIAC uut (
		.clk_32(clk_32), 
		.PORTB0(PORTB0),
		.PORTB1(PORTB1),
		.SW2(SW2),
		.SW4(SW4), 
		.SW3(SW3), 
		.LEDS(LEDS), 
		.PORTA(PORTA)
	);

	initial begin
		// Initialize Inputs
		clk_32 = 1;
		PORTB0 = 0;
		PORTB1 = 1;
		SW4 = 0;
		SW3 = 0;
		SW2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      PORTB1 = 0; // Release reset
		#10;
		// Add stimulus here
		forever #10 clk_32 = ~clk_32;
	end

endmodule

