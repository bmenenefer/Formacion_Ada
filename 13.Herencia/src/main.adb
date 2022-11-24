with Alumno_Model; use Alumno_Model;
with Ada.Text_IO; use Ada.Text_IO;
with Aula;
with Profesor_Model; use Profesor_Model;
with Persona_Model; use Persona_Model;

procedure Main is

   --  iñigo : Alumno := create("Iñigo Montoya");
   --  Esteban : Profesor := Create("Esteban");
   --
   --  procedure Show_Alumno(A : Alumno) is
   --
   --  begin
   --     A.Presentarse;
   --  end Show_Alumno;
   --
   --  package Curso_Ada is new Aula(Cosa => Alumno,
   --                                Generic_Function => Show_Alumno);
   --  use Curso_Ada;


begin

   --  iñigo.Presentarse;
   --
   --  Esteban.Presentarse;
   --  Esteban.Dictar_Curso;
   --  Esteban.Dictar_Curso;
   --  Esteban.Dictar_Curso;
   --  Esteban.Dictar_Curso;
   --  Esteban.Mostrar_Curso;
   --
   --  Curso_Ada.Asistentes.Append(iñigo);
   --  Curso_Ada.Mostrar_Asistentes;


   declare
      Mario : Profesor := Create("Mario");
      Borja : Profesor := Create("Borja");
      Carlos : Alumno := Create("Carlos");

      Una_Persona : Persona;

   begin
      Una_Persona := Persona(Mario);
      Put_Line(Una_Persona.Get_Nombre);
      Una_Persona := Persona(Borja);
      Put_Line(Una_Persona.Get_Nombre);
      Una_Persona := Persona(Carlos);
      Put_Line(Una_Persona.Get_Nombre);
   end;




end Main;
