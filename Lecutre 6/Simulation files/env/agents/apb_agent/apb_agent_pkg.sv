`ifndef APB_AGENT_PKG
`define APB_AGENT_PKG


package apb_agent_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

`include "apb_sequence_item.sv"
`include "apb_sequence.sv"
`include "apb_sequencer.sv"
`include "apb_driver.sv"
`include "apb_monitor.sv"
`include "apb_agent.sv"

endpackage
`endif
