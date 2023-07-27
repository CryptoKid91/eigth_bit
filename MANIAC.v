`timescale 1ns / 1ps

module MANIAC(
    input clk_32,
	 input PORTB0,
	 input PORTB1,
	 input SW4,
	 input SW3,
	 input SW2,
    output [7:0] LEDS,
	 output [11:0] PORTA
    );

	wire clk, clk10, rst, hlt, enableA, loadA, loadB, enableALU,
	     sub, enableRAM, writeRAM, jmp, ce, co, loadDR, enableIR,
		  loadIR, enableAddr, loadAddr, advance, hex, neg, halt,
		  loadFlags, ZF, CF;
	wire [7:0] bus, regA, regB, segment, display, instruction;
	wire [3:0] digit, memAddr;
	wire [1:0] flags; // 0: Zero flag, 1: Carry flag
	
	assign PORTA[7 :0] = segment;
	assign PORTA[11:8] = digit;
	assign LEDS = bus;
	
	// TODO: debounce these:
	assign advance = PORTB0;
	assign rst     = PORTB1;
	assign neg     = SW3;
	assign hex     = SW4;
	assign halt    = SW2 | hlt;

	Clock clock (
		.CLK_IN1(clk_32),
		.CLK_OUT1(clk),
		.CLK_OUT10(clk10),
		.hlt(halt),
		.advance_i(advance)
   );
	
	Control control (
    .clk(clk), 
    .instruction(instruction), 
    .hlt(hlt),
	 .rst(rst),
	 .flags(flags),
    .enableA(enableA), 
    .loadA(loadA), 
    .loadB(loadB), 
    .enableALU(enableALU), 
    .sub(sub), 
    .enableRAM(enableRAM), 
    .writeRAM(writeRAM), 
    .enableAddr(enableAddr), 
    .loadAddr(loadAddr), 
    .jmp(jmp), 
    .ce(ce), 
    .co(co), 
    .loadDR(loadDR), 
    .enableIR(enableIR), 
    .loadIR(loadIR),
	 .loadFlags(loadFlags)
    );
	
	Register a (
		.bus(bus),
		.register(regA),
		.enable(enableA),
		.load(loadA),
		.clk(clk),
		.rst(rst)
	);
	
	Register b (
		.bus(bus),
		.register(regB),
		.enable(1'b0),
		.load(loadB),
		.clk(clk),
		.rst(rst)
	);
	
	ALU alu (
		.bus(bus),
		.a(regA),
		.b(regB),
		.ZF(ZF),
		.CF(CF),
		.Eo(enableALU),
		.Su(sub)
	);
	
	RAM ram (
		.bus(bus), 
		.addr(memAddr), 
		.enable(enableRAM), 
		.write(writeRAM), 
		.clk(clk)
    );
	 
	Register #(.WIDTH(4)) addr (
		.bus(bus[3:0]),
		.register(memAddr),
		.enable(enableAddr),
		.load(loadAddr),
		.clk(clk),
		.rst(rst)
	);
	
	InstructionRegister ir (
		.bus(bus), 
		.register(instruction), 
		.enable(enableIR), 
		.load(loadIR), 
		.clk(clk),
		.rst(rst)
   );
	
	ProgramCounter pc (
		.bus(bus), 
		.clk(clk), 
		.jmp(jmp), 
		.ce(ce), 
		.co(co),
		.rst(rst)
    );
	 
	 SevenSegmentDisplayDriver gpu (
		.clk(clk10), // Display needs to be driven with a faster clock to work correctly
		.hex_i(hex),
		.neg_i(neg),
		.bus_i(display), 
		.segment(segment), 
		.digit(digit)
    );
	 
	 Register dr (
		.bus(bus), 
		.register(display), 
		.enable(1'b0), 
		.load(loadDR), 
		.clk(clk),
		.rst(rst)
    );

	Register #(.WIDTH(2)) flagRegister (
		.bus({CF, ZF}), 
		.register(flags), 
		.enable(1'b0), 
		.load(loadFlags), 
		.clk(clk),
		.rst(rst)
    );
endmodule
