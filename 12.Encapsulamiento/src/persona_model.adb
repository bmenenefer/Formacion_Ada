package body Persona_Model is

   procedure Saludar(This:C_Persona) is
   begin
      Put_line("Hola, me llamo " & This.Get_Nombre & " " & This.Get_Apellido);
   end Saludar;
   
   ----------  "Constructor"  ----------
   
   function Create(Nombre:String;
                   Apellido:String;
                   Riqueza_Inicial:Dinero:=0.0) return Persona is
      
   begin
      return new C_Persona'(Nombre => To_Unbounded_String(Nombre),
                            Apellido => To_Unbounded_String(Apellido),
                            Riqueza => Riqueza_Inicial);
   end Create;
   
   ----------  Getters y Setters:  ----------
   
   function Get_Nombre(This:C_Persona) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Apellido(This:C_Persona) return String is
   begin
      return To_String(This.Apellido);
   end Get_Apellido;
   
   function Get_Riqueza(This:C_Persona) return Dinero is
   begin
      return Dinero(This.Riqueza);
   end Get_Riqueza;
   
   procedure Set_Riqueza(This: out C_Persona;
                         Value:Dinero) is
   begin
      This.Riqueza := Value;
   end Set_Riqueza;
   

end Persona_Model;
