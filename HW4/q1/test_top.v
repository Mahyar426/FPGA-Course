`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:34:19 05/07/2020
// Design Name:   my_top
// Module Name:   C:/Users/Mahyar Onsori/Desktop/check nevis taklif 4/hope/q1/test_top.v
// Project Name:  q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: my_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top;

	// Inputs
	reg clk;
	reg data_valid;
	reg [3:0] data;

	// Outputs
	wire Data_valid_out;
	wire [3:0] Data_Out;

	// Instantiate the Unit Under Test (UUT)
	my_top uut (
		.clk(clk), 
		.data_valid(data_valid), 
		.data(data), 
		.Data_valid_out(Data_valid_out), 
		.Data_Out(Data_Out)
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		clk = 0;
		data_valid = 1;
		data = 0;
		#100;

		// Wait 100 ns for global reset to finish
		data_valid = 1;
		data = 0;
		#200;
		data_valid = 0;
		data = 4'b1111;
		#200;
		data_valid = 1;
		data = 4'b1101;
		#200;
		data_valid = 0;
		data = 4'b1101;
		#200;
		data_valid = 1;
		data = 4'b1001;
		#200;
		
		
		// Add stimulus here

	end
      always #10 clk=~clk;
endmodule



