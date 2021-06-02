`include "uvm_macros.svh"
import uvm_pkg::*;

class mem_seq_item extends uvm_sequence_item;
  
  rand bit data_in;
  	   bit mem_full;      

  `uvm_object_utils_begin(mem_seq_item)
  `uvm_field_int(data_in,UVM_ALL_ON)
  `uvm_object_utils_end

  //Constructor
  function new(string name = "mem_seq_item");
    super.new(name);
  endfunction
  
endclass
