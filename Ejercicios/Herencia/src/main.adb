with Rectangulo_Model; use Rectangulo_Model;
with Figura_Model; use Figura_Model;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   --  Crear una clase abstracta figura (sin atributos)
   --  Crear el m�todo abstracto Calcular_Area
   --  Crear la subclase rect�ngulo (Base, Altura) que herede de Figura
   --  Sobreescribir el m�todo Calcular_Area

Rec1 : Rectangulo;

begin
   --  Insert code here.
   Rec1.Set_Nombre("Borja");
   null;
end Main;
