`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:41:15 03/01/2020
// Design Name:   fourbitadder
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q3/ALU/test_4bitadder.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_4bitadder;

	// Inputs
	reg [3:0] e;
	reg [3:0] f;
	reg carry_in;

	// Outputs
	wire [3:0] sum;
	wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	fourbitadder uut (
		.e(e), 
		.f(f), 
		.carry_in(carry_in), 
		.sum(sum), 
		.carry_out(carry_out)
	);

	initial begin
		// Initialize Inputs
		e = 7;
		f = 6;
		carry_in = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

