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
      
      if (Tipo'Range_Length<25) then 
         Show_Discrete;
      end if;
      
      while (not(Try_Convert(Get_Line, Temp))) loop
         Put_Line(Error);
      end loop;
      return Temp;
      
   end Get_Discrete;
   
   procedure Show_Discrete is
   begin
      Put("(");
      for Item in Tipo'First..Tipo'Last loop
         Put(To_String(Item));
         Put(if(Item/=Tipo'Last) then ", " else "");
      end loop;
      Put(")");
      Put_Line("");
   end Show_Discrete;
   
   function To_String(Item:Tipo) return String is
      
   begin
      return To_Upper(Item'image(1..1)) & To_Lower(Item'image(2..Item'image'length));
   end To_String;
     

end Generic_Io;
