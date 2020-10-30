

set -ex



strings ${PREFIX}/lib/libfftw3.a | grep -q dfftw || exit 1

test -f ${PREFIX}/lib/libfftw3f.a || exit 1
test -f ${PREFIX}/lib/libfftw3.a || exit 1
test -f ${PREFIX}/lib/libfftw3l.a || exit 1
test -f ${PREFIX}/lib/libfftw3f_threads.a || exit 1
test -f ${PREFIX}/lib/libfftw3_threads.a || exit 1
test -f ${PREFIX}/lib/libfftw3l_threads.a || exit 1
test -f ${PREFIX}/lib/libfftw3f_omp.a || exit 1
test -f ${PREFIX}/lib/libfftw3_omp.a || exit 1
test -f ${PREFIX}/lib/libfftw3l_omp.a || exit 1
test -f ${PREFIX}/include/fftw3.h || exit 1
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3_threads${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3f${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3f_threads${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3l${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3l_threads${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3_omp${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3f_omp${SHLIB_EXT}']"
python -c "import ctypes; ctypes.cdll[r'${PREFIX}/lib/libfftw3l_omp${SHLIB_EXT}']"
exit 0
