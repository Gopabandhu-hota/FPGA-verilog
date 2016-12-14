`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:09 12/13/2016 
// Design Name: 
// Module Name:    D_flip_flop 
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
// D fli-flop
 module dff (q, q_bar, clk, d, rst);
  input clk, d, rst;
  output q, q_bar;
  reg q;    //Here q is defined as reg ,,as we are assigning some values to q.
  assign q_bar = ~q;
  
  always @(*) begin
  if (clk == 1) begin
     if (rst == 1'b1) begin
       q <= 0;
     end else  begin
    q <= d;
     end 
  end
  end 
endmodule  