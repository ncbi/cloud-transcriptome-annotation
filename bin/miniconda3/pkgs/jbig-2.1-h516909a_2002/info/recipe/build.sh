#!/bin/bash

# Build. We must pass -e and set these variables to prevent
# the Makefiles from overriding their values. Also is seems
# we must set *all* of the variables that the Makefiles set
# otherwise GNU make resets all of our values between makes
CFLAGS="${CFLAGS} -Wno-unused-result -I${PREFIX} -I${PWD}/libjbig" \
CC="${CC}" \
LDFLAGS="${LDFLAGS} -L${PWD}/libjbig" \
  make -e all

# Test
make test

# Install
mkdir -p "${PREFIX}/lib" "${PREFIX}/include"
cp libjbig/*.a "${PREFIX}/lib"
cp libjbig/*.h "${PREFIX}/include"
