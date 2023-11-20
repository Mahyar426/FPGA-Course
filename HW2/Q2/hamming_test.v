`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:27 03/17/2020
// Design Name:   hamming_distance
// Module Name:   C:/Users/Dear User/Desktop/New folder/q2/q2/hamming_test.v
// Project Name:  q2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hamming_distance
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hamming_test;

	// Inputs
	reg [15:0] data1;
	reg [15:0] data2;
	reg start;

	// Outputs
	wire [4:0] Out;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	hamming_distance uut (
		.data1(data1), 
		.data2(data2), 
		.Out(Out), 
		.done(done), 
		.start(start)
	);

	initial begin
		// Initialize Inputs
		data1 = 45;
		data2 = 36;
		start = 1;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here

		data1 =11545;
		data2 = 31236;
		start = 1;
      #50;
		
		
		data1 = 41685;
		data2 = 21226;
		start = 1;
      #50;
		
		
	   data1 = 1878;
		data2 = 1945;
		start = 1;
      #50;
		
		
		data1 = 2020;
		data2 = 1399;
		start = 1;
      #50;
		
		
		data1 = 1024;
		data2 = 1023;
		start = 1;
      #50;
		
		
		
		data1 = 1973;
		data2 = 1352;
		start = 1;
      #50;
		
		
		data1 = 187;
		data2 = 2532;
		start = 1;
      #50;
		
		
		data1 = 504;
		data2 = 7;
		start = 1;
      #50;
		
		
		data1 = 120;
		data2 = 7;
		start = 1;
      #50;
		
		
		
		data1 = 65534;
		data2 = 2;
		start =1;
      #50;
		
		
		
		data1 = 65534;
		data2 = 2069;
		start =0;
      #50;
		
	end
      
endmodule

