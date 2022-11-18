with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with io; use io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   package Integer_Array_List is new Ada.Containers.Vectors
     (Element_Type => Integer,
      Index_Type => Positive); use Integer_Array_List;

begin
   --  Insert code here.

   --  declare
   --
   --     type Arreglo_Entero is array (Positive range <>) of Integer;
   --     package Integer_Array_List is new Ada.Containers.Vectors
   --       (Element_Type => Integer,
   --        Index_Type => Positive); use Integer_Array_List;
   --     Arreglo : Arreglo_Entero(1..3);  --  El arreglo tiene tamaño fijo, es estático.
   --     Lista : Integer_Array_List.Vector;  --  Lista dinámica, no hay que indicar tamaño.
   --
   --  begin
   --
   --     --  Append(Lista, 32);
   --     --  Append(Lista, 34);
   --     --  Append(Lista, 37);
   --     --  Put_Line("El contenido del array es: ");
   --     --  for Item of Lista loop
   --     --     Put_Line(Item'image);
   --     --  end loop;
   --     --  Arreglo(1) := 32;
   --     --  Arreglo(2) := 34;
   --     --  Arreglo(3) := 37;
   --     --  for Item of Arreglo loop
   --     --     Put_Line(Item'image);
   --     --  end loop;
   --
   --  end;

   --  Generar una lista dinámica de notas.
   --  Preguntar al usuario notas hasta que ingrese un 0
   --  Luego las mostraría por pantalla.

   declare

      Notas : Integer_Array_List.Vector;
      Nota_Input : Integer;

      procedure Cargar_Notas(Lista : out Integer_Array_List.Vector) is

      begin

         Nota_Input := Get_Integer("Introduce tus notas. 0 para terminar");
         while(Nota_Input /= 0) loop

            Append(Lista,Nota_Input);
            Nota_Input := Get_Integer("Introduce tus notas. 0 para terminar");
         end loop;
      end Cargar_Notas;

   begin


      cargar_notas(Notas);
      for Nota of Notas loop
         Put_Line(Nota'image);

      end loop;





   end;
   --
   --
   --  declare
   --
   --  begin
   --
   --  end;
   --
   --
   --  declare
   --
   --  begin
   --
   --  end;
   --
   --
   --  declare
   --
   --  begin
   --
   --  end;

   null;
end Main;
