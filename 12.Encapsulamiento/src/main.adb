with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   I�igo : Persona := Create(Nombre => "I�igo",
                              Apellido => "Montoya");
   Millon_De_Euros : constant Dinero := 1000000.00;

begin
   --  Insert code here.
   --  I�igo.Nombre := To_Unbounded_String("Juan"); --  No es buena pr�ctica, mejor realizarlo con seters.

   I�igo.Saludar;
   if I�igo.Get_Nombre = "I�igo" and I�igo.Get_Apellido = "Montoya" then
      Put_Line("�T� mataste a mi padre! Prep�rate para morir.");
   end if;
   I�igo.Set_Riqueza(1000001.00);
   Put_Line(if I�igo.Get_Riqueza > Millon_De_Euros then "Millonario" else "Pobre");

   null;
end Main;
