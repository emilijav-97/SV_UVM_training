`include "uvm_macros.svh"
import uvm_pkg::*;

class mem_sequence extends uvm_sequence#(mem_seq_item);

  `uvm_object_utils(mem_sequence)

  //constructor
  function new(string name="mem_sequence",uvm_component parent=null);
    super.new(name);
  endfunction

  //Macro’s implementation  
  virtual task body();
    `uvm_create(req)
    `uvm_rand_send(req)
  endtask
  
endclass