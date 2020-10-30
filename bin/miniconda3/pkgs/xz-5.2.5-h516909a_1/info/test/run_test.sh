

set -ex



xz --help
unxz --help
lzma --help
test -f ${PREFIX}/lib/liblzma${SHLIB_EXT}
test ! -f ${PREFIX}/lib/liblzma.a
conda inspect linkages -p $PREFIX $PKG_NAME
exit 0
