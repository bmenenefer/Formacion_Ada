with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   -- Numero : Integer := 20; --Inicialización al declarar.

begin

   --	Ada.Text_IO.Put_Line("Hello world!! :P");
   --	put_line("Hello World");


   --	Size_Numero := Numero'Object_Size;
   --	Put_Line("La variable Numero contiene" & Numero'Image);
   --
   --  declare
   --     --     numero : Integer := 10;
   --     nombre1 : string(1..10); --	Inicialización explícita indicando tamaño de string.
   --     nombre : string := "Esteban"; --	Inicialización implícita indicando cadena.
   --  begin
   --     nombre1 := "Borja";
   --     Put_Line("El nombre tiene" & nombre1'Length'Image & " caracteres");
   --  --     Put_Line("El número es:" & numero'Image);
   --  end;
   --  Put_Line("Ingrese su nombre.");
   --  declare
   --     nombre : String := Get_Line;
   --  begin
   --     Put_Line("Tu nombre es: " & nombre);
   --  end;

   --  declare
   --     nombre : string := Get_Line;
   --  begin
   --     if (nombre'Length > 0) then
   --        Put_Line("Hola " & Nombre);
   --     else
   --        Put_Line("No me has dicho como te llamas");
   --     end if;
   --  end;

   Put_Line("Ingrese su nombre.");

   declare
      nombre : string := Get_Line;
   begin
      --	Put_Line((if (nombre'length > 0) then ("Encantado " & Nombre) else "No me lo has dicho"));
      Put_Line((nombre > 0) ? ("Encantado " & nombre) : "No me lo has dicho")
   end;



end Main;
