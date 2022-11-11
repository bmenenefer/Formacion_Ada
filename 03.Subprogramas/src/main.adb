with ada.Text_IO; use ada.Text_IO;
with Ada.Strings.Fixed; --	use Ada.Strings.Fixed;
with ada.Float_Text_IO; use ada.Float_Text_IO;

procedure Main is

   procedure Put_Nice_Line(texto: in string;
                          subrayado : Character := '*') is
      use ada.strings.fixed;
   begin

      put_line(texto);
      put_line(texto'Length * subrayado);
   end;

   procedure Put_Reverse_Line(texto: in string) is
      use ada.strings.fixed;

   begin

      for c of reverse texto loop
         put(c);
      end loop;

   end;

   function area_rec(la_ma :in float; la_me :in float) return float is

   begin
      return la_ma*la_me;
   end;

   procedure Put_Hacker_Line(texto: in string;
                             a : character := 'a';
                             i : character := 'i';
                             e : character := 'e';
                             s : character := 's';
                             o : character := 'o') is
      --	Por defecto reemplaza i => 1, a => 4, e => 3, s => 5, o => 0

   begin

      for c of texto loop
         case c is
            when 'i' | 'I' => put('1');
            when 'a' | 'A' => put('4');
            when 'e' | 'E' => put('3');
            when 's' | 'S' => put('5');
            when 'o' | 'O' => put('0');
            when others => put(c);

               end case;



      end loop;


   end;

   procedure Intercambiar(A : in out Integer;
                          B : in out Integer) is

      Aux : integer := A;

   begin

      A := B;
      B := Aux;


   end;





   s:string:="Hola mundo";

begin
   --  Insert code here.

   --  Put_Nice_Line("Hola",'-');
   --  Put_Nice_Line(texto => "Hola mundo",
   --                subrayado => '$');

   --  Put_Reverse_Line("Hola mundo");
   --  Put_Hacker_Line("Hola Mundo, SAludos", o => '*');
   --  --  declare
   --  --     area:float;
   --  --  begin
   --  --     area := area_rec(8.0,9.0);
   --  --     put(area, exp => 0, aft => 2);
   --  --     put_line(" ");
   --  --  end;

   declare
      primero : integer := 10;
      segundo : integer := 30;
   begin

      put_line("Antes intercambiar " & primero'image & " " & segundo'image);
      intercambiar(primero,segundo);
      put_line("Después intercambiar " & primero'image & " " & segundo'image);
   end;




   null;
end Main;
