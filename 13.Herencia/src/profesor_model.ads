with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with io; use io;
with Persona_Model; use Persona_Model;

package Profesor_Model is
        
   type C_Profesor is new C_Persona with private;
   type Profesor is access C_Profesor'Class;
   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : String) return Profesor;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   overriding function Get_Nombre(This : C_Profesor) return String;
   function Get_Cursos(This : C_Profesor) return Integer;
   procedure Dictar_Curso(This : out C_Profesor);

   --------------------------------  <Métodos>  --------------------------------
   
   procedure Presentarse(This : C_Profesor);
   procedure Mostrar_Curso(This : C_Profesor);
   
private
   
   type C_Profesor is new C_Persona with record
       
      Nombre : Unbounded_String;
      Cursos_Dictados : Integer := 0;
      
   end record;
   
end Profesor_Model;
