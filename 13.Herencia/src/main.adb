with Alumno_Model; use Alumno_Model;
with Ada.Text_IO; use Ada.Text_IO;
with Aula;
with Profesor_Model; use Profesor_Model;

procedure Main is

   iñigo : Alumno := create("Iñigo Montoya");
   Esteban : Profesor := Create("Esteban");

   procedure Show_Alumno(A : Alumno) is

   begin
      A.Presentarse;
   end Show_Alumno;

   package Curso_Ada is new Aula(Cosa => Alumno,
                                 Generic_Function => Show_Alumno);
   use Curso_Ada;


begin

   iñigo.Presentarse;

   Esteban.Presentarse;
   Esteban.Dictar_Curso;
   Esteban.Dictar_Curso;
   Esteban.Dictar_Curso;
   Esteban.Dictar_Curso;
   Esteban.Mostrar_Curso;

   Curso_Ada.Asistentes.Append(iñigo);
   Curso_Ada.Mostrar_Asistentes;



end Main;
