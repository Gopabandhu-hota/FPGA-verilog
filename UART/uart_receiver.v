`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:06:55 12/14/2016 
// Design Name: 
// Module Name:    uart_receiver 
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
module uart_receiver(
    tx_data_receive,
    data_bit
    );
	 integer data_received_parallel ;
	 reg[3:0]  flag;
	 input wire[7:0] tx_data_receive;
	 output 	wire data_bit;
	 reg[7:0] rx_data;
	 reg[7:0] tx_data_to_send;
	 reg[7:0] receive_buffer;
	 assign tx_data_receive = tx_data_to_send;
	 initial begin
	   flag = 0;
	   rx_data = 0;
		tx_data_to_send = 30;
		receive_buffer = 0;
		data_received_parallel  = 0;
	 end
   uart_transmitter uut(
	.tx_waveform(data_bit),
	.data_sent(tx_data_receive)
	);
	 
	 always 
	 begin
	 
	 #100
	 flag <= flag + 1;
	 if (flag >1 && flag < 10) begin
	 receive_buffer[flag-2] <= data_bit;
	 end
	 if (flag == 10) begin
	   flag <= 1 ;
		data_received_parallel <= receive_buffer ; 
		receive_buffer <= 0;
	 end
	 end
	
endmodule 