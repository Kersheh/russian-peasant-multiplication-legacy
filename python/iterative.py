# Iterative Russian Peasant Multiplication in Python
# by Matthew Breckon
import sys

def p(m, n):
    p = 0
    while m > 0:
        if m % 2 == 1:
            p = p + n
        m = m >> 1
        n = n << 1
    return p
