`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:58:33 05/07/2020
// Design Name:   Q1_2
// Module Name:   C:/Users/Mahyar Onsori/Desktop/check nevis taklif 4/hope/q1/testq2.v
// Project Name:  q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q1_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testq2;

	// Inputs
	reg IO_Select;
	reg clk;

	// Bidirs
	wire [3:0] Data_IO;

	// Instantiate the Unit Under Test (UUT)
	Q1_2 uut (
		.Data_IO(Data_IO), 
		.IO_Select(IO_Select), 
		.clk(clk)
	);

initial begin
		// Initialize Inputs
		IO_Select = 0;
		clk=0;
		Data_IO=4'b1111;
		#100;
		Data_IO=4'b1001;
		#100;
		Data_IO=4'b1011;
		#100
		Data_IO=4'b0000;
		#100;
		Data_IO=4'b1000;
		#100;
		Data_IO=4'b0001;
		#100;
        
		// Add stimulus here

	end
	
      always #10 clk=~clk;
		always #40 IO_Select=~IO_Select;
      
endmodule

