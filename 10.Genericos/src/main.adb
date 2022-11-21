with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with io; use io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Generic_Io;
with Utils_IO; use Utils_IO;

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

   --  declare  --  El mío mola más que el de Esteban
   --
   --     Notas : Integer_Array_List.Vector;
   --
   --
   --     procedure Cargar_Notas(Lista : out Integer_Array_List.Vector) is
   --        Nota_Input : Integer;
   --
   --     begin
   --
   --        --  Nota_Input := Get_Integer_Between(0,10,"Introduce tus notas. 0 para terminar");
   --        --  while(Nota_Input /= 0) loop
   --        --
   --        --     Append(Lista,Nota_Input);
   --        --     Nota_Input := Get_Integer_Between(0,10,"Introduce tus notas. 0 para terminar");
   --        --  end loop;
   --
   --        loop
   --           Nota_Input := Get_Integer_Between(0,
   --                                             10,
   --                                             "Introduce tus notas. 0 para terminar");
   --           if Nota_Input /= 0 then
   --              Append(Lista, Nota_Input);
   --           end if;
   --           exit when Nota_Input = 0;
   --        end loop;
   --
   --     end Cargar_Notas;
   --
   --  begin
   --
   --
   --     cargar_notas(Notas);
   --
   --     for Nota of Notas loop
   --        Put_Line(Nota'image);
   --     end loop;
   --
   --  end;


   declare

      use Utils_IO;

      type Dias_Semana is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo, Salir);

      package Dias_IO is new Generic_Io(Tipo => Dias_Semana);
      use Dias_IO;


      procedure Mostrar_Vertical is new Utils_IO.Show_Vertical(T => Dias_Semana,
                                                     To_String => Dias_IO.To_String);

      procedure Swap_Dias is new Utils_IO.Swap(T => Dias_Semana);

      Dia : Dias_Semana;
      otro_dia : Dias_Semana;

   begin

      --  Show_Discrete;

      loop
         --  Put_Line("Ingrese un día.");
         --  if Try_Convert(Get_Line,
         --                 Dia) then
         --     Put_Line("Ingresaste un día.");
         --  else
         --     Put_Line("Ingresaste cualquier cosa");
         --  end if;

         Dia := Get_Discrete("Ingrese un día. Salir para finalizar");
         otro_dia := Get_Discrete("Ingrese un día. Salir para finalizar");
         Swap_Dias(Dia, otro_dia);
         exit when otro_dia = Salir or dia = Salir;
         Put_Line(Dia'image);
         Mostrar_Vertical(Dia);
      end loop;

      declare

         use Utils_IO;
         procedure Mostrar is new Utils_IO.Show_Vertical(T => Integer,
                                                         To_String => Integer'image);
         numero : integer := Get_Discrete;

      begin

      end;



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

   null;
end Main;
