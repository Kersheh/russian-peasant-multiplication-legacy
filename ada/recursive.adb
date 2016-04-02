-- Recursive Russian Peasant Multiplication in Ada
-- by Matthew Breckon
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Recursive is
  m : long_integer;
  n : long_integer;
  p : long_integer;

  function rec(m, n : long_integer) return long_integer is
  begin
    if m = 0 then
      return 0;
    elsif m mod 2 = 0 then
      return 2 * rec(m / 2, n);
    else
      return n + 2 * rec((m - 1) / 2, n);
    end if;
  end rec;

begin
  m := long_integer'value(argument(1));
  n := long_integer'value(argument(2));
  p := rec(m, n);
  put_line(long_integer'image(p));
end Recursive;
