`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:10 03/01/2020 
// Design Name: 
// Module Name:    fulladd 
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
module fulladd(
    input a,
    input b,
    input c_in,
    output s,
    output c_out
    );

    xor x1(w1,a,b);
	 xor x2(s,w1,c_in);
	 and an1(w2,a,b);
	 and an2(w3,w1,c_in);
	 or o1(c_out,w2,w3);
endmodule
