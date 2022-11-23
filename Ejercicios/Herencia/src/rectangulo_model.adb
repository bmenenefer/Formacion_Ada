package body Rectangulo_Model is

   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre : in String;
                   Base : in Integer;
                   Altura : in Integer) return Rectangulo is
      
   begin
      return new C_Rectangulo'(Nombre => To_Unbounded_String(Nombre),
                               Base => Float(Base),
                               Altura => Float(Altura),
                              Area => 0.0);
   end Create;
   
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This : C_Rectangulo) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Base(This : C_Rectangulo) return Float is
   begin
      return This.Base;
   end Get_Base;
   
   function Get_Altura(This : C_Rectangulo) return Float is
   begin
      return This.Altura;
   end Get_Altura;
   
   function Get_Area(This : C_Rectangulo) return Float is
   begin
      return This.Area;
   end Get_Area;
   
   procedure Set_Nombre(Nombre : in String;
                       This : in out Recta) return Rectangulo is
   begin
      This.Nombre := To_Unbounded_String(Nombre);
   end Set_Nombre;
   
   
   ---------------------------  <Métodos>  ---------------------------
      
   overriding procedure Calcular_Area(This : in out C_Rectangulo) is
   
   begin
      This.Area := This.Base * This.Altura;
   end Calcular_Area;
   

end Rectangulo_Model;
