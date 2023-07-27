`timescale 1ps/1ps

module Clock
 (// Clock in port
  input         CLK_IN1,
  // Clock out port
  output        CLK_OUT1,
  output        CLK_OUT10,
  // Clock halt input
  input 			 hlt,
  // Clock advance button
  input         advance_i
 );

   // Input buffering
   //------------------------------------
  	IBUFG clk_in_buf
		(.O (clkin1),
		.I (CLK_IN1));
	reg advance, advance_tmp;
	always @(posedge clktmp) begin
		advance_tmp <= advance_i;
		advance <= advance_tmp;
	end


  // Clocking primitive
  //------------------------------------
  // Instantiation of the PLL primitive
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
  wire psdone_unused;
  wire locked_int;
  wire [7:0]  status_int;
  wire clkfb;
  wire clk0;
  wire clkfx;
  wire clkdv;

  DCM_SP
  #(.CLKDV_DIVIDE          (16.000),
    .CLKFX_DIVIDE          (8),
    .CLKFX_MULTIPLY        (5),
    .CLKIN_DIVIDE_BY_2     ("TRUE"),
    .CLKIN_PERIOD          (31.25),
    .CLKOUT_PHASE_SHIFT    ("NONE"),
    .CLK_FEEDBACK          ("1X"),
    .DESKEW_ADJUST         ("SYSTEM_SYNCHRONOUS"),
    .PHASE_SHIFT           (0),
    .STARTUP_WAIT          ("FALSE"))
  dcm_sp_inst
    // Input clock
   (.CLKIN                 (clkin1),
    .CLKFB                 (clkfb),
    // Output clocks
    .CLK0                  (clk0),
    .CLK90                 (),
    .CLK180                (),
    .CLK270                (),
    .CLK2X                 (),
    .CLK2X180              (),
    .CLKFX                 (clkfx),
    .CLKFX180              (),
    .CLKDV                 (clkdv),
    // Ports for dynamic phase shift
    .PSCLK                 (1'b0),
    .PSEN                  (1'b0),
    .PSINCDEC              (1'b0),
    .PSDONE                (),
    // Other control and status signals
    .LOCKED                (locked_int),
    .STATUS                (status_int),
    .RST                   (1'b0),
    // Unused pin- tie low
    .DSSEN                 (1'b0));

  // Output buffering
  //-----------------------------------
  BUFG clkf_buf
   (.O (clkfb),
    .I (clk0));

  BUFG clkout10_buf
   (.O   (CLK_OUT10),
    .I   (clkfx));

  BUFG clkout1_buf
   (.O   (clktmp),
    .I   (clkdv));

	// Clock halting
	//-----------------------------------
	reg adv = 0;
	BUFGMUX #(
		.CLK_SEL_TYPE("ASYNC")  // ASYNC, SYNC
	)
	BUFGMUX_inst (
		.O(CLK_OUT1), // 1-bit output: Clock output
		.I0(clktmp),  // 1-bit input: Clock input (S=0)
		.I1(adv),     // 1-bit input: Clock input (S=1)
		.S(hlt)       // 1-bit input: Clock select
		);
	
	// Manually advance halted clock
	//-----------------------------------
	reg adv_pressed = 0;
	always @(posedge clktmp) begin
		if (hlt && advance && !adv_pressed) begin
			adv_pressed <= 1;
			adv <= 1;
		end else if (adv) begin
			adv <= 0;
		end
		if (!advance) begin
			adv_pressed <= 0;
		end
	end
	
endmodule
