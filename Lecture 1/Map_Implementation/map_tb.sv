module map_tb();
 
   int create;
   int map_new;
   int i;
   initial begin
      
   map map_new = new;
   $display("Displaying the predefined array");
   map_new.display();
     
   $display("Getting Apple ");
   create = map_new.get("Apple");  
   $display("key--->(price) for Apple: ", create);
     
   $display("Changing pineapple price: ");
   map_new.put("Pineapple", 33 );
   create = map_new.get("Pineapple");
   $display("key-->(price) for Pinapple: ", create);
      ""
   map_new.delete("Banana"); 
   $display("Deleting banana and displaying whole array");
   map_new.display();
      
   end

endmodule