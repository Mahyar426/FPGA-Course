`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:29:47 03/01/2020
// Design Name:   fourbitmux
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q3/ALU/test_mux.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitmux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux;

	// Inputs
	reg s_0;
	reg s_1;
	reg [3:0] B;

	// Outputs
	wire [3:0] muxout;

	// Instantiate the Unit Under Test (UUT)
	fourbitmux uut (
		.s_0(s_0), 
		.s_1(s_1), 
		.B(B), 
		.muxout(muxout)
	);

	initial begin
		// Initialize Inputs
		s_0 = 0;
		s_1 = 0;
		B = 4;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		s_0 = 0;
		s_1 = 1;
		B = 4;
		#50;
		
		
	   s_0 = 1;
		s_1 = 0;
		B = 4;
		#50;
		
		
		s_0 = 1;
		s_1 = 1;
		B = 4;
		#50;
	end
      
endmodule

