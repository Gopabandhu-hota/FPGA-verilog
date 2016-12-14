`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:48 12/14/2016
// Design Name:   uart_transmitter
// Module Name:   G:/FPGA/Modules/uart/aaa.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: uart_transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module aaa;

	// Inputs
	reg [7:0] data_sent;

	// Outputs
	wire tx_waveform;

	// Instantiate the Unit Under Test (UUT)
	uart_transmitter uut (
		.data_sent(data_sent), 
		.tx_waveform(tx_waveform)
	);

	initial begin
		// Initialize Inputs
		data_sent = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		data_sent <= 8'b10101010;

	end
      
endmodule

