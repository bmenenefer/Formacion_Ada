with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Main is

begin
   --  Insert code here.
   --  declare
   --     Default_Mayoria_Edad : Constant Integer := 18;
   --     Default_Jubilado : Constant Integer := 60;
   --     Edad:Integer;
   --  begin
   --     Put_Line("Ingrese su edad:");
   --     --Get(edad);
   --     Edad := Integer'Value(get_line);
   --     --	Put_Line ("Su edad es:" & edad'Image);
   --     if (Edad > Default_Jubilado) then
   --        Put_Line("Usted es un jubilado.");
   --     elsif (Edad in Default_Mayoria_Edad..Default_Jubilado) then
   --        	Put_Line("Usted es mayor de edad.");
   --     else
   --        Put_Line("Usted es menor de edad.");
   --     end if;
   --
   --  end;

   --	Pedirle al usuario un numero y decir si es par o impar
   --  declare
   --     edad:integer;
   --  begin
   --     Put_line("Ingrese su edad:");
   --     edad:=integer'value(Get_Line);
   --     Edad := Edad mod 2;
   --     Put_Line(Edad'Image);
   --     Put_Line(if((Edad=0) then 'El número es par.' else 'El número es impar.'));
   --     --  if(Edad = 0) then
   --     --     Put_line("El número es par.");
   --     --  else
   --     --     Put_line("El número es impar.");
   --     --  end if;
   --
   --  end;

   --  declare
   --  begin
   --     put_line("Vamos a contar hasta 10.");
   --     for i in reverse 1..10 loop
   --        delay 1.0;
   --        put_line(i'image);
   --     end loop;
   --     put_line("Despegue!!!!");
   --  end;

   --  Preguntar al usuario el nombre y cuantas veces quiere que le salude.
   --  Saludar N veces.

   --  declare
   --     nombre:string:= get_line;
   --     n_saludos:Integer;
   --  begin
   --     get(n_saludos);
   --
   --     for i in 1..n_saludos loop
   --        delay 0.25;
   --        put_line("¡Encantado " & nombre & "!");
   --     end loop;
   --
   --  end;

   --  declare
   --     N : Integer;
   --     --N1 : integer;
   --  begin
   --     Put_line("Ingrese un número:");
   --     Get(N);
   --     while(N>0) loop
   --       N := N/2;
   --        put_line("Dividido entre 2 es " & N'image);
   --     end loop;
   --  end;

   --  Preguntar al usuario un número hasta que el usuario ingrese
   --  un 0. Mostrar la sumatoria de números.

   --  declare
   --     n:integer;
   --     suma:integer;
   --  begin
   --     n:=1;
   --     suma:=0;
   --     while(n/=0) loop
   --        get(n);
   --        suma:=suma+n;
   --        put_line(suma'image);
   --     end loop;
   --  end;

   --  declare
   --     numero:integer;
   --     total:integer:=0;
   --  begin
   --     loop
   --        put_line("Di un numero para sumar. 0 para terminar.");
   --        get(numero);
   --        exit when (numero=0);
   --        total:=total+numero;
   --        exit when (total >= 50);
   --     end loop;
   --     put_line("La suma total es: " & total'image);
   --  end;




   --  Preguntar al usuario el nombre y saludarlo
   --  hasta que el usuario ingrese un string vacío.
   --  declare
   --
   --  begin
   --     loop
   --        put_line("¿Cómo te llamas?");
   --        declare
   --           nombre:string:=get_line;
   --        begin
   --           exit when(nombre'Length=0);
   --           put_line("Hola " & nombre);
   --        end;
   --
   --     end loop;
   --
   --  end;

   --  declare
   --     numero:integer;
   --  begin
   --     put_line("Cuantas veces quiere que te salude?");
   --     numero:=integer'value(get_line);
   --     put_line(numero * "Hola guapo");
   --  end;

   --  declare
   --     nota : integer;
   --  begin
   --     put_line("Ingrese su nota del examen");
   --     nota:=integer'value(get_line);
   --
   --     case nota is
   --        when 0 => put_line("Examen copiado. Hable con el rector");
   --        when 1..4 => put_line("Suspenso");
   --        when 5 => put_line("Aprobado con lo justo");
   --        when 6 | 7 => Put_line("Aprobado");
   --        when 8 | 9 => put_line("Muy bien");
   --        when 10 => put_line("Excelente");
   --        when others => put_line("Fuera de rango");
   --        end case;
   --  end;

  null;
end Main;
