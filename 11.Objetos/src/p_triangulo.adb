package body P_Triangulo is

   function Area(This:C_Triangulo) return Float is
      
   begin
      
      return This.Base * This.Altura / 2.0;
      
   end Area;
   

end P_Triangulo;
