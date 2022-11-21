with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings; use Ada.Strings;
with Ada.Characters.Handling; use Ada.Characters.Handling;

generic
   type Tipo is (<>);  --  El tipo es discreto
   


package Generic_Io is
   
   Default_Prompt : constant String := "Ingrese un valor.";
   Default_Error : constant String := "Ha ingresado un valor incorrecto. Vuelva a intentarlo.";
   
   function Try_Convert(Input : in String;
                     Output : out Tipo) return Boolean;
   
   function Get_Discrete(Prompt : String := Default_Prompt;
                         Error : String := Default_Error) return Tipo;
   
   procedure Show_Discrete;
   
   function To_String(Item:Tipo) return String;
   

end Generic_Io;
