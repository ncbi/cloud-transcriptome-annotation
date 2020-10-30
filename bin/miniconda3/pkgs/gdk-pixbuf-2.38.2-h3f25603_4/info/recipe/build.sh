#!/bin/bash

set -xeo pipefail

if [[ "$(uname)" = Darwin ]] ; then
    # The -dead_strip_dylibs option breaks g-ir-scanner in this package: the
    # scanner links a test executable to find paths to dylibs, but with this
    # option the linker strips them out. The resulting error message is
    # "ERROR: can't resolve libraries to shared libraries: ...".
    export LDFLAGS="$(echo $LDFLAGS |sed -e "s/-Wl,-dead_strip_dylibs//g")"
    export LDFLAGS_LD="$(echo $LDFLAGS_LD |sed -e "s/-dead_strip_dylibs//g")"
fi

# Needed for jpeg on Linux/GCC7:
export CPPFLAGS="$CPPFLAGS -I$PREFIX/include"

meson_options=(
    --buildtype=release
    --prefix="$PREFIX"
    --backend=ninja
    -Ddocs=false
    -Dgir=true
    -Dgio_sniffing=false
    -Dinstalled_tests=false
    -Dlibdir=lib
    -Drelocatable=true
)

if [[ $(uname) == Darwin ]] ; then
    # Disable X11 since our default Mac environment doesn't provide it (and
    # apparently the build scripts assume that it will be there).
    #
    # Disable manpages since the macOS xsltproc doesn't want to load
    # docbook.xsl remotely in --nonet mode.
    meson_options+=(-Dx11=false -Dman=false)
fi

mkdir forgebuild
cd forgebuild

meson "${meson_options[@]}" ..
ninja -j$CPU_COUNT -v
ninja install

cd $PREFIX
rm -rf share/gtk-doc
find . -name '*.la' -delete
