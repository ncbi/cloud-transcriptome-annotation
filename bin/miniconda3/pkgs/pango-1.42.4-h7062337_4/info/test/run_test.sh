

set -ex



pango-view --help
conda inspect linkages -p $PREFIX $PKG_NAME
test -f $PREFIX/lib/libpango-1.0${SHLIB_EXT}
test -f `pkg-config --variable=libdir --dont-define-prefix pango`/libpango-1.0${SHLIB_EXT}
test -f $PREFIX/lib/libpangocairo-1.0${SHLIB_EXT}
test -f `pkg-config --variable=libdir --dont-define-prefix pangocairo`/libpangocairo-1.0${SHLIB_EXT}
test -f $PREFIX/lib/libpangoft2-1.0${SHLIB_EXT}
test -f `pkg-config --variable=libdir --dont-define-prefix pangoft2`/libpangoft2-1.0${SHLIB_EXT}
exit 0
