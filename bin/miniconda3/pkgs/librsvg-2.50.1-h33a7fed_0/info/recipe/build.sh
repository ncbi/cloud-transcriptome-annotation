#! /bin/bash

set -ex

configure_args=(
    --prefix=$PREFIX
    --disable-Bsymbolic
)

if [[ $(uname) == Darwin ]] ; then
    # Workaround for https://gitlab.gnome.org/GNOME/librsvg/-/issues/545 ; should be removable soon.
    export LDFLAGS="$LDFLAGS -lobjc"
fi

rm -f $PREFIX/lib/*.la # deps have busted files
./configure "${configure_args[@]}" || { cat config.log ; exit 1 ; }
make -j$CPU_COUNT
make install

cd $PREFIX
find . '(' -name '*.la' -o -name '*.a' ')' -delete
rm -rf share/gtk-doc
