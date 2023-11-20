`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:20 03/01/2020 
// Design Name: 
// Module Name:    fourbitadder 
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
module fourbitadder(
    input [3:0] e,
    input [3:0] f,
    input carry_in,
    output [3:0] sum,
    output carry_out
    );
	 wire w1;
	 wire w2;
	 wire w3;
    fulladd g0(e[0],f[0],carry_in,sum[0],w1);
	 fulladd g1(e[1],f[1],w1,sum[1],w2);
    fulladd g2(e[2],f[2],w2,sum[2],w3);
    fulladd g3(e[3],f[3],w3,sum[3],carry_out);


endmodule
