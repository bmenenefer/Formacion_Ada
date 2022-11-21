with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with ada.Text_IO; use Ada.Text_IO;

package P_Heroe is

   type C_Hero is tagged record
             
      Name : Unbounded_String;
      Strength : Integer;
      Health_Points : Integer;
      
   end record;
   
   type Hero is access C_Hero'Class;
   
   procedure Show_Hero(This:C_Hero);

end P_Heroe;
