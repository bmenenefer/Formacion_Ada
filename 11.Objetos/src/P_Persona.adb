package body P_Persona is

   procedure Saludar(This:C_Persona) is
   begin
      Put_line("Hola " & To_String(This.Nombre) & " " & To_String(This.apellido));
   end Saludar;


end P_Persona;
