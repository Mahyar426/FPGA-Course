`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:36 03/17/2020
// Design Name:   barrelSR
// Module Name:   C:/Users/Dear User/Desktop/New folder/Q1/barrelshiftregister/barrel_test.v
// Project Name:  barrelshiftregister
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrelSR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_test;

	// Inputs
	reg ctrl;
	reg [2:0] shift_mag;
	reg [7:0] INPUT;

	// Outputs
	wire [7:0] OUTPUT;

	// Instantiate the Unit Under Test (UUT)
	barrelSR uut (
		.ctrl(ctrl), 
		.shift_mag(shift_mag), 
		.INPUT(INPUT), 
		.OUTPUT(OUTPUT)
	);

	initial begin
		// Initialize Inputs
		ctrl = 0;
		shift_mag = 011;
		INPUT = 11000111;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		ctrl = 0;
		shift_mag = 001;
		INPUT = 11000010;
		#50;
		
		ctrl = 0;
		shift_mag = 101;
		INPUT = 111000001;
		#50;
		
		ctrl = 0;
		shift_mag = 111;
		INPUT = 11110000;
		#50;
		
		ctrl = 1;
		shift_mag = 010;
		INPUT = 11110000;
		#50;
		
		ctrl = 1;
		shift_mag = 100;
		INPUT = 11110000;
		#50;
		
		ctrl = 1;
		shift_mag = 110;
		INPUT = 10011001;
		#50;
		
		ctrl = 1;
		shift_mag = 0;
		INPUT = 11001100;
		#50;

		ctrl = 1;
		shift_mag = 101;
		INPUT = 11001110;
		#50;

		ctrl = 0;
		shift_mag = 011;
		INPUT = 11001110;
		#50;



	end
      
endmodule

