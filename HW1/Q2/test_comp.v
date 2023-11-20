`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:06 02/29/2020
// Design Name:   fourbitcomp
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q4/Comparator/test_comp.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitcomp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_comp;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire a_bigger_total;
	wire totalequal;
	wire a_smaller_total;

	// Instantiate the Unit Under Test (UUT)
	fourbitcomp uut (
		.a(a), 
		.b(b), 
		.a_bigger_total(a_bigger_total), 
		.totalequal(totalequal), 
		.a_smaller_total(a_smaller_total)
	);

	initial begin
		// Initialize Inputs
		a = 11;
		b = 10;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
      a=10;
		b=11;
		#50;
		
		a=9;
		b=7;
		#50;
		
		a=7;
		b=9;
		#50;
		
		a=5;
		b=5;
		#50;
	end
      
endmodule

