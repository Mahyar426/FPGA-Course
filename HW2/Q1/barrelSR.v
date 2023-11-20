`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:49 03/17/2020 
// Design Name: 
// Module Name:    barrelSR 
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
module barrelSR(
    input ctrl,
    input [2:0] shift_mag,
    input [7:0] INPUT,
    output [7:0] OUTPUT
    );
/*when ctrl is 0 we have shift to right and when it is 1 we have shift to left */
assign OUTPUT = ({ctrl,shift_mag}==4'b0000)? (INPUT[7:0]):
                ({ctrl,shift_mag}==4'b0001)? {INPUT[0],INPUT[7:1]}:
					 ({ctrl,shift_mag}==4'b0010)? {INPUT[1:0],INPUT[7:2]}:
					 ({ctrl,shift_mag}==4'b0011)? {INPUT[2:0],INPUT[7:3]}:
				 	 ({ctrl,shift_mag}==4'b0100)? {INPUT[3:0],INPUT[7:4]}:
				 	 ({ctrl,shift_mag}==4'b0101)? {INPUT[4:0],INPUT[7:5]}:
					 ({ctrl,shift_mag}==4'b0110)? {INPUT[5:0],INPUT[7:6]}:
					 ({ctrl,shift_mag}==4'b0111)? {INPUT[6:0],INPUT[7]}:
					 ({ctrl,shift_mag}==4'b1000)? (INPUT[7:0]):
					 ({ctrl,shift_mag}==4'b1001)? {INPUT[6:0],INPUT[7]}:
					 ({ctrl,shift_mag}==4'b1010)? {INPUT[5:0],INPUT[7:6]}:
					 ({ctrl,shift_mag}==4'b1011)? {INPUT[4:0],INPUT[7:5]}:
					 ({ctrl,shift_mag}==4'b1100)? {INPUT[3:0],INPUT[7:4]}:
					 ({ctrl,shift_mag}==4'b1101)? {INPUT[2:0],INPUT[7:3]}:
					 ({ctrl,shift_mag}==4'b1110)? {INPUT[1:0],INPUT[7:2]}: {INPUT[0],INPUT[7:1]};
					 
					 
				
endmodule
