package body io is
   
   function Get_Non_Empty_Line
     (Prompt:String := "Ingrese un texto no vacio";
     Error:String := "Ha Ingresado un texto vacio, vuelva a intentarlo") return String is

   begin
      Put_Line(Prompt);
      Lectura_Datos : loop
         declare
            Texto : String := Get_Line;
         begin
            if (Texto'Length>0) then
               return Texto;
            end if;
            Put_Line(Error);
         end;
      end loop Lectura_Datos;
   end Get_Non_Empty_Line;
   
   function Try_Convert_Integer
     (Texto:in String;
      Texto_Como_Entero:out Integer) return Boolean is
   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
   exception
      --when Constraint_Error => return False;
      when others => return False;
   end;
   
   function Get_Integer_Between
     (Min:Integer;
      Max:Integer;
      Prompt:String := "Ingrese un numero";
      Empty_Error:String := "Texto Vacio, Vuelva a Intentar";
      Underflow_Error:String := "Numero muy chico";
      Overflow_Error:String := "Numero muy grande") return Integer is
     Result : Integer;
   begin
      loop
         Result := Get_Integer(Prompt, Empty_Error);
         if Result > Max then
           Put_Line(Overflow_Error);
         elsif Result<Min then
           Put_Line(Underflow_Error);
         else
            return Result;
         end if;
      end loop;
   end;

   function Get_Integer
     (Prompt:String := "Ingresa un numero";
      Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer is
      Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result))) loop
         Put_Line(Error);
      end loop;
      return Result;
   end Get_Integer;
   
   procedure Reemplazar(Char_To_Replace : in Character;
                        Char_New : in Character;
                        Texto : in out String) is
   
   begin
   
      for i of Texto loop
            
         if i = Char_To_Replace then
               
               i := Char_New;
               
         end if;
            
      end loop;
         
   end;
   
   function Try_Convert_Float(Texto : in String;
                              Texto_Float : out Float) return Boolean is
      
   begin
      
      Texto_Float := Float'Value(Texto);
      
      return True;
   exception
      --when Constraint_Error => return False;
      when others => return False;
        
   end;
   
   function Get_Float(Prompt:String := "Ingresa un numero";
                      Error:String := "No ha ingresado un numero, vuelva a intentarlo"; 
                      Separador_Decimales : Character := ',') return String is
      Result : Float := 0.0;
   begin
      Put_Line(Prompt);
        
      while (not(Try_Convert_Float(Get_line, Result))) loop
         Put_Line(Error);
      end loop;
      declare
         Texto_Nuevo : String := Result'image;  
      begin
         Reemplazar('.', Separador_Decimales, Texto_Nuevo);
         return Texto_Nuevo;
      end;
      
   end Get_Float;
   
   function To_String(Input : Float;
                      Cantidad_Decimales : Integer := 2;
                      Separador_Decimales : Character := ',') return String is
      
      Result :String := Integer(Float'Floor(Input))'Image 
        & Separador_Decimales 
        & Trim(Integer((Input - Float'Floor(Input)) * Float(10 ** Cantidad_Decimales))'Image, Both);      
   begin
      
      return Result;
      
   end;
   
end io;
