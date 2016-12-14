`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:15:14 12/11/2016 
// Design Name: 
// Module Name:    mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux(
   line1,line2,line3,line4,cntrl_line1,cntrl_line2,output_line
    );
	 input wire line1,line2,line3,line4,cntrl_line1,cntrl_line2;
	
	 output wire  output_line;
	 assign output_line = (line1 & cntrl_line1 & cntrl_line2) |  (line2 & !cntrl_line1 & cntrl_line2) |  (line3 & cntrl_line1 & !cntrl_line2) | (line4 & !cntrl_line1 & !cntrl_line2)   ;
	 
endmodule
