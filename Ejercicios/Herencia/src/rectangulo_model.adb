package body Rectangulo_Model is

   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : Unbounded_String;
                   Base : Integer;
                   Altura : Integer) return Rectangulo is
      
   begin
      return new C_Rectangulo'(C_Figura with Nombre => To_Unbounded_String(Nombre),
                               C_Figura with Base => Float(Base),
                               C_Figura with Altura => Float(Altura));
   end Create;
   
   ---------------------------  <Métodos>  ---------------------------
      
   overriding function Calcular_Area(This : C_Rectangulo) return String is
      
   begin
      This.Area := This.Base * This.Altura;
      return To_String(This.Area);
   end Calcular_Area;
   

end Rectangulo_Model;
