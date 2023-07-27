`timescale 1ns / 1ps

module RAM_tb;

	// Inputs
	wire [3:0] addr;
	reg enable;
	reg write;
	reg clk;
	reg enableAddr, loadAddr;

	// Bidirs
	wire [7:0] bus;
	reg [7:0] busdata;
	
	assign bus = enable ? 8'bz : busdata;
	
	integer i;
	
	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.bus(bus), 
		.addr(addr), 
		.enable(enable), 
		.write(write), 
		.clk(clk)
	);
	
	// Instantiate address register
	Register #(.WIDTH(4)) Addr (
		.bus(bus),
		.register(addr),
		.enable(enableAddr),
		.load(loadAddr),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		enable = 0;
		write = 0;
		clk = 0;
		enableAddr = 0; 
		loadAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 clk = ~clk;
	end
	
	initial begin
		busdata = 8'b0;
		for (i=0; i<16; i=i+1) begin
			@(posedge clk)
			write = 0;
			busdata = i[7:0];
			loadAddr = 1;
			@(posedge clk)
			loadAddr = 0;
			write = 1;
			busdata = 8'd255-i[7:0];
		end
		for (i=0; i<16; i=i+1) begin
			@(posedge clk)
			write = 0;
			enable = 0;
			busdata = i[7:0];
			loadAddr = 1;
			@(posedge clk)
			loadAddr = 0;
			enable = 1;
		end
		@(posedge clk)
		$finish;
	end
      
endmodule

