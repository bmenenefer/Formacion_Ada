with Rectangulo_Model; use Rectangulo_Model;
with Figura_Model; use Figura_Model;
with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

   --  Crear una clase abstracta figura (sin atributos)
   --  Crear el método abstracto Calcular_Area
   --  Crear la subclase rectángulo (Base, Altura) que herede de Figura
   --  Sobreescribir el método Calcular_Area

   Rec1 : Rectangulo := Create(Nombre => "Borja",
                               Base => 3.0,
                               Altura => 4.0);

begin
   --  Insert code here.
   --  Rec1.Set_Nombre("Victor");
   Rec1.Calcular_Area;
   Put("El área de la figura es: ");
   Rec1.Mostrar_Area;
   null;
end Main;
