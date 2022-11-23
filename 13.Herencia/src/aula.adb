package body Aula is

   procedure Mostrar_Asistentes is
   begin
      for Item of Asistentes loop
         Generic_Function(Item);
      end loop;
      
   end Mostrar_Asistentes;
   

end Aula;
