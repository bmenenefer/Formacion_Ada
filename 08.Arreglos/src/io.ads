with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings; use Ada.Strings;

package io is

   function Get_Non_Empty_Line
     (Prompt:String := "Ingrese un texto no vacio";
      Error:String := "Ha Ingresado un texto vacio, vuelva a intentarlo") return String;
   
   function Try_Convert_Integer
     (Texto:in String;
      Texto_Como_Entero:out Integer) return Boolean;
   
   function Get_Integer_Between
     (Min:Integer;
      Max:Integer;
      Prompt:String := "Ingrese un numero";
      Empty_Error:String := "Texto Vacio, Vuelva a Intentar";
      Underflow_Error:String := "Numero muy chico";
      Overflow_Error:String := "Numero muy grande") return Integer;
   
   function Get_Integer
     (Prompt:String := "Ingresa un numero";
      Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer;
   
   --  Recibe un string y reemplaza un caracter por otro
   --  C?mo es la firma?
   
   procedure Reemplazar(Char_To_Replace : in Character;
                        Char_New : in Character;
                        Texto : in out String);
   
   function Try_Convert_Float(Texto : in String;
                              Texto_Float : out Float) return Boolean;
   
   function Get_Float(Prompt:String := "Ingresa un numero";
                      Error:String := "No ha ingresado un numero, vuelva a intentarlo"; 
                      Separador_Decimales : Character := ',') return String;
   
   function To_String(Input : Float;
                      Cantidad_Decimales : Integer := 2;
                      Separador_Decimales : Character := ',') return String;

end io;
