package body Alumno_Model is

   
   ------------------------------  <Constructor>  ------------------------------
   
   function Create(Nombre:String;
                  Notas_Vacias:Integer_Array_List.Vector:=Empty_Vector) return Alumno is
   begin
      return new C_Alumno'(Nombre => To_Unbounded_String(Nombre),
                          Notas => Notas_Vacias);
      
   end Create;
   
                           
   ---------------------------  <Getters y Setters>  ---------------------------
   
   function Get_Nombre(This:C_Alumno) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
                            
   procedure Set_Nota(This:C_Alumno) is
      Tmp : Positive range 1..10;
   begin
   
      Tmp := Integer(Get_Line);
      Append(This.Notas, Tmp);
   
   end Set_Nota;
   



end Alumno_Model;
