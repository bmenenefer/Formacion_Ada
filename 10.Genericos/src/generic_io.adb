package body Generic_Io is
   
   function Try_Convert(Input : in String;
                        Output : out Tipo) return Boolean is
      
   begin
      Output := Tipo'Value(Input);
      return True;
   exception
         when others => return False;
   end Try_Convert;
     

end Generic_Io;
