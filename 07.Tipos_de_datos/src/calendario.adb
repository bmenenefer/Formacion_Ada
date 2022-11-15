package body calendario is

   procedure Mostrar_Dias is
   begin
      for c in Dia_Semana loop
         case c is
            when Sa..Dom =>
               put_line(c'image & " es fin de semana");
            when others =>
               put_line(c'image & " es dia laborable");
         end case;
      end loop;
   end Mostrar_Dias;
   
   

   procedure Mostrar_Meses is
   begin
      for c in Meses loop
         case c is
         
         when Diciembre..Febrero =>
            put_line("En " & c'image & " esás en: " & Invierno'image);
            
         when Marzo..Mayo =>
            put_line("En " & c'image & " esás en: " & Primavera'image);
            
         when Junio..Agosto =>
            put_line("En " & c'image & " esás en: " & Verano'image);
            
         when Septiembre..Noviembre =>
            put_line("En " & c'image & " esás en: " & Otoño'image);
            
         end case;
      end loop;
   end Mostrar_Meses;
   
   function To_String(Date : Fecha) return String is
      
   begin
      return (Date.dia'image & "/" & Date.mes'image & "/" & Date.año'image);
   end To_String;
   
   
   
       


end calendario;
