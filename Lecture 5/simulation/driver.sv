`include "uvm_macros.svh"
import uvm_pkg::*;

class mem_driver extends uvm_driver #(mem_seq_item);
  
  `uvm_component_utils(mem_driver)
  
  // Virtual Interface handle
  virtual inter_f vif;
 
  // Constructor
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new
 
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual inter_f)::get(this, "", "inter_f", vif))
       `uvm_fatal("NO_VIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
  endfunction
  
  // run phase
  virtual task run_phase(uvm_phase phase);
    forever begin
    seq_item_port.get_next_item(req);
    drive();
    seq_item_port.item_done();
    end
  endtask : run_phase
 
  // drive
  virtual task drive();
    req.print();
    vif.valid_in <= 0;
    
    @(posedge vif.clk);
      vif.valid_in <= 0;
   
    @(posedge vif.clk);
      vif.valid_in <= 1;
      
    $display("-----------------------------------------");
  endtask : drive
 
endclass : mem_driver