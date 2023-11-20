`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:20:37 04/04/2020
// Design Name:   reciever
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q44/q4test3.v
// Project Name:  q44
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reciever
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q4test3;

	// Inputs
	reg clk;
	reg rx;

	// Outputs
	wire valid;
	wire [9:0] data;
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	reciever uut (
		.clk(clk), 
		.rx(rx), 
		.valid(valid), 
		.data(data), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		@(posedge clk) rx=0;
		@(posedge clk) rx=1;
		@(posedge clk) rx=0;	
		@(posedge clk) rx=1;
		@(posedge clk) rx=0;		
		@(posedge clk) rx=1;
		@(posedge clk) rx=0;
		@(posedge clk) rx=1;
		@(posedge clk) rx=0;
		@(posedge clk) rx=1;


	end
	
always #5 clk=~clk;
      
endmodule

