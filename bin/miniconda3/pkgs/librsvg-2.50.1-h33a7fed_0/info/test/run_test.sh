

set -ex



rsvg-convert --version
test -f $PREFIX/lib/librsvg-2${SHLIB_EXT}
test -f `pkg-config --variable=libdir --dont-define-prefix librsvg-2.0`/librsvg-2${SHLIB_EXT}
test -f $PREFIX/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-svg.so
test -f $PREFIX/include/librsvg-2.0/librsvg/librsvg-features.h
test -f $PREFIX/include/librsvg-2.0/librsvg/rsvg-cairo.h
test -f $PREFIX/include/librsvg-2.0/librsvg/rsvg.h
exit 0
