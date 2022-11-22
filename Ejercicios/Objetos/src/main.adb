with Ada.Text_IO; use Ada.Text_IO;
with Alumno_Model; use Alumno_Model;

procedure Main is

   Borja : Alumno := Create(Nombre => "Borja");

begin

   -- Crear un paquete Alumno_Model
   -- Crear la clase Alumno
   --   Nombre
   --   Vector Dinamico Generico (Ada.Containers.Vector) de Notas
   -- Tiene que tener un constructor
   -- Tiene que tener un getter para el nombre
   -- Tiene que tener un método Rendir_Examen que recibe una nota
   -- Tiene que tener un metodo Calcular_Promedio que revuelve el promedio de notas
   -- En el main un caso de prueba que verifique
   --  Insert code here.

   put_line("Hola " & Borja.Get_Nombre);
   Borja.Set_Nota;

   null;
end Main;
