generic
   type Tipo is (<>);  --  El tipo es discreto
package Generic_Io is

function Try_Convert(Input : in String;
                     Output : out Tipo) return Boolean;

end Generic_Io;
