package body Utils_IO is

   procedure Swap(Left, Right: in out T) is
      Aux : T := Left;
   begin
      Left := Right;
      Right := Aux;
   end Swap;
   
   procedure Show_Vertical(Value:T) is 
      
   begin
      
      for Item of to_string(Value) loop
         put_line(Item'image);
      end loop;
      
   end Show_Vertical;
   
   
end Utils_IO;
