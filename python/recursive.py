# Recursive Russian Peasant Multiplication in Python
# by Matthew Breckon
import sys

def p(m, n):
    if m == 0:
        return 0
    if m % 2 == 0:
        return 2 * p(m / 2, n)
    return n + 2 * p((m - 1) / 2, n)

if __name__ == '__main__':
    print p(int(sys.argv[1]), int(sys.argv[2]))
