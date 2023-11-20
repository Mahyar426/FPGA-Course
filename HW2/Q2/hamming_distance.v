`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:18:40 03/17/2020 
// Design Name: 
// Module Name:    hamming_distance 
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
module hamming_distance(
    input [15:0] data1,
    input [15:0] data2,
    output [4:0] Out,
    output done,
    input start
    );
 wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15;
	  
assign w0=(start) ? (data1[0]^data2[0]):1'bz;
assign w1=(start) ? (data1[1]^data2[1]):1'bz;
assign w2=(start) ? (data1[2]^data2[2]):1'bz;
assign w3=(start) ? (data1[3]^data2[3]):1'bz;
assign w4=(start) ? (data1[4]^data2[4]):1'bz;
assign w5=(start) ? (data1[5]^data2[5]):1'bz;
assign w6=(start) ? (data1[6]^data2[6]):1'bz;
assign w7=(start) ? (data1[7]^data2[7]):1'bz;
assign w8=(start) ? (data1[8]^data2[8]):1'bz;
assign w9=(start) ? (data1[9]^data2[9]):1'bz;
assign w10=(start) ? (data1[10]^data2[10]):1'bz;
assign w11=(start) ? (data1[11]^data2[11]):1'bz;
assign w12=(start) ? (data1[12]^data2[12]):1'bz;
assign w13=(start) ? (data1[13]^data2[13]):1'bz;
assign w14=(start) ? (data1[14]^data2[14]):1'bz;
assign w15=(start) ? (data1[15]^data2[15]):1'bz;
    
assign Out=(start) ? (w0+w1+w2+w3+w4+w5+w6+w7+w8+w9+w10+w11+w12+w13+w14+w15):5'bzzzzz;

assign done=(start) ? 1'b1:1'bz;


endmodule
