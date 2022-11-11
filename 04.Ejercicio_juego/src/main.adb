with ada.Text_IO; use ada.Text_IO;
with ada.numerics.Float_Random; use ada.Numerics.Float_Random;
with ada.Float_Text_IO; use ada.Float_Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;


procedure Main is

   G : Generator;
   --  Num_Al : Uniformly_Distributed;
   --  Num_Al : float;
   Num_Al : Integer;
   Default_Num_Opor : Integer := 5;
   Num_User : Integer;
   es_correcto : Boolean := true;

begin
   --  Insert code here. Variables and, or, not, nand, nor
   --  if (es_correcto)
   --    reset(G);
   --    for i in 1..10 loop
   --       Num_Al := integer(Random(G) * 100.0 + 1.0);
   --       --  put(num_al, exp => 0);
   --       --  put_line("");
   --       put_line(num_al'image);
   --    end loop;
   --  end if;


   --  La computadora determina un número al azar (entre 0 y 100).
   --  El usuario tiene N (por defecto, 5) oportunidades.
   --  La computadora informa al usuario si el número ingresado es mayor o menor
   --  al número secreto. Si el usuario adivina, GANA, si no adivina dentro de
   --  N oportunidades, PIERDE.

   reset(G);
   Num_Al := integer(random(G) * 100.0 + 1.0);
   es_correcto := false;

   loop

      put_line("Inserta un número del 0 al 100.");
      put_line("Tienes" & Default_Num_Opor'image & " oportunidades.");
      Get(Num_User);

      if (Num_Al > Num_user) then

         -- es_correcto := true;
         put_Line ("El número introducido es menor");
      elsif (Num_Al < Num_user) then

         put_line("El número introducido es mayor.");
      elsif (Num_Al = Num_User) then
         es_correcto := true;
         Put_line("Has acertado.");
      end if;

      Default_Num_Opor := Default_Num_Opor - 1;

      exit when (es_correcto or Default_Num_Opor = 0);
   end loop;

   if (es_correcto = false and Default_Num_Opor = 0) then

      put_line("Has perdido");
      put_line("El número solicitado es" & num_al'image & ".");
   end if;





   null;
end Main;
