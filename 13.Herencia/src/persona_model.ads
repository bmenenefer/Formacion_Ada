with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with io; use io;

package Persona_Model is
        
   type C_Persona is abstract tagged private;
   type Persona is access C_Persona'Class;
   
   procedure D;
      
   ------------------------------  <Constructor>  ------------------------------
   
   --  Como la clase es abstracta, no se va a tener un constructor.
   --  Las clases abstractas son para generar herencia
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This : C_Persona) return String is abstract;
   --  function Get_Cursos(This : C_Persona) return Integer;
   --  procedure Dictar_Curso(This : out C_Persona);

   --------------------------------  <Métodos>  --------------------------------
   
   procedure Presentarse(This : C_Persona) is abstract;
   --  procedure Mostrar_Curso(This : C_Persona);
   
private
   
   type C_Persona is abstract tagged record
       
      Nombre : Unbounded_String;
      
   end record;
   
end Persona_Model;
