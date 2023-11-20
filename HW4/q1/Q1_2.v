`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:56:17 05/07/2020 
// Design Name: 
// Module Name:    Q1_2 
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
module Q1_2(
    inout [3:0] Data_IO,
    input IO_Select,
    input clk
    );
	 reg [3:0] memory;
	 assign Data_IO=(~IO_Select)?(memory):4'bz;
	 always @(posedge clk)
		begin
		memory=(Data_IO^4'b1010);
		end
endmodule

