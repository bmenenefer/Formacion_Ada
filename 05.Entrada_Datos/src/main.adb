with ada.Text_IO; use ada.text_io;

procedure Main is

   function Get_Non_Empty_Line() return string is

   begin

      loop
         put_line("No has introducido texto.");
         put_line("Por favor, introduce tu nombre.");
         declare
           cadena : string := Get_Line;
         begin
            null;
         end;
         exit when cadena'length /= 0;
      end loop;
      return cadena;
   end;

begin
   --  Insert code here.

   put_line("Ingrese su nombre:");

   declare
      Nombre : String := Get_Line;  --  Declaración implícita
   begin

      if Nombre'length = 0 then
         Nombre := Get_Non_Empty_Line();

      End if;
      put_line("Hola " & Nombre);
   end;

   null;
end Main;
