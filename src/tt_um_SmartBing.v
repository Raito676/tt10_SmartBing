/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_SmartBing (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n  
    
    // reset_n - low to reset
);
    counter#(.bits(8)) c (
        .Su (in_(2));
        .Lh (in_(7));
        .Ll (in_(9));
        .M (out_(6));
        .Fh (out_(3));
        .Fl (out_(8));
        .A (out_(10));
    );

        
  // All output pins must be assigned. If not used, assign to 0.
    assign uo_out[1:0] = 2'00;  // Example: ou_out is the sum of ui_in and uio_in
    assign uio_out[6:0] = 6'000000;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
    wire _unused = &{ena, clk, rst_n, uo_out[0:1], uio_out[0:6]};

endmodule
