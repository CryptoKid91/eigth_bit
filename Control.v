`timescale 1ns / 1ps
module Control(
	input clk,
   input [7:0] instruction,
	input rst,
	input [1:0] flags,
   output reg hlt,
   output reg enableA,
   output reg loadA,
   output reg loadB,
   output reg enableALU,
   output reg sub,
   output reg enableRAM,
   output reg writeRAM,
   output reg enableAddr,
   output reg loadAddr,
   output reg jmp,
   output reg ce,
   output reg co,
   output reg loadDR,
   output reg enableIR,
   output reg loadIR,
	output reg loadFlags
   );

	// States for the CPU, fetch loads
	// instruction from RAM to instruction counter,
	// run runs the instruction and halt stops the clock
	localparam FETCH = 2'b00,
				  RUN   = 2'b01,
				  HALT  = 2'b11;
	
	// Instructions that the cpu knows
	localparam NOP   = 8'h00,
				  LDA   = 8'h01,
				  ADD   = 8'h02,
				  SUB   = 8'h03,
				  STA   = 8'h04,
				  LDI   = 8'h05,
				  JMP   = 8'h06,
				  JC    = 8'h07,
				  JZ    = 8'h08,
				  OUT   = 8'h0e,
				  HLT   = 8'h0f;
	
	reg [1:0] state  = FETCH;
	reg [2:0] step   = 3'h0;
	
	always @(negedge clk) begin
		if (rst) begin
			state <= FETCH;
			step  <= 3'h0;
		end
		hlt        <= 0;
		enableA    <= 0;
		loadA      <= 0;
		loadB      <= 0;
		enableALU  <= 0;
		sub        <= 0;
		enableRAM  <= 0;
		writeRAM   <= 0;
		enableAddr <= 0;
		loadAddr   <= 0;
		jmp        <= 0;
		ce         <= 0;
		co         <= 0;
		loadDR     <= 0;
		enableIR   <= 0;
		loadIR     <= 0;
		loadFlags  <= 0;
		case (state)
			FETCH: 
				begin
				case (step)
					3'h0:
						begin
						loadAddr   <= 1;
						co         <= 1;
						step       <= 3'h1;
						end
					3'h1:
						begin
						enableRAM  <= 1;
						ce         <= 1;
						loadIR     <= 1;
						step       <= 3'h0;
						state      <= RUN;
						end
				endcase
				end
			RUN:
				begin
				case (instruction[7:4])
					LDA:
						case (step)
							3'h0:
								begin
								loadAddr   <= 1;
								enableIR   <= 1;
								step       <= 3'h1;
								end
							3'h1:
								begin
								loadA      <= 1;
								enableRAM  <= 1;
								step       <= 3'h0;
								state      <= FETCH;
								end
						endcase
					ADD:
						case (step)
							3'h0:
								begin
								loadAddr   <= 1;
								enableIR   <= 1;
								step       <= 3'h1;
								end
							3'h1:
								begin
								loadB      <= 1;
								enableRAM  <= 1;
								step       <= 3'h2;
								end
							3'h2:
								begin
								loadA      <= 1;
								enableALU  <= 1;
								loadFlags  <= 1;
								step       <= 3'h0;
								state      <= FETCH;
								end
						endcase
					SUB:
						case (step)
							3'h0:
								begin
								loadAddr   <= 1;
								enableIR   <= 1;
								step       <= 3'h1;
								end
							3'h1:
								begin
								loadB      <= 1;
								enableRAM  <= 1;
								step       <= 3'h2;
								end
							3'h2:
								begin
								loadA      <= 1;
								enableALU  <= 1;
								sub        <= 1;
								loadFlags  <= 1;
								step       <= 3'h0;
								state      <= FETCH;
								end
						endcase
					STA:
						case (step)
							3'h0:
								begin
								loadAddr   <= 1;
								enableIR   <= 1;
								step       <= 3'h1;
								end
							3'h1:
								begin
								writeRAM   <= 1;
								enableA    <= 1;
								step       <= 3'h0;
								state      <= FETCH;
								end
						endcase
					LDI:
						begin
						loadA      <= 1;
						enableIR   <= 1;
						step       <= 3'h0;
						state      <= FETCH;
						end
					JMP:
						begin
						jmp        <= 1;
						enableIR   <= 1;
						step       <= 3'h0;
						state      <= FETCH;
						end
					JC:
						begin
						jmp        <= flags[1];
						enableIR   <= flags[1];
						step       <= 3'h0;
						state      <= FETCH;
						end
					JZ:
						begin
						jmp        <= flags[0];
						enableIR   <= flags[0];
						step       <= 3'h0;
						state      <= FETCH;
						end
					OUT:
						begin
						enableA    <= 1;
						loadDR     <= 1;
						step       <= 3'h0;
						state      <= FETCH;
						end
					NOP:
						begin
						step       <= 3'h0;
						state      <= FETCH;
						end
					HLT:
						begin
						hlt        <= 1;
						step       <= 3'h0;
						state      <= HALT;
						end
					default:
						begin
						step       <= 3'h0;
						state      <= FETCH;
						end
				endcase
				end
			HALT:
				begin
				hlt        <= 1;
				state      <= HALT;
				end
			default: state <= HALT;
		endcase
	end

endmodule
