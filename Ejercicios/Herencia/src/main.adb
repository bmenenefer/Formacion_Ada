with Rectangulo_Model; use Rectangulo_Model;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   --  Crear una clase abstracta figura (sin atributos)
   --  Crear el método abstracto Calcular_Area
   --  Crear la subclase rectángulo (Base, Altura) que herede de Figura
   --  Sobreescribir el método Calcular_Area

   Prueba : Rectangulo := Create("Rectángulo 1", 2, 4);

begin
   --  Insert code here.
   null;
end Main;
