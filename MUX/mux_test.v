`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:30:14 12/11/2016
// Design Name:   mux
// Module Name:   G:/FPGA/MUX/mux_test.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_test;

	// Inputs
	reg line1;
	reg line2;
	reg line3;
	reg line4;
	reg cntrl_line1;
	reg cntrl_line2;

	// Outputs
	wire output_line;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.line1(line1), 
		.line2(line2), 
		.line3(line3), 
		.line4(line4), 
		.cntrl_line1(cntrl_line1), 
		.cntrl_line2(cntrl_line2), 
		.output_line(output_line)
	);

	initial begin
		// Initialize Inputs
		line1 = 0;
		line2 = 0;
		line3 = 0;
		line4 = 0;
		cntrl_line1 = 0;
		cntrl_line2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		line1 = 1 ;
		cntrl_line1 = 1;
		cntrl_line2 = 1;
		#10
		line1 = 0;
		line2 = 1 ;
		cntrl_line1 = 0;
		cntrl_line2 = 1;
		#10
		line2 = 0;
		line3 = 1 ;
		cntrl_line1 = 1;
		cntrl_line2 = 0;
		#10
		line3 = 0;
		line4 = 1 ;
		cntrl_line1 = 0;
		cntrl_line2 = 0;
		#10
		$finish;

	end
      
endmodule

