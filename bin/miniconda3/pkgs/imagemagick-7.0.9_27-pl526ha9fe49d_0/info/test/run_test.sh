

set -ex



convert -version
Magick++-config --cflags
conda inspect linkages -p $PREFIX $PKG_NAME
exit 0
