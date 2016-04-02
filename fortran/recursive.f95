! Recursive Russian Peasant Multiplication in Fortran 95
! by Matthew Breckon
recursive function rec(m, n) result(p)
  integer, intent(in) :: m, n
  integer(kind=8) :: p

  if(m == 0) then
    p = 0
  else if(mod(m, 2) == 0) then
    p = 2 * rec(m / 2, n)
    return
  else
    p = n + 2 * rec((m - 1) / 2, n)
  end if
end function rec

program recursive
  character(8) :: m_in, n_in
  integer(kind=8) :: rec
  integer :: m, n

  call getarg(1, m_in)
  call getarg(2, n_in)
  read(m_in, *) m
  read(n_in, *) n
  write(*, *) rec(m, n)
end program recursive
