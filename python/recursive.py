# Recursive Russian Peasant Multiplication in Python
from __future__ import division
import sys

def p(m, n):
    if m == 0:
        return 0
    if m % 2 == 0:
        return 2 * p(m / 2, n)
    return n + 2 * p((m - 1) / 2, n)

if __name__ == '__main__':
    m = int(sys.argv[1])
    n = int(sys.argv[2])
    print p(m, n)