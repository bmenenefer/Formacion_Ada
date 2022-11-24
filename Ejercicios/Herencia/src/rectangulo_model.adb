package body Rectangulo_Model is

   -----------------------------  < Constructor >  -----------------------------
   
   function Create(Nombre : in String;
                   Base : in Float;
                   Altura : in Float) return Rectangulo is
      
   begin
      return new C_Rectangulo'(Nombre => To_Unbounded_String(Nombre),
                               Base => Base,
                               Altura => Altura,
                              Area => 0.0);
   end Create;
   
   --------------------------  < Getters y Setters >  --------------------------
   
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
   
   -----------------------------------  < >  -----------------------------------
   
   --  procedure Set_Nombre(Nombre : in String;
   --                      This : out C_Rectangulo) is
   --  begin
   --     This.Nombre := To_Unbounded_String(Nombre);
   --  end Set_Nombre;
   
   -------------------------------  < Métodos >  -------------------------------
      
   overriding procedure Calcular_Area(This : in out C_Rectangulo) is
   
   begin
      This.Area := This.Get_Base * This.Get_Altura;
   end Calcular_Area;
   
   procedure Mostrar_Nombre(This : C_Rectangulo) is
   begin
      Put_Line(This.Get_Nombre);
   end Mostrar_Nombre;
   
   procedure Mostrar_Base(This : C_Rectangulo) is
   begin
      Put(This.Get_Base, 
          Exp => 0,
          Aft => 2);
   end Mostrar_Base;
   
   procedure Mostrar_Altura(This : C_Rectangulo) is
   begin
      Put(This.Get_Altura, 
          Exp => 0,
          Aft => 2);
   end Mostrar_Altura;
   
   procedure Mostrar_Area(This : C_Rectangulo) is
   begin
      Put(This.Get_Area, 
          Exp => 0,
          Aft => 2);
   end Mostrar_Area;
   
   

end Rectangulo_Model;
