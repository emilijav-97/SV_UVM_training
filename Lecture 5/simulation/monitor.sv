`include "uvm_macros.svh"
import uvm_pkg::*;

class mem_monitor extends uvm_monitor;
 
  uvm_analysis_port #(mem_seq_item) item_connection;
  
  // Virtual Interface
  virtual inter_f vif;
 
  mem_seq_item trans_collected;
 
  `uvm_component_utils(mem_monitor)
 
  //constructor
  function new (string name, uvm_component parent);
    super.new(name, parent);
    trans_collected = new();
    item_connection = new("item_connection", this);
  endfunction : new
 
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual inter_f)::get(this, "", "inter_f", vif))
      `uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
  endfunction: build_phase
 
  //Run phase
  virtual task run_phase(uvm_phase phase);
    item_connection.write(trans_collected);
  endtask : run_phase
 
endclass