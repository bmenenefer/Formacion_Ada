with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with figuras; use figuras;
with calendario; use calendario;

procedure Main is

   --  type Distancia is new Float;  //Movido al ads
   --  type Area is new Float;  //Movido al ads
   --  A : Float := 1.3;
   --  B : Distancia := 5.6;
   --  Base : Distancia := 8.1;
   --  Altura : Distancia := 7.3;
   --  Area_Tri : Area;
   --  Nota_examen : Nota;
   --  Giro : Angulo := 180;
   --  function "*" (Left : Distancia; Right : Distancia) return Area is  //Movido al ads/adb
   --  begin
   --     return Area(Left) * Area(Right);
   --  end;

   --  hoy : Dia_Semana;
   --  tomorrow : Dia_Semana;

begin
   --  Insert code here.

   --  A := B;
   --  B := A;

   --  A := Float(B);
   --  B := Distancia(A);

   --  Area_Tri := Cal_Area_Triangulo(Base, Altura);
   --  put_line(Nota_examen'image);
   --  giro := giro + 195;
   --  put_line(giro'image);
   --
   --  for c in Dia_Semana loop
   --     case c is
   --        when Sa..Dom =>
   --           put_line(c'image & " es fin de semana");
   --        when others =>
   --           put_line(c'image & " es dia laborable");
   --
   --     end case;
   --
   --  end loop;

   --  for c in Meses loop
   --
   --     case c is
   --
   --        when Diciembre | Enero | Febrero =>
   --           put_line("En " & c'image & " esás en: " & Invierno'image);
   --
   --        when Marzo | Abril | Mayo =>
   --           put_line("Es " & Primavera'image);
   --
   --        when Junio | Julio | Agosto =>
   --           put_line("Es " & Verano'image);
   --
   --        when Septiembre | Octubre | Noviembre =>
   --           put_line("Es " & Otoño'image);
   --
   --     end case;
   --
   --  end loop;


   --  Crear el paquete calendario
   --  Mover al paquete los tipos de datos relacionados
   --  Agregar mostrar dias
   --  Agregar mostrar meses

   mostrar_dias;
   mostrar_meses;


   --  hoy := Ma;
   --  tomorrow := Dia_Semana'succ(hoy);
   --
   --  put_line(hoy'image);
   --  put_line(tomorrow'image);


   -- nota_examen := Nota_examen + 10;  --  //Como se sale de rango, esto da un error

   declare

      cumple : fecha := (Dia => 19, Mes => Enero, Año => 1993);

   begin
      --put_line("Tu cumpleaños es el" & cumple.dia'image & " de " & cumple.mes'image & " del" & cumple.año'image);
      put_line("Texto random:" & to_string(cumple));
   end;

   null;
end Main;
