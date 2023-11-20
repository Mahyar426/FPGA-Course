`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:47:18 04/05/2020
// Design Name:   speedometer
// Module Name:   C:/Users/Mahyar Onsori/Desktop/shanbe/q11/q1testforpartb.v
// Project Name:  q11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: speedometer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module q1testforpartb;

	// Inputs
	reg clk;
	reg pulse;
	reg reset;
	 reg [31:0] i;


	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	speedometer uut (
		.clk(clk), 
		.pulse(pulse), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		pulse = 0;
		reset = 0;
		
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		
		for (i=0;i<402;i=i+1)begin
		      if (i<68) begin
				  #15000000 pulse=~pulse;
				 end
				 
				 if (i>201) begin
				  #5000000 pulse=~pulse;
				 end
				 
				 if((i>=68) && (i<=201)) begin
				   #7500000 pulse=~pulse;
				end		
		end
				
   reset=1;
	i=0;	
	end
	always #12.5 clk=~clk;


      
endmodule

