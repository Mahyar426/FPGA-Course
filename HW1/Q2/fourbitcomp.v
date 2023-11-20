`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:22 02/29/2020 
// Design Name: 
// Module Name:    fourbitcomp 
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
module fourbitcomp(
    input [3:0] a,
    input [3:0] b,
    output a_bigger_total,
    output totalequal,
    output a_smaller_total
    );
	 wire w1;
	 wire w2;
	 wire w3;
	 wire[1:0] abuf;
	 wire[1:0] bbuf;
    bufif1 (abuf[1],a[1],leftequal);
    bufif1 (abuf[0],a[0],leftequal);
    bufif1 (bbuf[1],b[1],leftequal);
    bufif1 (bbuf[0],b[0],leftequal);
	 
	 twobitcomp c0(a[3:2],b[3:2],aleftbigger,leftequal,aleftsmaller);
	 twobitcomp c1(abuf[1:0],bbuf[1:0],arightbigger,rightequal,arightsmaller);
    
	 and an1(w1,leftequal,arightbigger);
	 and an2(w2,leftequal,arightsmaller);
	 and an3(totalequal,leftequal,rightequal);
    or o1(a_bigger_total,w1,aleftbigger);
    or o3(a_smaller_total,w2,aleftsmaller);



endmodule
