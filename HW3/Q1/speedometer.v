`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:37:58 04/04/2020 
// Design Name: 
// Module Name:    speedometer 
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
module speedometer(
    input clk,
    input pulse,
    input reset,
    output reg [7:0] out
    );
	 reg [27:0] counter;
	 reg [27:0] pulsecounter;
	 reg [29:0] speed;

always @(posedge clk) begin
       if (reset==0) begin
           if (pulse==1) begin
			       counter=counter+1;
					 pulsecounter=counter;
			  end
			  
			  if (pulse==0) begin
			      counter=0;
				
				   if (pulsecounter==0) begin
					    out=0;
					end
					if(pulsecounter!=0) begin
					    speed=10000000/pulsecounter;
						 out=speed[7:0];
					end
					end
	end	
				if(reset==1) begin
				counter=0;
				pulsecounter=0;
				out=0;
				end
				
				
				
	end
				


endmodule
