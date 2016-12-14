`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:24 12/12/2016 
// Design Name: 
// Module Name:    pwm_simulation 
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
//////////////////////////////////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////////////////////////////////
module pwm_simulation(
    pwm
    );
	 integer  compare ;
	 reg clk;
	 output wire pwm;
	 reg pwm_q;
	 reg[9:0]  counter_d,counter_q ;
	 assign pwm = pwm_q;	  	
	 always @(counter_q) begin 
	    counter_d <= counter_q+1'b1;
	 
	 if (counter_q > compare) begin 
	     pwm_q = 1'b1;
	 end  else begin
	     pwm_q = 1'b0;
	 end 
	 end
	 
	  always  @(posedge clk) begin
	     counter_q <= counter_d;
	  end
	  
	  always begin 
	   #20 clk = !clk;
	end
	
	  initial begin
		// Initialize Inputs
		clk = 0;
		compare = 512;
		pwm_q = 0;
		counter_d =0;
		counter_q = 0;
		end

	  
endmodule

