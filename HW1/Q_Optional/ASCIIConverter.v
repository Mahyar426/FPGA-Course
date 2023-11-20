`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:58 02/29/2020 
// Design Name: 
// Module Name:    ASCIIConverter 
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
module ASCIIConverter(
    input [7:0] inputnumber,
    output [7:0] outputnumber,
    output Cap
    );
	 wire w1;
not n2(w1 , inputnumber[5]);
buf b1(outputnumber[0] , inputnumber[0]);
buf b2(outputnumber[1] , inputnumber[1]);
buf b3(outputnumber[2] , inputnumber[2]);
buf b4(outputnumber[3] , inputnumber[3]);
buf b5(outputnumber[4] , inputnumber[4]);
buf b6(outputnumber[6] , inputnumber[6]);
buf b7(outputnumber[7] , inputnumber[7]);
buf b8(Cap , w1);
buf b9(outputnumber[5] , w1); 

endmodule
