`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:49 02/29/2020 
// Design Name: 
// Module Name:    twobitcomp 
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
module twobitcomp(
    input [1:0] a,
    input [1:0] b,
    output a_bigger,
    output equal,
    output a_smaller
    );
	 wire w1;
	 wire w2;
	 wire w3;
	 wire w4;
	 wire w5;
	 wire w6;
	 wire w7;
	 wire w8;
	 wire w9;
	 wire w10;
	 wire w11;
	 wire w12;


xnor x1(w1 , a[1] , b[1] );
xnor x2(w2 , a[0] , b[0] );
and an1(equal , w1 , w2);
//defining equal output
not n1 ( w3 , a[1] );
not n2 ( w4 , a[0] );
not n3 ( w5 , b[1] );
not n4 ( w6 , b[0] );
//creating not of inputs
and an2 (w7,a[1],w5);
and an3(w8,a[0],w5,w6);
and an4(w9,a[1],a[0],w6);
or o1(a_bigger,w7,w8,w9);
//defining the condition in which a>b
and an5(w10,w3,b[1]);
and an6(w11,w4,b[1],b[0]);
and an7(w12,w3,w4,b[0]);
or o2(a_smaller,w10,w11,w12);
//defining the condition in which a<b

endmodule
