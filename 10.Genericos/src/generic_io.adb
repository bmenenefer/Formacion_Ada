package body Generic_Io is
   
   
   function Try_Convert(Input : in String;
                        Output : out Tipo) return Boolean is
      
   begin
      Output := Tipo'Value(Input);
      return True;
   exception
         when others => return False;
   end Try_Convert;
   
   function Get_Discrete(Prompt : String := Default_Prompt;
                         Error : String := Default_Error) return Tipo is
      
   Temp : Tipo;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert(Get_Line, Temp))) loop
         Put_Line(Error);
      end loop;
      return Temp;
      
   end Get_Discrete;
   

end Generic_Io;
