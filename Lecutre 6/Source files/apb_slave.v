//`timescale 1ns / 1ps

//module apb_slave( input clk,
//                  input res,
//                  input [6:0] paddr,
//                  input pwrite,
//                  input psel,
//                  input enbl,
//                  input [31:0] pwdata,
//                  output slerr,
//                  output reg pready,
//                  output reg [31:0] prdata
//                );          
             
   
//  reg [1:0] apb_st;
//  parameter [1:0] SETUP=0;
//  parameter [1:0] W_ENABLE=1;
//  parameter [1:0] R_ENABLE=2;          
                
//  always @(posedge clk or posedge res) begin
//      if (res) begin
//          apb_st <= 0;
//          prdata <= 0;
//          pready <= 0;
//      end
//      else begin
//      case (apb_st)
//        SETUP: begin
//            prdata <= 0;
//            if (psel && !enbl) begin
//               if (pwrite === 1) begin
//                  apb_st <= W_ENABLE;
//               end
//               else begin
//                  apb_st <= R_ENABLE;
//                  prdata <= mem[paddr];
//               end
//            end
//        end
//        W_ENABLE: begin
//           if (psel && enbl && pwrite) begin
//              mem[paddr] <= pwdata;
//           end
//              apb_st <= SETUP;
//        end
//        R_ENABLE: begin
//          apb_st <= SETUP;
//        end
//      endcase
//    end
//  end             
//endmodule
