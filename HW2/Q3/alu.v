`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:30 03/18/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [3:0] a,
    input [3:0] b,
    input s0,
    input s1,
    input EN,
    output [6:0] Output,
    output [3:0] output_in_number
    );

wire [3:0] wnand,wxnor,wsum,wdiff,y0,y1,y2,y3;
	 wire n0,n1,n2,n3;
	 
	 assign wsum=a+b;
	 
	 assign wdiff=(a>b) ? (a-b): (b-a);
	 
	 assign wxnor=a~^b;
	 
	 assign wnand=~(a&b);
	 
	 assign n0=~s1 & ~s0;
	 assign n1=~s1 & s0;
	 assign n2=s1 & ~s0;
	 assign n3=s1 & s0;

	assign y0 = {4{n0}} & wdiff; 
	assign y1 = {4{n1}} & wsum;
	assign y2 = {4{n2}} & wxnor; 
	assign y3 = {4{n3}} & wnand;
	
	assign output_in_number=(y0) ? y0: (y1) ? y1: (y2) ? y2:y3;
	 
   hexto7segment h1(output_in_number,Output,EN);
endmodule
