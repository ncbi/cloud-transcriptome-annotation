#!/bin/bash
set -euo pipefail

if [[ `uname` == Darwin ]]; then
  export LDFLAGS="-Wl,-rpath,$PREFIX/lib $LDFLAGS"
fi

autoreconf -vfi
./autogen.sh

./configure --prefix="$PREFIX" --disable-Werror --with-libsodium
make -j${CPU_COUNT}

make check

