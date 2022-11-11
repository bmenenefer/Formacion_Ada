with ada.Text_IO; use ada.text_io;

procedure Main is


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

   function Get_Integer_Between(Min:Integer;
                                Max:Integer;
                                Prompt:String:="Ingrese un número";
                                Empty_Error:String:="Texto vacío, vuelva a intentarlo";
                                Underflow_Error:String:="Numero muy pequeño";
                                Overflow_Error:String:="Numero muy grande") return Integer is
      Result : Integer;
      begin
         loop

            Result := Get_Integer(Prompt, Empty_Error);
            if Result > Max then
               put_line(Overflow_Error);
            elsif Result < Min then
               put_line(Underflow_Error);
            else
               return Result;
            end if;

         end loop;


      end Get_Integer_Between;



   function Try_Convert_Integer(Texto : in String;
                               Texto_Int : out Integer) return Boolean is
      --  Coge un texto y
   begin
      Texto_Int := Integer'Value(Texto);
      return true;
   exception
         when others => return False;

   end Try_Convert_Integer;

   function Get_Non_Empty_Line(Prompt : String := "Ingrese un texto no vacío";
                               Error : string := "No has introducido texto") return string is

   begin

      put_line(Error);
      put_line(Prompt);

      declare

         cadena : string := Get_Line;


      begin
         loop
            put_line(Error);
            put_line(Prompt);
            cadena := Get_Line;
            exit when (cadena'length > 0);
         end loop;

         return cadena;

         end;

   end Get_Non_Empty_Line;

begin
   --  Insert code here.

   declare

      numero : Integer;

   begin

      numero := Get_Integer ("Ingrese su edad");

   end;




   --_line("Ingrese su nombre:");
   --  put_line("Ingrese su edad: ");
   --  declare
   --     Edad : Integer := 0;
   --  begin
   --     if Try_Convert_Integer(Get_Line, Edad) then
   --            Put_Line("Tienes " & Edad'Image);
   --     else
   --            Put_Line("No ingresaste un número");
   --     end if;
   --  end;


   --  declare
   --     Nombre : String := Get_Line;  --  Declaración implícita
   --  begin
   --
   --     if Nombre'length = 0 then
   --        Nombre := Get_Non_Empty_Line;
   --
   --     End if;
   --     put_line("Hola " & Nombre);
   --  end;

   null;
end Main;
