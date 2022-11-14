with io; use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Main is

begin

   declare

   nombre : String := Get_Non_Empty_Line("Ingresa tu nombre");
    edad : Integer := Get_Integer("Qué edad tienes?");
   begin
      Put_Line("Cuánto mide?");
      declare
         altura : string := get_line;

      begin


         reemplazar('.', ',',altura);
         put_line(altura);
         --for i of altura loop
            --
            --if i = '.' then

               --i := ',';

            --end if;

         --end loop;

         --put_line(altura);

      end;
   end;



   --  Insert code here.
   null;
end Main;
