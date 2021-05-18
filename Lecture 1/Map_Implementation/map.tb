class map;
  
   int fruit [string];
  
  //Displaying values
   function display ();
     
      $display ("Displaying :"); 
    
      foreach (fruit[key]) begin      
         $display ( "Fruit: %S, Price: %0d", key, fruit[key]);
       end  
    
   endfunction
	
   //Creating the class constructor
   function new 
      (
        int fruit [string] = '{"Apple" : 5,
                               "Pineapple" : 10,
                               "Banana" : 6}
      );    
         this.fruit = fruit;     
   endfunction
    
   //Get function
   function int get (string key);
     
      return fruit[key]; 
     
   endfunction
  
   //Put function
   function put (string key, int value); 
     
      if (fruit.exists(key)) begin
        
         return 0;
        
      end
      else begin
        
         fruit[key] = value;
         return 1;
        
      end
     
    endfunction
  
    //Delete function
    function delete (string key);  
     
      if (fruit.exists(key)) begin 
        
         fruit.delete(key);
         return 1;
        
      end
      else begin
        
         return 0;
        
      end
     
    endfunction
   
endclass