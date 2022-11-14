with io; use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

begin

   declare

      nombre : String := Get_Non_Empty_Line("Ingresa tu nombre");
      edad : Integer := Get_Integer("Qué edad tienes?");
      altura : Float;
   begin
      Put_Line("Cuánto mide?");
      Get(altura);
      Put(altura, exp => 0);
   end;

   --  Insert code here.
   null;
end Main;
