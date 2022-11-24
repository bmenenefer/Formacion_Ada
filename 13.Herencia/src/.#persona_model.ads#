with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with io; use io;

package Persona_Model is
        
   --  type C_Persona is abstract tagged private;
   
   --  Si declaro el padre como privado, tengo que declararle al hijo los atributos
   --  ya que no es capaz de obtenerlos.
   
   type C_Persona is abstract tagged record
   
      Nombre : Unbounded_String;
   
   end record;
   
   type Persona is access all C_Persona'Class;
      
   -----------------------------  < Constructor >  -----------------------------
  
   --  Como la clase es abstracta, no se va a tener un constructor.
   --  Las clases abstractas son para generar herencia
   
   --------------------------  < Getters y Setters >  --------------------------
   
   function Get_Nombre(This : C_Persona) return String;
   procedure Set_Nombre(This : in out C_Persona;
                        Nombre : in String);
   
   -------------------------------  < Métodos >  -------------------------------
   
   
   procedure Presentarse(This : C_Persona) is abstract;
   
--  private
--  
--     type C_Persona is abstract tagged record
--  
--        Nombre : Unbounded_String;
--  
--     end record;

   -----------------------------------------------------------------------------
   
end Persona_Model;
