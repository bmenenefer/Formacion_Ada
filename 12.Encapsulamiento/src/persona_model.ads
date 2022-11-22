with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persona_Model is

   --  Vamos a privatizar el objeto persona:
   
   --  type C_Persona is tagged record
   --  
   --     Nombre : Unbounded_String;
   --  
   --  end record;
   
   type C_Persona is tagged private;
   type Dinero is digits 2; --  Le pido a ADA que me asegure la precisión de dos decimales despues de la coma
   
   type Persona is access C_Persona'Class;
   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre:String;
                   Apellido:String;
                   Riqueza_Inicial : Dinero := 0.0) return Persona;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This:C_Persona) return String;
   function Get_Apellido(This:C_Persona) return String;
   function Get_Riqueza(This:C_Persona) return Dinero;
   procedure Set_Riqueza(This: out C_Persona;
                         Value:Dinero);
   
   --------------------------------  <Métodos>  --------------------------------
   
   procedure Saludar(This:C_Persona);
   
private
   
   type C_Persona is tagged record
       
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Riqueza : Dinero;
      
   end record;
   
end Persona_Model;
