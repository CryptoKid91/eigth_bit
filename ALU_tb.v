`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:45 12/29/2022
// Design Name:   ALU
// Module Name:   /mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/ALU_tb.v
// Project Name:  eight_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	wire [7:0] a;
	reg [7:0] b;
	reg Eo;
	reg Su;
	reg enableA, loadA;
	reg clk;

	// Outputs
	wire [7:0] bus;
	reg [7:0] busdata;
	assign bus = busdata;

	integer i;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.bus(bus), 
		.a(a), 
		.b(b), 
		.Eo(Eo), 
		.Su(Su)
	);

	// Instantiate register
	Register register (
		.bus(bus),
		.register(a),
		.enable(enableA),
		.load(loadA),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		b = 8'd1;
		Eo = 0;
		Su = 0;
		enableA = 0;
		loadA = 1;
		busdata = 8'd1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = ~clk;
		busdata = 8'bz;
		Eo = 1;
		#10
		clk = ~clk;
		repeat(50) #10 clk = ~clk;
		Su = 1;
		repeat(50) #10 clk = ~clk;
		$finish;
	end
	
	/*initial begin
		for (i=0; i<10; i=i+1) begin
			#10
			a = i;
			b = i;
		end
		#10
		Su = 1'b1;
		for (i=0; i<10; i=i+1) begin
			#10
			a = i;
			b = i;
		end
		#10
		a = 8'd5;
		b = 8'd7;
		Eo = 1'b1;
		#10
		Eo = 1'b0;
		#10
		$finish;
	end*/
      
endmodule

