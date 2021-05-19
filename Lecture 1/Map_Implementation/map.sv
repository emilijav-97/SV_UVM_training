class map;
  
   local int fruit [string];
  
   //Creating the class constructor
   function new 
      (
        int fruit [string] = '{"Apple" : 5,
                               "Pineapple" : 10,
                               "Banana" : 6}
      );    
         this.fruit = fruit;     
   endfunction
  
   //Displaying values
   function display ();
      $display("************");
      $display ("Displaying :"); 
    
      foreach (fruit[key]) begin      
         $display ( "Fruit: %S, Price: %0d", key, fruit[key]);
      end 
      $display("************");
    
   endfunction
	
   //Get function
   function int get (string key);
      if (fruit.exists(key)) begin       
         return fruit[key];
      end     
      else begin
         return 0;
      end     
   endfunction
  
   function void put(string key, int price);    
      fruit[key] = price;    
   endfunction  
  
   //Delete function
   function delete (string key);  
      if (fruit.exists(key)) begin 
         if(fruit.exists(key))        
    	    fruit.delete(key);
         return 1;
     end     
     else begin
        return 0;
     end
   endfunction
   
endclass