with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

begin
   --  Insert code here.
   --  declare
   --     A : Integer := 10;
   --     B : Integer := A;
   --  begin
   --     B := 20;
   --     Put_Line(A'image);
   --
   --  end;

   --  declare
   --     A : access Integer;
   --     --type Puntero is access Integer;
   --     --A : Puntero
   --  begin
   --     A := new Integer'(2);
   --     put_line(A.all'image);
   --  end;

   declare
      type Puntero is access integer;
      AA : Puntero := new integer'(30);
      BB : Puntero := AA;
   begin
      BB.all := 20;
      put_line(AA.all'image);
      put_line(BB.all'image);
   end;

   null;
end Main;
