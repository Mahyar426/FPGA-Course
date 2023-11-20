`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:42:51 03/01/2020 
// Design Name: 
// Module Name:    myALU 
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
module myALU(
    input [3:0] A,
    input [3:0] B,
    input s_0,
    input s_1,
    output [3:0] outsum,
    output C_out
    );
	 wire[3:0] muxout;
    fourbitmux t0(s_0,s_1,B,muxout);
	 fourbitadder t1(A,muxout,1'b0,outsum,C_out);

endmodule
