`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:17:17 04/04/2020 
// Design Name: 
// Module Name:    reciever 
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
module reciever(
    input clk,
    input rx,
    output reg valid,
	 output reg [9:0] data,
    output reg [7:0] out
    );
	 
	 

reg [3:0] counter=0;

always @(posedge clk) begin

     if(counter<11) begin
     data[9:0]={data[8:0],rx};
	  counter=counter+1;
	  end
	  if (counter==11) begin
	  			out[7:0]=data[8:1];
	         if ({data[9],data[0]}==2'b01)
	                valid=1;
		      else
		 	          valid=0;
      end
end

endmodule
