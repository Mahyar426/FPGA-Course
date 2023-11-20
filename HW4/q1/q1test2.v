`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:15:00 05/07/2020
// Design Name:   Q1_1
// Module Name:   C:/Users/Mahyar Onsori/Desktop/check nevis taklif 4/hope/q1/q1test2.v
// Project Name:  q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q1_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q1test2;

	// Inputs
	reg [3:0] Data;
	reg Data_valid;
	reg clk_in;

	// Outputs
	wire IO_Select;
	wire Data_valid_out;
	wire [3:0] Data_Out;
	wire clk_out;

	// Bidirs
	wire [3:0] Data_IO;

	// Instantiate the Unit Under Test (UUT)
	Q1_1 uut (
		.Data(Data), 
		.Data_valid(Data_valid), 
		.clk_in(clk_in), 
		.IO_Select(IO_Select), 
		.Data_valid_out(Data_valid_out), 
		.Data_Out(Data_Out), 
		.clk_out(clk_out), 
		.Data_IO(Data_IO)
	);

	initial begin
		// Initialize Inputs
		Data = 0;
		Data_valid = 1;
		clk_in = 0;
		// Wait 100 ns for global reset to finish
		#100;
      Data = 4'b1111;
		Data_valid = 0;
		#100;
		Data = 4'b1011;
		Data_valid = 1;
		#100;
		Data = 4'b0000;
		Data_valid = 1;
		#100;
		Data = 4'b1110;
		Data_valid = 1;
		#100;
		Data = 4'b1011;
		Data_valid = 0;
		#100;

		

		// Add stimulus here
	end
always #10 clk_in=~clk_in;
endmodule

