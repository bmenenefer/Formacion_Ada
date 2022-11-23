package body Persona_Model is

   
   ------------------------------  <Constructor>  ------------------------------
   
   --  function Create(Nombre : String) return Persona is
   --  begin
   --     return new C_Persona'(Nombre => To_Unbounded_String(Nombre),
   --                         Cursos_Dictados => 0);
   --  end Create;
                           
   ---------------------------  <Getters y Setters>  ---------------------------
   
   --  function Get_Nombre(This : C_Persona) return String is
   --  begin
   --     return To_String(This.Nombre);
   --  end Get_Nombre;
   --  
   --  function Get_Cursos(This : C_Persona) return Integer is
   --  begin
   --     return This.Cursos_Dictados;
   --  end Get_Cursos;
   
   ------------------------------------  <>  -----------------------------------
   
   --  procedure Mostrar_Curso(This : C_Persona) is
   --  
   --  begin
   --     Put_Line("El número de cursos impartidos por " &
   --                This.Get_Nombre &
   --              " son " & This.Get_Cursos'image);
   --  end Mostrar_Curso;
   
   ------------------------------------  <>  -----------------------------------                               
   --  procedure Dictar_Curso(This: out C_Persona) is
   --  begin
   --     This.Cursos_Dictados := This.Cursos_Dictados + 1;
   --  end Dictar_Curso;
   ------------------------------------  <>  -----------------------------------      
   --  procedure Presentarse(This : C_Persona) is
   --  begin
   --     Put_Line("¡Hola! Soy " & This.Get_Nombre);
   --  end Presentarse;
   
   ------------------------------------  <>  -----------------------------------
   
   procedure D is
      
   begin
      null;
   end D;
   
end Persona_Model;
