`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:12 02/29/2020 
// Design Name: 
// Module Name:    Lock 
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
module Lock(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    output z
    );
	 wire w1;
	 wire w2;
	 wire w3;
	 wire w4;
	 wire w5;
    not n1(w1 , b);
	 not n2(w2 , d);
	 not n3(w3 , f);
	 and a1(w4 , a , w1 , c , w2 , e , w3);
	 and a2(w5 , b , c , w2 , e , w3);
	 or o1(z , w4 , w5);

endmodule
