# Iterative Russian Peasant Multiplication in Python
from __future__ import division
import sys

def p(m, n):
    p = 0
    while m > 0:
        if m % 2 == 1:
            p = p + n
        m = m >> 1
        n = n << 1
    return p

if __name__ == '__main__':
    m = int(sys.argv[1])
    n = int(sys.argv[2])
    print p(m, n)