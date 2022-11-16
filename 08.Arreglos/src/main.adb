with io; use io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;




procedure Main is

begin

   --  declare
   --     type Arreglo_Numeros is array (1..3) of Positive;
   --     Numeros : Arreglo_Numeros;
   --     Aun_mas_numero : Arreglo_Numeros := (10, 20, 30);
   --     Mas_numeros : Arreglo_Numeros := (2 => 100, others => 3);
   --  begin
   --     Numeros(1) := 3;
   --     Numeros(2) := 5;
   --     Numeros(3) := 8;
   --
   --     --  for n in Numeros'range loop
   --     --     for c of Numeros(n)'image loop
   --     --        if c /= ' ' then
   --     --           put(c);
   --     --        end if;
   --     --     end loop;
   --     --     put_line(" ");
   --     --     --put_line(Numeros(n)'image);
   --     --  end loop;
   --
   --     for c of Mas_numeros loop
   --        for d of c'image loop
   --           if d /= ' ' then
   --              put(d);
   --           end if;
   --        end loop;
   --        put_line(" ");
   --     end loop;
   --
   --     --  for c in Mas_numeros'first..Mas_numeros'last loop
   --     --    Otra forma de recorrer un arreglo
   --     --  end loop;
   --
   --  end;

   --  Declarar un tipo Nota que permita almacenar las notas de los exámenes
   --  Preguntar al alumno cuántos exámenes tuvo
   --  Declarar un arreglo para almacenar sus exámenes
   --  Preguntarle uno a uno la nota de los mismos (y almacenarlo (casteo))

   --  declare
   --     type Nota is new Integer range 1..10;
   --     type Examenes is Array(1..Get_Integer("¿Cuántos examenes has tenido?")) of Nota;
   --     Lista_Examenes : Examenes;
   --  begin
   --
   --     for c in Lista_Examenes'range loop
   --        Lista_Examenes(c) := Nota(Get_Integer_Between(Integer(Nota'First),
   --                                                      Integer(Nota'Last),
   --                                                      "¿Qué nota sacaste en el examen" & c'image & "?"));
   --     end loop;
   --     put_line("Has sacado las siguientes notas:");
   --     for c in Lista_Examenes'range loop
   --        put_line("Examen"& c'image & ":" & Lista_Examenes(c)'image);
   --     end loop;
   --
   --
   --  end;

   --  Rehacer el ejercicio de las notas pero con unconstrained arrays

   declare
      type Nota is new Integer range 1..10;
      type Nota_Promedio is new Float;
      type Examenes is Array(positive range <>) of Nota with Default_Component_Value => 10;
      Lista_Examenes : Examenes(1..Get_Integer("¿Cuantos exámenes has tenido?"));

      procedure Cargar_Notas(Lista : out Examenes) is

      begin
         for c in Lista'range loop

            Lista(c) := Nota(Get_Integer_Between(
                                      Integer(Nota'First),
                                      Integer(Nota'Last),
                                      "¿Qué nota sacaste en el examen" & c'image & "?"));
         end loop;

      end Cargar_Notas;

      procedure Mostrar_Notas(Lista : Examenes) is

      begin
         put_line("Has sacado las siguientes notas:");
         for c in Lista'range loop
            put_line("Examen"& c'image & ":" & Lista(c)'image);
         end loop;
      end Mostrar_Notas;

      function Mostrar_Nota_Mas_Alta(Lista : in Examenes) return Nota is
         Nota_Max : nota := 1;
         nota_ant : nota := 1;
      begin
         put_line("La nota más alta es: ");
         for c of Lista loop
           if c >= nota_ant then
               Nota_Max := c;
            end if;
         end loop;
         return Nota_Max;
      end Mostrar_Nota_Mas_Alta;

      function Promedio(Lista : in Examenes) return Nota_Promedio is
         Suma : Nota_Promedio := 0.0;
      begin
         Put_Line("Tu promedio de notas es: ");
         for C of Lista loop
            Suma := Nota_Promedio(c) + Suma;
         end loop;
         return Suma/Nota_Promedio((Lista'length));
      end Promedio;



   begin

      --  for c in Lista_Examenes'range loop
      --     Lista_Examenes(c) := Nota(Get_Integer_Between(Integer(Nota'First),
      --                                                   Integer(Nota'Last),
      --                                                   "¿Qué nota sacaste en el examen" & c'image & "?"));
      --  end loop;
      Cargar_Notas(Lista_Examenes);
      Mostrar_Notas(Lista_Examenes);
      put_Line(Mostrar_Nota_Mas_Alta(Lista_Examenes)'image);
      put_Line(Promedio(Lista_Examenes)'image);

      --  put_line("Has sacado las siguientes notas:");
      --  for c in Lista_Examenes'range loop
      --     put_line("Examen"& c'image & ":" & Lista_Examenes(c)'image);
      --  end loop;
   end;

   --  declare
   --     type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     subtype Fin_de_Semana is Dias_Semana range Sabado..Domingo;
   --
   --     --  function "+" (Input : in String) return Unbounded_String is
   --     --
   --     --  begin
   --     --     return To_Unbounded_String(Input);
   --     --  end;
   --
   --     function C(Input : in String) return Unbounded_String renames To_Unbounded_String;
   --
   --
   --     Dias_en_Ingles : Array (Dias_Semana) of Unbounded_String := (C("Monday"),
   --                                                                  C("Tuesday"),
   --                                                                  C("Wednesday"),
   --                                                                  C("Thrusday"),
   --                                                                  C("Friday"),
   --                                                                  C("Saturday"),
   --                                                                  C("Sunday"));
   --                                                                  --  +("Monday"),
   --                                                                  --  +("Tuesday"),
   --                                                                  --  +("Wednesday"),
   --                                                                  --  +("Thrusday"),
   --                                                                  --  +("Friday"),
   --                                                                  --  +("Saturday"),
   --                                                                  --  +("Sunday"));
   --                                                                  --  To_Unbounded_String("Monday"),
   --                                                                  --  To_Unbounded_String("Tuesday"),
   --                                                                  --  To_Unbounded_String("Wednesday"),
   --                                                                  --  To_Unbounded_String("Thrusday"),
   --                                                                  --  To_Unbounded_String("Friday"),
   --                                                                  --  To_Unbounded_String("Saturday"),
   --                                                                  --  To_Unbounded_String("Sunday"));
   --  begin
   --     Put_Line("Ingrese un día de la semana");
   --     for Dia in Dias_Semana loop
   --        put_line(dia'image);
   --     end loop;
   --
   --     declare
   --        Dia : Dias_Semana := Dias_Semana'Value(get_line);
   --
   --     begin
   --        Put_Line(Dia'image & " en Ingles es " & To_String(Dias_en_Ingles(Dia)));
   --     end;
   --  end;

   --  declare
   --     type Nota is range 1..10;
   --     type Lista_Notas is array(positive range <>) of Nota with Default_Component_Value => 10;
   --     Notas : Lista_Notas(1..3);
   --
   --  begin
   --     Notas(1) := 3;
   --     Notas(2) := 5;
   --     for N of Notas loop
   --        Put_Line(N'image);
   --     end loop;
   --  end;




   --  Insert code here.
   null;
end Main;
