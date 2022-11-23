with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with io; use io;

package Alumno_Model is
   
   --  package Integer_Array_List is new Ada.Containers.Vectors
   --    (Element_Type => Integer,
   --     Index_Type => Positive); use Integer_Array_List;
   --  use Integer_Array_List;
     
   type C_Alumno is tagged private;
   type Alumno is access C_Alumno'Class;
   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : String) return Alumno;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This : C_Alumno) return String;
   procedure Set_Nota(This : out C_Alumno);
   function Calcular_Promedio(This : C_Alumno) return Float;
   procedure Presentarse(This : C_Alumno);
   
  


   
   --------------------------------  <Métodos>  --------------------------------
   
   --  procedure Saludar(This:C_Alumno);
   
private
   
   package Lista_Notas is new Ada.Containers.Vectors
     (Element_Type => Integer,
      Index_Type => Positive); use Lista_Notas;
   use Lista_Notas;
   
   type C_Alumno is tagged record
       
      Nombre : Unbounded_String;
      Notas : Lista_Notas.Vector := Empty_Vector;
      
   end record;

end Alumno_Model;
