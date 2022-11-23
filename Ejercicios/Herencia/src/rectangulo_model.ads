with Figura_Model; use Figura_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Rectangulo_Model is

   type C_Rectangulo is new C_Figura with private;
   type Rectangulo is access C_Rectangulo'Class;
   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : String ;
                   Base : Integer;
                   Altura : Integer) return Rectangulo;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   overriding function Calcular_Area(This : C_Rectangulo) return String;

   
   
private
   
   type C_Rectangulo is new C_Figura with record
      
      Nombre : Unbounded_String;
      Base : Float := 0.0;
      Altura : Float := 0.0;
      Area : Float := 0.0;  
      
   end record;
   

end Rectangulo_Model;
