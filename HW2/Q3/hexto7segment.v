`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:55 03/18/2020 
// Design Name: 
// Module Name:    hexto7segment 
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
module hexto7segment(
    input [3:0] Input,
    output [6:0] OUT,
    input EN
    );


           assign OUT =((Input==4'b0000) &&  (EN==1'b1)) ? (7'b1111110):
	                    ((Input==4'b0001) &&  (EN==1'b1)) ? (7'b0110000):
							  ((Input==4'b0010) &&  (EN==1'b1)) ? (7'b1101101):
	                    ((Input==4'b0011) &&  (EN==1'b1)) ? (7'b1111001):
	                    ((Input==4'b0100) &&  (EN==1'b1)) ? (7'b0110011):
	                    ((Input==4'b0101) &&  (EN==1'b1)) ? (7'b1011011):
	                    ((Input==4'b0110) &&  (EN==1'b1)) ? (7'b1011111):
	                    ((Input==4'b0111) &&  (EN==1'b1)) ? (7'b1110000):
	                    ((Input==4'b1000) &&  (EN==1'b1)) ? (7'b1111111):
	                    ((Input==4'b1001) &&  (EN==1'b1)) ? (7'b1111011):
	                    ((Input==4'b1010) &&  (EN==1'b1)) ? (7'b1110111):
	                    ((Input==4'b1011) &&  (EN==1'b1)) ? (7'b0011111):
							  ((Input==4'b1100) &&  (EN==1'b1)) ? (7'b1001110):
	                    ((Input==4'b1101) &&  (EN==1'b1)) ? (7'b0111101):
	                    ((Input==4'b1110) &&  (EN==1'b1)) ? (7'b1001111):
							  ((Input==4'b1111) &&  (EN==1'b1)) ? (7'b1000111):(7'bzzzzzzz);

endmodule
