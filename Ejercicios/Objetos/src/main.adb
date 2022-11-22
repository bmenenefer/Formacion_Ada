with Ada.Text_IO; use Ada.Text_IO;
with Alumno_Model; use Alumno_Model;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

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
   -- En el main un caso de prueba que verifique.

   put_line("Hola " & Borja.Get_Nombre);
   Borja.Set_Nota;
   put(Borja.Calcular_Promedio, exp => 0, Aft => 2);

   null;
end Main;
