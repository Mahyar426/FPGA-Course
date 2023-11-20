`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:03:38 02/29/2020
// Design Name:   Lock
// Module Name:   C:/Users/Dear User/Desktop/tamrin 1/q4/Lock/test_lock.v
// Project Name:  Lock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Lock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lock;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	Lock uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;

		// Wait 100 ns for global reset to finish
		#10;
		

		// Add stimulus here
      a = 1;
		b = 0;
		c = 1;
		d = 0;
		e = 1;
		f = 0;
		#10;
		
      a = 1;
		b = 1;
		c = 1;
		d = 0;
		e = 1;
		f = 0;
		
		#10;
		
		a = 1;
		b = 0;
		c = 1;
		d = 0;
		e = 1;
		f = 1;
		
		#10;
		
		a = 0;
		b = 1;
		c = 1;
		d = 0;
		e = 1;
		f = 0;
		#10;
		
		
		a = 0;
		b = 1;
		c = 1;
		d = 1;
		e = 1;
		f = 0;
		#10;
	end
      
endmodule

