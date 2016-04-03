-- Iterative Russian Peasant Multiplication in Ada
-- by Matthew Breckon
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Iterative is
  m : long_integer;
  n : long_integer;
  p : long_integer;

  function iter(m, n : long_integer) return long_integer is
    x : long_integer := m;
    y : long_integer := n;
  begin
    p := 0;
    while x > 0 loop
      if x mod 2 = 1 then
        p := p + y;
      end if;
      x := x / 2;
      y := y * 2;
    end loop;
    return p;
  end iter;

begin
  m := long_integer'value(argument(1));
  n := long_integer'value(argument(2));
  p := iter(m, n);
  put_line(long_integer'image(p));
end Iterative;
