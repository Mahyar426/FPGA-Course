`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:23 04/09/2020
// Design Name:   crc5
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q3/q3test.v
// Project Name:  q3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: crc5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q3test;

	// Inputs
	reg data_in;
	reg clk;
	reg reset_l;

	// Outputs
	wire [4:0] crc5out;

	// Instantiate the Unit Under Test (UUT)
	crc5 uut (
		.data_in(data_in), 
		.clk(clk), 
		.reset_l(reset_l), 
		.crc5out(crc5out)
	);

	initial begin
		// Initialize Inputs
		data_in = 1'b0;
		clk = 0;
		reset_l = 0;
		
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b0;
		#100;
		
		
		
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b0;
		#100;
		
		
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b0;
		#100;
		
		
		
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b0;
		@(negedge clk) data_in=1'b1;
		#100;
		
		
		
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b1;
		@(negedge clk) data_in=1'b1;
		#100;
		
        

	end
      
		always #25 clk=~clk;
		
endmodule

