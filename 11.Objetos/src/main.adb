with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with ada.Text_IO; use Ada.Text_IO;
with P_Persona; use P_Persona;
with P_Heroe; use P_Heroe;
with P_Triangulo; use P_Triangulo;


procedure Main is

begin
   --  Insert code here.
   declare





      una_persona : Persona := Null;
      hero_1 : Hero := null;
      triangulo1 : Triangulo := null;
      area_triangulo : float;

      --  Crear e instancia una clase llamada "Héroe"
      --  Los héroes tienen un nombre, fuerza y HP.

      --  type R_Hero is tagged record
      --
      --     Name : Unbounded_String;
      --     Strenth : Integer;
      --     Health_Points : Integer;
      --
      --  end record;
      --
      --  type Hero is access R_Hero'Class;
   begin
      una_persona := new R_Persona'(Nombre => To_Unbounded_String("Borja"),
                                    Apellido => To_Unbounded_String("Menéndez"));

      --  saludar(una_persona);

      una_persona.Saludar;

      triangulo1 := new C_Triangulo'(Base => 30.0,
                                     Altura => 10.0);


      area_triangulo := triangulo1.Area;

      Put_Line(area_triangulo'image);




      --  hero_1 := new R_Hero'(Name => To_Unbounded_String("Leonidas"),
      --                        Strength => 30,
      --                        Health_Points => 5000);
      --
      --  hero_1.Show_Hero;

   end;



   null;
end Main;
