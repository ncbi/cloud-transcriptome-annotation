#!/bin/bash

./configure --prefix=${PREFIX}  \
            --build=${BUILD}    \
            --host=${HOST}      \
            --disable-static
make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

# remove libtool files
find $PREFIX -name '*.la' -delete
