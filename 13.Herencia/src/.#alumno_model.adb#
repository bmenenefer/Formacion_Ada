package body Alumno_Model is
   
   -----------------------------  < Constructor >  -----------------------------
   
   function Create(Nombre : String) return Alumno is
   begin
      return new C_Alumno'(Nombre => To_Unbounded_String(Nombre),
                          Notas => Empty_Vector);
   end Create;
                           
   --------------------------  < Getters y Setters >  --------------------------
   
   function Get_Nombre(This : C_Alumno) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   -----------------------------------  <  >  ----------------------------------   
   
   function Calcular_Promedio(This : C_Alumno) return Float is
      Sumatorio : Float := 0.0;
      Promedio : Float := 0.0;
   begin
      for Item of This.Notas loop
         Sumatorio := Sumatorio + Float(Item);
      end loop;
      Put_Line("El promedio de notas obtenidas por " & This.Get_Nombre & " es:");
      Promedio := Sumatorio/Float(This.Notas.Length);
      return Promedio;
   end Calcular_Promedio;
   
   -----------------------------------  <  >  ----------------------------------     
   
   procedure Set_Nota(This: out C_Alumno) is
      Tmp : Integer range 0..10;
   begin
      loop
         Tmp := Get_Integer_Between
           (Min => 0,
            Max => 10,
            Prompt => "¿Qué nota quieres agregar? (0 para salir)");
         exit when Tmp=0;
         This.Notas.Append(Tmp);
         --Append(This.Notas, Tmp);
      end loop;
        
   end Set_Nota;
   
   -----------------------------------  <  >  ----------------------------------
   
   procedure Presentarse(This : C_Alumno) is
   begin
      Put_Line("¡Hola! Soy " & To_String(This.Nombre));
   end Presentarse;
   
   -----------------------------------------------------------------------------      
end Alumno_Model;
