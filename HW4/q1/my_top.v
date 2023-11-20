`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:31:25 05/07/2020 
// Design Name: 
// Module Name:    my_top 
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
module my_top(
    input clk,
    input data_valid,
    input [3:0] data,
    output Data_valid_out,
    output [3:0] Data_Out
    );
	 wire [3:0] Data_IO;
	 wire IO_Select , clk_out;
	   Q1_1 b (
    .Data(data), 
    .Data_valid(data_valid), 
    .clk_in(clk), 
    .IO_Select(IO_Select), 
    .clk_out(clk_out), 
	 .Data_Out(Data_Out), 
    .Data_valid_out(Data_valid_out), 
    .Data_IO(Data_IO)
	 
    );
	 
	 Q1_2 a (
    .Data_IO(Data_IO), 
    .IO_Select(IO_Select), 
    .clk(clk_out)
    );
	 


endmodule
