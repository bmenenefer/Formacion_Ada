with Figura_Model; use Figura_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package Rectangulo_Model is

   type C_Rectangulo is new C_Figura with private;
   type Rectangulo is access C_Rectangulo'Class;
   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : String;
                   Base : Integer;
                   Altura : Integer) return Rectangulo;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This : C_Rectangulo) return String;
   function Get_Base(This : C_Rectangulo) return String;
   function Get_Altura(This : C_Rectangulo) return String;
   function Get_Area(This : C_Rectangulo) return String;
   
   procedure Set_Nombre(Nombre : in String;
                       This : out C_Rectangulo);
   
   ---------------------------  <Métodos>  ---------------------------
   
   overriding procedure Calcular_Area(This : in out C_Rectangulo);

   
   
private
   
   type C_Rectangulo is new C_Figura with record
      
      Nombre : Unbounded_String;
      Base : Float := 0.0;
      Altura : Float := 0.0;
      Area : Float := 0.0;  
      
   end record;
   

end Rectangulo_Model;
