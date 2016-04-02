*> Iterative Russian Peasant Multiplication in Cobol
*> by Matthew Breckon
identification division.
  program-id. iterative.

environment division.
  input-output section.
    file-control.
      select standard-output assign to display.

data division.
  file section.
    fd standard-output.
      01 out pic x(50).
  working-storage section.
    77 m     pic 9(16).
    77 n     pic 9(16).
    77 p     pic 9(32).

procedure division.
  open output standard-output.

  accept m from argument-value.
  accept n from argument-value.

  perform iter.
  display p.

  close standard-output.
  stop run.

  iter.
    compute p = 0.
    perform calc until m <= 0.

  calc.
    if function mod(m, 2) = 1 then
      compute p = p + n
    end-if.
    compute m = m / 2.
    compute n = n * 2.
