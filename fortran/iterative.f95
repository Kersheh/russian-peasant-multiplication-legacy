! Iterative Russian Peasant Multiplication in Fortran 95
! by Matthew Breckon
integer(kind=8) function iter(m, n)
  integer(kind=8) :: m, n
  integer(kind=8) :: p = 0, const = 2

  do while(m > 0)
    if(mod(m, const) == 1) then
      p = p + n
    end if
    m = ishft(m, -1)
    n = ishft(n, 1)
  end do
  iter = p
end function iter

program iterative
  character(8) :: m_in, n_in
  integer(kind=8) :: iter, m, n

  call getarg(1, m_in)
  call getarg(2, n_in)
  read(m_in, *) m
  read(n_in, *) n
  write(*, *) iter(m, n)
end program iterative
