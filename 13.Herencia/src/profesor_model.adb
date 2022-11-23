package body Profesor_Model is

   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : String) return Profesor is
   begin
      return new C_Profesor'(Nombre => To_Unbounded_String(Nombre),
                             Cursos_Dictados => 0);
   end Create;
                           
   ---------------------------  <Getters y Setters>  ---------------------------
   
   overriding function Get_Nombre(This : C_Profesor) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Cursos(This : C_Profesor) return Integer is
   begin
      return This.Cursos_Dictados;
   end Get_Cursos;
   
   ------------------------------------  <>  -----------------------------------
   
   procedure Mostrar_Curso(This : C_Profesor) is
      
   begin
      Put_Line("El número de cursos impartidos por " &
                 This.Get_Nombre & 
               " son " & This.Get_Cursos'image);
   end Mostrar_Curso;
   
   ------------------------------------  <>  -----------------------------------                               
   procedure Dictar_Curso(This: out C_Profesor) is
   begin
      This.Cursos_Dictados := This.Cursos_Dictados + 1;
   end Dictar_Curso;
   ------------------------------------  <>  -----------------------------------      
   overriding procedure Presentarse(This : C_Profesor) is
   begin
      Put_Line("¡Hola! Soy " & To_String(This.Nombre));
   end Presentarse;
end Profesor_Model;
