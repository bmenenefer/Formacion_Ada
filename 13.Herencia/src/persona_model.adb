package body Persona_Model is

   --------------------------  < Getters y Setters >  --------------------------

   function Get_Nombre(This : C_Persona) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;

   procedure Set_Nombre(This : in out C_Persona;
                        Nombre : in String) is
   begin
      This.Nombre := To_Unbounded_String(Nombre);
   end Set_Nombre;



end Persona_Model;
