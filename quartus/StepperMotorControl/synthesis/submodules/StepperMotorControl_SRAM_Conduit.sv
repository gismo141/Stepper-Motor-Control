// (C) 2001-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/14.0/ip/merlin/altera_tristate_conduit_bridge/altera_tristate_conduit_bridge.sv.terp#1 $
// $Revision: #1 $
// $Date: 2014/02/16 $
// $Author: swbranch $

//Defined Terp Parameters


			    

`timescale 1 ns / 1 ns
  				      
module StepperMotorControl_SRAM_Conduit (
     input  logic clk
    ,input  logic reset
    ,input  logic request
    ,output logic grant
    ,input  logic[ 0 :0 ] tcs_SRAM_OE_N
    ,output  wire [ 0 :0 ] SRAM_OE_N
    ,input  logic[ 0 :0 ] tcs_SRAM_CE_N
    ,output  wire [ 0 :0 ] SRAM_CE_N
    ,input  logic[ 1 :0 ] tcs_SRAM_BE_N
    ,output  wire [ 1 :0 ] SRAM_BE_N
    ,output logic[ 15 :0 ] tcs_SRAM_D_in
    ,input  logic[ 15 :0 ] tcs_SRAM_D
    ,input  logic tcs_SRAM_D_outen
    ,inout  wire [ 15 :0 ]  SRAM_D
    ,input  logic[ 18 :0 ] tcs_SRAM_A
    ,output  wire [ 18 :0 ] SRAM_A
    ,input  logic[ 0 :0 ] tcs_SRAM_WE_N
    ,output  wire [ 0 :0 ] SRAM_WE_N
		     
   );
   reg grant_reg;
   assign grant = grant_reg;
   
   always@(posedge clk) begin
      if(reset)
	grant_reg <= 0;
      else
	grant_reg <= request;      
   end
   


 // ** Output Pin SRAM_OE_N 
 
    reg                       SRAM_OE_Nen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   SRAM_OE_Nen_reg <= 'b0;
	 end
	 else begin
	   SRAM_OE_Nen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] SRAM_OE_N_reg;   

     always@(posedge clk) begin
	 SRAM_OE_N_reg   <= tcs_SRAM_OE_N[ 0 : 0 ];
      end
          
 
    assign 	SRAM_OE_N[ 0 : 0 ] = SRAM_OE_Nen_reg ? SRAM_OE_N_reg : 'z ;
        


 // ** Output Pin SRAM_CE_N 
 
    reg                       SRAM_CE_Nen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   SRAM_CE_Nen_reg <= 'b0;
	 end
	 else begin
	   SRAM_CE_Nen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] SRAM_CE_N_reg;   

     always@(posedge clk) begin
	 SRAM_CE_N_reg   <= tcs_SRAM_CE_N[ 0 : 0 ];
      end
          
 
    assign 	SRAM_CE_N[ 0 : 0 ] = SRAM_CE_Nen_reg ? SRAM_CE_N_reg : 'z ;
        


 // ** Output Pin SRAM_BE_N 
 
    reg                       SRAM_BE_Nen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   SRAM_BE_Nen_reg <= 'b0;
	 end
	 else begin
	   SRAM_BE_Nen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 1 : 0 ] SRAM_BE_N_reg;   

     always@(posedge clk) begin
	 SRAM_BE_N_reg   <= tcs_SRAM_BE_N[ 1 : 0 ];
      end
          
 
    assign 	SRAM_BE_N[ 1 : 0 ] = SRAM_BE_Nen_reg ? SRAM_BE_N_reg : 'z ;
        


 // ** Bidirectional Pin SRAM_D 
   
    reg                       SRAM_D_outen_reg;
  
    always@(posedge clk) begin
	 SRAM_D_outen_reg <= tcs_SRAM_D_outen;
     end
  
  
    reg [ 15 : 0 ] SRAM_D_reg;   

     always@(posedge clk) begin
	 SRAM_D_reg   <= tcs_SRAM_D[ 15 : 0 ];
      end
         
  
    assign 	SRAM_D[ 15 : 0 ] = SRAM_D_outen_reg ? SRAM_D_reg : 'z ;
       
  
    reg [ 15 : 0 ] 	SRAM_D_in_reg;
								    
    always@(posedge clk) begin
	 SRAM_D_in_reg <= SRAM_D[ 15 : 0 ];
    end
    
  
    assign      tcs_SRAM_D_in[ 15 : 0 ] = SRAM_D_in_reg[ 15 : 0 ];
        


 // ** Output Pin SRAM_A 
 
    reg                       SRAM_Aen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   SRAM_Aen_reg <= 'b0;
	 end
	 else begin
	   SRAM_Aen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 18 : 0 ] SRAM_A_reg;   

     always@(posedge clk) begin
	 SRAM_A_reg   <= tcs_SRAM_A[ 18 : 0 ];
      end
          
 
    assign 	SRAM_A[ 18 : 0 ] = SRAM_Aen_reg ? SRAM_A_reg : 'z ;
        


 // ** Output Pin SRAM_WE_N 
 
    reg                       SRAM_WE_Nen_reg;     
  
    always@(posedge clk) begin
	 if( reset ) begin
	   SRAM_WE_Nen_reg <= 'b0;
	 end
	 else begin
	   SRAM_WE_Nen_reg <= 'b1;
	 end
     end		     
   
 
    reg [ 0 : 0 ] SRAM_WE_N_reg;   

     always@(posedge clk) begin
	 SRAM_WE_N_reg   <= tcs_SRAM_WE_N[ 0 : 0 ];
      end
          
 
    assign 	SRAM_WE_N[ 0 : 0 ] = SRAM_WE_Nen_reg ? SRAM_WE_N_reg : 'z ;
        

endmodule


