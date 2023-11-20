`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:21:44 03/01/2020 
// Design Name: 
// Module Name:    fourbitmux 
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
module fourbitmux(
    input s_0,
    input s_1,
    input [3:0] B,
    output [3:0] muxout
    );
    wire [3:0] Bnot;
	 wire [3:0] Bminus;
	 wire [3:0] firstoutput;
	 wire [3:0] secondoutput;
	 wire [3:0] thirdoutput;
	 wire [3:0] fourthoutput;
    reg [3:0] one;
	 reg [3:0] minusone;
/*	 one=4'b0001;
	 minusone=4'b1111;*/
    not n1(w1,s_0);
	 not n2(w2,s_1);
	 //--------------------
	 and an1(w3,w1,w2);
	 and an2(w4,s_0,w2);
	 and an3(w5,w1,s_1);
	 and an4(w6,s_0,s_1);
	 //---------------------
    not n3(Bnot[0], B[0]); 
	 not n4(Bnot[1], B[1]); 
    not n5(Bnot[2], B[2]); 
    not n6(Bnot[3], B[3]); 
	 //---------------------
	 fourbitadder j1(Bnot,4'b0,1'b1,Bminus,C_B);
	 or o1(b0,Bminus[0],C_B);
	 //---------------------
	 and an5(firstoutput[0] , B[0] ,w3);
	 and an6(firstoutput[1] , B[1] ,w3);
	 and an7(firstoutput[2] , B[2] ,w3);
	 and an8(firstoutput[3] , B[3] ,w3);
	 //---------------------
	 and an9(secondoutput[0] , b0 ,w4);
	 and an10(secondoutput[1] , Bminus[1] ,w4);
	 and an11(secondoutput[2] , Bminus[2] ,w4);
	 and an12(secondoutput[3] , Bminus[3] ,w4);
	 //---------------------
    and an13(thirdoutput[0] , 1'b1 ,w5);
	 and an14(thirdoutput[1] , 1'b0 ,w5);
	 and an15(thirdoutput[2] , 1'b0 ,w5);
	 and an16(thirdoutput[3] , 1'b0 ,w5);
	 //---------------------directly put 1 into and
	 and an17(fourthoutput[0] , 1'b1 ,w6);
	 and an18(fourthoutput[1] , 1'b1 ,w6);
	 and an19(fourthoutput[2] , 1'b1 ,w6);
	 and an20(fourthoutput[3] , 1'b1 ,w6);
	 //----------------------directly put -1 into and
	 or o2(muxout[0],firstoutput[0],secondoutput[0],thirdoutput[0],fourthoutput[0]);
	 or o3(muxout[1],firstoutput[1],secondoutput[1],thirdoutput[1],fourthoutput[1]);
	 or o4(muxout[2],firstoutput[2],secondoutput[2],thirdoutput[2],fourthoutput[2]);
	 or o5(muxout[3],firstoutput[3],secondoutput[3],thirdoutput[3],fourthoutput[3]);
	 //----------------------
	 


endmodule
