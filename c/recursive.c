// Recursive Russian Peasant Multiplication in C
// by Matthew Breckon
#include <stdio.h>
#include <stdlib.h>

long long p(long long m, long long n) {
  if(m == 0)
    return 0;
  if(m % 2 == 0)
    return 2 * p(m / 2, n);
  return n + 2 * p((m - 1) / 2, n);
}

int main(int argc, char *argv[]) {
  long long m, n;
  m = (long long)atoi(argv[1]);
  n = (long long)atoi(argv[2]);
  printf("%lld\n", p(m, n));
  return 0;
}
