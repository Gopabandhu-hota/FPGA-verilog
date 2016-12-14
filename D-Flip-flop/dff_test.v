`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:09 12/13/2016
// Design Name:   dff
// Module Name:   G:/FPGA/Modules/D-flip-flop/dff_test.v
// Project Name:  D-flip-flop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg d;
	// Outputs
	wire q;   //we want a waveform from q ,so here at test bench q should be defined as wire.
	wire q_bar;
	reg clk,rst;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.q(q), 
		.q_bar(q_bar), 
		.rst(rst),
		.clk(clk),
		.d(d)
	);

	initial begin
		// Initialize Inputs
		d = 0;
      clk = 0;
		rst = 0 ;
		// Wait 100 ns for global reset to finish
		#100;
		 d = 1; 
		// Add stimulus here
	end
	always begin
	  #1 d = ~d ;
	  #5 clk = ~clk;
	  end 		 
endmodule
