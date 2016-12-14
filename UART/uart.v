`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:25 12/14/2016 
// Design Name: 
// Module Name:    uart 
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
module uart_transmitter(
    data_sent,
    tx_waveform
    );
	 output wire tx_waveform;
	 input  wire[7:0] data_sent;  //input should be defined as wire and then drive from another register.
	 reg[7:0] data;
	 reg tx_data;
	 //assign data_sent = data ;  //this is used when module is run independently.
	 
	 always @ (data_sent)
	 begin
	 data = data_sent; //this is used when module is instantiated from another module,data_sent is driven from another module
	 end
	 assign tx_waveform = tx_data;
	 initial begin
	    //data = 30 ;
		 tx_data = 1;
		 $display("%b %b %b %b %b %b %b %b ",data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]);
	 end
	 always begin
	   #100 tx_data <= 0;
		#100 tx_data <= data[0];
		#100 tx_data <= data[1];
		#100 tx_data <= data[2];
		#100 tx_data <= data[3];
		#100 tx_data <= data[4];
		#100 tx_data <= data[5];
		#100 tx_data <= data[6];
		#100 tx_data <= data[7];
		#100 tx_data <= 1;
	 end
endmodule 