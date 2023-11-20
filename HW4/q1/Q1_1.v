`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:50:47 05/07/2020 
// Design Name: 
// Module Name:    Q1_1 
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
module Q1_1(
    input   [3:0]Data,
    input   Data_valid,
    input   clk_in,
	 output reg  IO_Select=0,
	 output reg  Data_valid_out=0,
	 output reg  [3:0]Data_Out=0,

	 output  clk_out,
	 inout  	[3:0]Data_IO
    );
	 
	 reg [3:0]storage;
	 reg comp=0;
	 assign Data_IO=IO_Select?storage:4'bz;
	 assign clk_out=clk_in;
	 always @(posedge clk_in)
		begin
		if(Data_valid==1)begin
			storage<=Data;
			comp<=comp+1'b1;
			if((comp==1)&&(IO_Select==1))
				begin
				IO_Select<=(~IO_Select);
				comp<=0;
				end
				
			if(IO_Select==0)begin
				IO_Select<=(~IO_Select);
				if(Data_IO!==4'bxxxx) begin
				Data_Out<=Data_IO;
				Data_valid_out<=1;
			   end
				if(Data_IO===4'bxxxx) begin
				Data_Out<=0;
				Data_valid_out<=0;
				end
				end
		end
		if(Data_valid==0)begin
		Data_valid_out<=0;
		end

		
		
		
		
		end
		
		endmodule
