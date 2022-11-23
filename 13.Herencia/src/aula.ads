with Ada.Containers.Vectors;

generic type Cosa is private;
   
   with procedure Generic_Function(Item : Cosa);

package Aula is

      
   package Lista_Integrantes is new Ada.Containers.Vectors(Element_Type => Cosa,
                                                           Index_Type => Positive);
   
   Asistentes : Lista_Integrantes.Vector;
   
   procedure Mostrar_Asistentes;

end Aula;
