`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:44:49 03/01/2020
// Design Name:   myALU
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q3/ALU/test_final.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: myALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_final;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg s_0;
	reg s_1;

	// Outputs
	wire [3:0] outsum;
	wire C_out;

	// Instantiate the Unit Under Test (UUT)
	myALU uut (
		.A(A), 
		.B(B), 
		.s_0(s_0), 
		.s_1(s_1), 
		.outsum(outsum), 
		.C_out(C_out)
	);

	initial begin
		// Initialize Inputs
		A = 7;
		B = 3;
		s_0 = 0;
		s_1 = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		A = 0;
		B = 6;
		s_0 = 1;
		s_1 = 1;
		#50;
		
		
		A = 4;
		B = 7;
		s_0 = 0;
		s_1 = 1;
		#50;
		
		
	   A = 11;
		B = 6;
		s_0 = 1;
		s_1 = 0;
		#50;
	end
      
endmodule

