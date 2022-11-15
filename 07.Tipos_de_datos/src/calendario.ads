with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package calendario is

   type Dia_Semana is (Lu, Ma, Mi, Ju, Vi, Sa, Dom);
   type Meses is (Diciembre, Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre);
   type Estacion is (Invierno, Primavera, Verano, Otoño);
   type Dia_Mes is new Integer range 1..31;
   type Años is new integer range 1900..2100;
   
   type Fecha is record
      Dia : Dia_Mes;
      Mes : Meses;
      Año : Años;
   end record;
   
   function To_String(Date : Fecha) return String;
   

   procedure Mostrar_Dias;
   procedure Mostrar_Meses;


end calendario;
