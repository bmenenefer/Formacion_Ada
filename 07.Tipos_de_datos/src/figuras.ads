package figuras is

   type Distancia is new Float;
   type Area is new Float;
   type Nota is new Integer range 0..10 with Default_Value => 5; --  Tipo de dato restringido.
   type Num_Largo is range 1..2**56;
   --  type Angulo is new Float range 0.0..360.0 with Default_Value => 0.0;
   type Angulo is mod 360; --  Los tipos de datos modulares solo funcionan para enteros
   
   
   function "*" (Left : Distancia; Right : Distancia) return Area;
   
   function Cal_Area_Triangulo (Base : Distancia; Altura : Distancia) return Area;
   


end figuras;
