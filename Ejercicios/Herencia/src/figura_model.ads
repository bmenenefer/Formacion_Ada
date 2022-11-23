package Figura_Model is

   type C_Figura is abstract tagged null record;
   type Figura is access C_Figura'Class;
   
   procedure Calcular_Area(This : in out C_Figura) is abstract;
    
end Figura_Model;
