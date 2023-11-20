`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:53 03/18/2020
// Design Name:   alu
// Module Name:   C:/Users/Dear User/Desktop/soal3/soal3/mytest.v
// Project Name:  soal3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mytest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg s0;
	reg s1;
	reg EN;

	// Outputs
	wire [6:0] Output;
	wire [3:0] output_in_number;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.s0(s0), 
		.s1(s1), 
		.EN(EN), 
		.Output(Output), 
		.output_in_number(output_in_number)
	);

	initial begin
		// Initialize Inputs
		a = 5;
		b = 3;
		s0 = 0;
		s1 = 0;
		EN = 1;

		// Wait 100 ns for global reset to finish
		#5;
        
		// Add stimulus here
		
		a = 12;
		b = 9;
		s0 = 1;
		s1 = 0;
		EN = 1;
      #5;
		
		
		a = 12;
		b = 9;
		s0 = 1;
		s1 = 0;
		EN = 0;
      #5;
		
		
		a = 4;
		b = 11;
		s0 = 0;
		s1 = 1;
		EN = 1;
      #5;
		
		
		
		
		a = 6;
		b = 1;
		s0 = 1;
		s1 = 1;
		EN = 1;
      #5;
		
		
		
		a = 2;
		b = 12;
		s0 = 1;
		s1 = 0;
		EN = 1;
      #5;
		
		
		
		a = 4;
		b = 13;
		s0 = 0;
		s1 = 0;
		EN = 0;
      #5;
		
		
		
		a = 4;
		b = 13;
		s0 = 0;
		s1 = 0;
		EN = 1;
      #5;
		
		
		
		a = 15;
		b = 0;
		s0 = 1;
		s1 = 1;
		EN = 1;
      #5;
		
		
		a = 14;
		b = 8;
		s0 = 0;
		s1 = 1;
		EN = 1;
      #5;
		
		
		a = 10;
		b = 5;
		s0 = 0;
		s1 = 1;
		EN = 1;
      #5;
		
		
		a = 13;
		b = 13;
		s0 = 1;
		s1 = 0;
		EN = 1;
      #5;
		
		
		a = 11;
		b = 9;
		s0 = 1;
		s1 = 1;
		EN = 0;
      #5;
	end
      
endmodule

