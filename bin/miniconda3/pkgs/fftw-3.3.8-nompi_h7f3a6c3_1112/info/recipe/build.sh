#!/usr/bin/env bash

export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"
export CFLAGS="${CFLAGS} -I${PREFIX}/include -O3 -fomit-frame-pointer -fstrict-aliasing -ffast-math"

CONFIGURE="./configure --prefix=$PREFIX --with-pic --enable-threads"

if [[ "$mpi" != "nompi" ]]; then
    CONFIGURE="${CONFIGURE} --enable-mpi"
fi

if [[ `uname` == Darwin ]] && [[ "$CC" != "clang" ]]
then
    CONFIGURE=${CONFIGURE}" --enable-openmp"
elif [[ `uname` == Linux ]]
then
    CONFIGURE=${CONFIGURE}" --enable-openmp"
fi

# (Note exported LDFLAGS and CFLAGS vars provided above.)
BUILD_CMD="make -j${CPU_COUNT}"
INSTALL_CMD="make install"

# Test suite
# tests are performed during building as they are not available in the
# installed package.
# Additional tests can be run with "make smallcheck" and "make bigcheck"
TEST_CMD="eval cd tests && make check-local && cd -"

#
# We build 3 different versions of fftw:
#
if [[ "$target_platform" == "linux-64" ]] || [[ "$target_platform" == "linux-32" ]] || [[ "$target_platform" == "osx-64" ]]; then
  ARCH_OPTS_SINGLE="--enable-sse --enable-sse2 --enable-avx"
  ARCH_OPTS_DOUBLE="--enable-sse2 --enable-avx"
  ARCH_OPTS_LONG_DOUBLE="--enable-long-double"
fi

if [[ "$target_platform" == "linux-ppc64le" ]]; then
  # ARCH_OPTS_SINGLE="--enable-vsx"                        # VSX SP disabled as results in test fails. See https://github.com/FFTW/fftw3/issues/59
  ARCH_OPTS_SINGLE="--enable-silent-rules"                 # enable-silent rules to avoid Travis CI log overflow
  ARCH_OPTS_DOUBLE="--enable-vsx --enable-silent-rules"
  ARCH_OPTS_LONG_DOUBLE="--enable-long-double --enable-silent-rules"

  # Disable Tests since we don't have enough time on Travis CI
  TEST_CMD=""
fi

if [[ "$target_platform" == "linux-aarch64" ]]; then
  # ARCH_OPTS_SINGLE="--enable-neon"                       # Neon disabled for now
  ARCH_OPTS_SINGLE=""
  #ARCH_OPTS_DOUBLE="--enable-neon"                        # Neon disabled for now
  ARCH_OPTS_DOUBLE=""
  ARCH_OPTS_LONG_DOUBLE="--enable-long-double"

  # Disable Tests since we don't have enough time on Azure
  TEST_CMD=""
fi

build_cases=(
    # single
    "$CONFIGURE --enable-float ${ARCH_OPTS_SINGLE}"
    # double
    "$CONFIGURE ${ARCH_OPTS_DOUBLE}"
    # long double (SSE2 and AVX not supported)
    "$CONFIGURE ${ARCH_OPTS_LONG_DOUBLE}"
)

# first build shared objects
for config in "${build_cases[@]}"
do
    :
    $config --enable-shared --disable-static
    ${BUILD_CMD}
    ${INSTALL_CMD}
    ${TEST_CMD}
done

# now build static libraries without exposing fftw* symbols in downstream shared objects
for config in "${build_cases[@]}"
do
    :
    $config --disable-shared --enable-static CFLAGS="${CFLAGS} -fvisibility=hidden"
    ${BUILD_CMD}
    ${INSTALL_CMD}
    ${TEST_CMD}
done
