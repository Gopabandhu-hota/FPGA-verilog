`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:37:34 12/12/2016
// Design Name:   pwm_simulation
// Module Name:   G:/FPGA/pwm_simulation/pwm_test.v
// Project Name:  pwm_simulation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pwm_simulation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pwm_test;

	// Inputs
	reg clk;

	// Outputs
	wire pwm;

	// Instantiate the Unit Under Test (UUT)
	pwm_simulation uut (
		.clk(clk), 
		.pwm(pwm)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
      
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin 
	   #20 clk = !clk;
	end
endmodule

