// Iterative Russian Peasant Multiplication in C
// by Matthew Breckon
#include <stdio.h>
#include <stdlib.h>

long long p(long long m, long long n) {
  long long p = 0;
  while(m > 0) {
    if(m % 2 == 1) 
      p = p + n;
    m = m >> 1;
    n = n << 1;
  }
  return p;
}

int main(int argc, char *argv[]) {
  long long m, n;
  m = (long long)atoi(argv[1]);
  n = (long long)atoi(argv[2]);
  printf("%lld\n", p(m, n));
  return 0;
}
