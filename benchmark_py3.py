# Benchmark test the Russian Peasant Multiplication algorithm over Fortran 95, 
# Ada, Cobol, C, and Python with both recursive and iterative implementations.
# by Matthew Breckon
# Python 3.1 version for lab computers.
import sys, subprocess, timeit

r = "/recursive "
i = "/iterative "
benchmarks = {}

# execute external Fortran 95 implementations
def exec_fortran(m, n, alg):
    args = str(m) + " " + str(n)
    print("Fortran 95 results:")
    if alg == "r":
        r_result = subprocess.check_output("fortran" + r + args, shell=True)
        print("     Recursive: p = {0}".format(int(r_result)))
    if alg == "i":
        i_result = subprocess.check_output("fortran" + i + args, shell=True)
        print("     Iterative: p = {0}".format(int(i_result)))

# execute external Ada implementations
def exec_ada(m, n, alg):
    args = str(m) + " " + str(n)
    print("Ada results:")
    if alg == "r":
        r_result = subprocess.check_output("ada" + r + args, shell=True)
        print("     Recursive: p = {0}".format(int(r_result)))
    if alg == "i":
        i_result = subprocess.check_output("ada" + i + args, shell=True)
        print("     Iterative: p = {0}".format(int(i_result)))

# execute external Cobol implementation
def exec_cobol(m, n, alg):
    args = str(m) + " " + str(n)
    print("Cobol results:")
    if alg == "r":
        print("     No recursive algorithm implemented.")
    if alg == "i":
        i_result = subprocess.check_output("cobol" + i + args, shell=True)
        print("     Iterative: p = {0}".format(int(i_result)))

# execute external C implementations
def exec_c(m, n, alg):
    args = str(m) + " " + str(n)
    print("C results:")
    if alg == "r":
        r_result = subprocess.check_output("c" + r + args, shell=True)
        print("     Recursive: p = {0}".format(int(r_result)))
    if alg == "i":
        i_result = subprocess.check_output("c" + i + args, shell=True)
        print("     Iterative: p = {0}".format(int(i_result)))

# execute module Python implementations
def exec_python(m, n, alg):
    args = str(m) + " " + str(n)
    print("Python results:")
    if alg == "r":
        r_result = subprocess.check_output("python python/recursive.py " + args, shell=True)
        print("     Recursive: p = {0}".format(int(r_result)))
    if alg == "i":
        i_result = subprocess.check_output("python python/iterative.py " +args, shell=True)
        print("     Iterative: p = {0}".format(int(i_result)))

# benchmark execution times
def time_exec(lang, m, n, alg):
    s = timeit.default_timer()
    if lang == "for":
        exec_fortran(m, n, alg)
    if lang == "ada":
        exec_ada(m, n, alg)
    if lang == "cbl":
        exec_cobol(m, n, alg)
        # skip time stamp for recursive algorithm
        if alg == "r":
            return
    if lang == "c":
        exec_c(m, n, alg)
    if lang == "py":
        exec_python(m, n, alg)
    e = timeit.default_timer() - s
    print("     Algorithm elapsed time: {0}ms".format(e * 1000))

if __name__ == "__main__":
    langs = [ "for", "ada", "cbl", "c", "py" ]
    algs = [ "r", "i" ]
    m = 23958233
    n = 5830

    print("Benchmark Russian Peasant Multiplication")
    print("m = {0}, n = {1}".format(m, n))

    for alg in algs:
        for lang in langs:
            time_exec(lang, m, n, alg)
