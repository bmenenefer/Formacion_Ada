with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   Iñigo : Persona := Create(Nombre => "Iñigo",
                              Apellido => "Montoya");
   Millon_De_Euros : constant Dinero := 1000000.00;

begin
   --  Insert code here.
   --  Iñigo.Nombre := To_Unbounded_String("Juan"); --  No es buena práctica, mejor realizarlo con seters.

   Iñigo.Saludar;
   if Iñigo.Get_Nombre = "Iñigo" and Iñigo.Get_Apellido = "Montoya" then
      Put_Line("¡Tú mataste a mi padre! Prepárate para morir.");
   end if;
   Iñigo.Set_Riqueza(1000001.00);
   Put_Line(if Iñigo.Get_Riqueza > Millon_De_Euros then "Millonario" else "Pobre");

   null;
end Main;
